# Complete source: GRWTSK.Analysis.ENNRealLog.Variant8779d415c11837a195ecf5f57997dc43d5739ad26dd68e0750dbe5eb414d2570

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2650117bb4b3e1afd202a93a3fab7728283d1e48` · SHA-256 `267933e909f2b5cc8ae67d63cf523a05fe069dfffeb3efb690a6d80251c60c73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.Log.Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Log.Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/SpecialFunctions/Log/ENNRealLog.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Damien Thomine. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damien Thomine, Pietro Monticone, Rémy Degenne, Lorenzo Luccioli
-/
import Mathlib.Analysis.SpecialFunctions.Pow.NNReal
import Mathlib.Data.EReal.Basic

/-!
# Extended Nonnegative Real Logarithm

We define `log` as an extension of the logarithm of a positive real
to the extended nonnegative reals `ℝ≥0∞`. The function takes values
in the extended reals `EReal`, with `log 0 = ⊥` and `log ⊤ = ⊤`.

## Main Definitions
- `ENNReal.log`: The extension of the real logarithm to `ℝ≥0∞`.

## Main Results
- `ENNReal.log_strictMono`: `log` is increasing;
- `ENNReal.log_injective`, `ENNReal.log_surjective`, `ENNReal.log_bijective`: `log` is
  injective, surjective, and bijective;
- `ENNReal.log_mul_add`, `ENNReal.log_pow`, `ENNReal.log_rpow`: `log` satisfies
the identities `log (x * y) = log x + log y` and `log (x ^ y) = y * log x`
(with either `y ∈ ℕ` or `y ∈ ℝ`).

## Tags
ENNReal, EReal, logarithm
-/

namespace GRWTSK.Analysis.Log.Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945

namespace ENNReal

open scoped NNReal

/-! ### Definition -/
section Definition

/-- The logarithm function defined on the extended nonnegative reals `ℝ≥0∞`
to the extended reals `EReal`. Coincides with the usual logarithm function
and with `Real.log` on positive reals, and takes values `log 0 = ⊥` and `log ⊤ = ⊤`.
Conventions about multiplication in `ℝ≥0∞` and addition in `EReal` make the identity
`log (x * y) = log x + log y` unconditional. -/
noncomputable def log (x : ℝ≥0∞) : EReal :=
  if x = 0 then ⊥
    else if x = ⊤ then ⊤
    else Real.log x.toReal

@[simp] lemma log_zero : log 0 = ⊥ := if_pos rfl
@[simp] lemma log_one : log 1 = 0 := by simp [log]
@[simp] lemma log_top : log ⊤ = ⊤ := rfl

@[simp]
lemma log_ofReal (x : ℝ) : log (ENNReal.ofReal x) = if x ≤ 0 then ⊥ else ↑(Real.log x) := by
  simp only [log, ENNReal.none_eq_top, ENNReal.ofReal_ne_top, IsEmpty.forall_iff,
    ENNReal.ofReal_eq_zero, EReal.coe_ennreal_ofReal, if_false]
  split_ifs with h_nonpos
  · rfl
  · rw [ENNReal.toReal_ofReal (not_le.mp h_nonpos).le]

lemma log_ofReal_of_pos {x : ℝ} (hx : 0 < x) : log (ENNReal.ofReal x) = Real.log x := by
  rw [log_ofReal, if_neg hx.not_le]

theorem log_pos_real {x : ℝ≥0∞} (h : x ≠ 0) (h' : x ≠ ⊤) :
    log x = Real.log (ENNReal.toReal x) := by simp [log, h, h']

theorem log_pos_real' {x : ℝ≥0∞} (h : 0 < x.toReal) :
    log x = Real.log (ENNReal.toReal x) := by
  simp [log, (ENNReal.toReal_pos_iff.1 h).1.ne', (ENNReal.toReal_pos_iff.1 h).2.ne]

theorem log_of_nnreal {x : ℝ≥0} (h : x ≠ 0) :
    log (x : ℝ≥0∞) = Real.log x := by simp [log, h]

end Definition

/-! ### Monotonicity -/
section Monotonicity

theorem log_strictMono : StrictMono log := by
  intro x y h
  unfold log
  split_ifs <;> simp_all [Real.log_lt_log, toReal_pos_iff, pos_iff_ne_zero, lt_top_iff_ne_top]

theorem log_monotone : Monotone log := log_strictMono.monotone

theorem log_injective : Function.Injective log := log_strictMono.injective

theorem log_surjective : Function.Surjective log := by
  intro y
  cases y with
  | bot => use 0; simp
  | top => use ⊤; simp
  | coe y => use ENNReal.ofReal (Real.exp y); simp [Real.exp_pos]

theorem log_bijective : Function.Bijective log := ⟨log_injective, log_surjective⟩

@[simp]
theorem log_eq_iff {x y : ℝ≥0∞} : log x = log y ↔ x = y :=
  log_injective.eq_iff

@[simp] theorem log_eq_bot_iff {x : ℝ≥0∞} : log x = ⊥ ↔ x = 0 := log_zero ▸ @log_eq_iff x 0

@[simp] theorem log_eq_one_iff {x : ℝ≥0∞} : log x = 0 ↔ x = 1 := log_one ▸ @log_eq_iff x 1

@[simp] theorem log_eq_top_iff {x : ℝ≥0∞} : log x = ⊤ ↔ x = ⊤ := log_top ▸ @log_eq_iff x ⊤

@[simp] lemma log_lt_log_iff {x y : ℝ≥0∞} : log x < log y ↔ x < y := log_strictMono.lt_iff_lt

@[simp] lemma bot_lt_log_iff {x : ℝ≥0∞} : ⊥ < log x ↔ 0 < x := log_zero ▸ @log_lt_log_iff 0 x

@[simp] lemma log_lt_top_iff {x : ℝ≥0∞} : log x < ⊤ ↔ x < ⊤ := log_top ▸ @log_lt_log_iff x ⊤

@[simp] lemma log_lt_zero_iff {x : ℝ≥0∞} : log x < 0 ↔ x < 1 := log_one ▸ @log_lt_log_iff x 1

@[simp] lemma zero_lt_log_iff {x : ℝ≥0∞} : 0 < log x ↔ 1 < x := log_one ▸ @log_lt_log_iff 1 x

@[simp] lemma log_le_log_iff {x y : ℝ≥0∞} : log x ≤ log y ↔ x ≤ y := log_strictMono.le_iff_le

@[simp] lemma log_le_zero_iff {x : ℝ≥0∞} : log x ≤ 0 ↔ x ≤ 1 := log_one ▸ @log_le_log_iff x 1

@[simp] lemma zero_le_log_iff {x : ℝ≥0∞} : 0 ≤ log x ↔ 1 ≤ x := log_one ▸ @log_le_log_iff 1 x

@[gcongr] lemma log_le_log {x y : ℝ≥0∞} (h : x ≤ y) : log x ≤ log y := log_monotone h
@[gcongr] lemma log_lt_log {x y : ℝ≥0∞} (h : x < y) : log x < log y := log_strictMono h

end Monotonicity

/-! ### Algebraic properties -/

section Morphism

theorem log_mul_add {x y : ℝ≥0∞} : log (x * y) = log x + log y := by
  rcases ENNReal.trichotomy x with (rfl | rfl | x_real)
  · simp
  · rw [log_top]
    rcases ENNReal.trichotomy y with (rfl | rfl | y_real)
    · rw [mul_zero, log_zero, EReal.add_bot]
    · simp
    · rw [log_pos_real' y_real, ENNReal.top_mul', EReal.top_add_coe, log_eq_top_iff]
      simp only [ite_eq_right_iff, zero_ne_top, imp_false]
      exact (ENNReal.toReal_pos_iff.1 y_real).1.ne'
  · rw [log_pos_real' x_real]
    rcases ENNReal.trichotomy y with (rfl | rfl | y_real)
    · simp
    · simp [(ENNReal.toReal_pos_iff.1 x_real).1.ne']
    · rw_mod_cast [log_pos_real', log_pos_real' y_real, ENNReal.toReal_mul]
      · exact Real.log_mul x_real.ne' y_real.ne'
      rw [toReal_mul]
      positivity

theorem log_rpow {x : ℝ≥0∞} {y : ℝ} : log (x ^ y) = y * log x := by
  rcases lt_trichotomy y 0 with (y_neg | rfl | y_pos)
  · rcases ENNReal.trichotomy x with (rfl | rfl | x_real)
    · simp only [ENNReal.zero_rpow_def y, not_lt_of_lt y_neg, y_neg.ne, if_false, log_top,
        log_zero, EReal.coe_mul_bot_of_neg y_neg]
    · rw [ENNReal.top_rpow_of_neg y_neg, log_zero, log_top, EReal.coe_mul_top_of_neg y_neg]
    · have x_ne_zero := (ENNReal.toReal_pos_iff.1 x_real).1.ne'
      have x_ne_top := (ENNReal.toReal_pos_iff.1 x_real).2.ne
      simp only [log, rpow_eq_zero_iff, x_ne_zero, false_and, x_ne_top, or_self, ↓reduceIte,
        rpow_eq_top_iff]
      norm_cast
      exact ENNReal.toReal_rpow x y ▸ Real.log_rpow x_real y
  · simp
  · rcases ENNReal.trichotomy x with (rfl | rfl | x_real)
    · rw [ENNReal.zero_rpow_of_pos y_pos, log_zero, EReal.mul_bot_of_pos]; norm_cast
    · rw [ENNReal.top_rpow_of_pos y_pos, log_top, EReal.mul_top_of_pos]; norm_cast
    · have x_ne_zero := (ENNReal.toReal_pos_iff.1 x_real).1.ne'
      have x_ne_top := (ENNReal.toReal_pos_iff.1 x_real).2.ne
      simp only [log, rpow_eq_zero_iff, x_ne_zero, false_and, x_ne_top, or_self, ↓reduceIte,
        rpow_eq_top_iff]
      norm_cast
      exact ENNReal.toReal_rpow x y ▸ Real.log_rpow x_real y

theorem log_pow {x : ℝ≥0∞} {n : ℕ} : log (x ^ n) = n * log x := by
  rw [← rpow_natCast, log_rpow, EReal.coe_natCast]

lemma log_inv {x : ℝ≥0∞} : log x⁻¹ = - log x := by
  simp [← rpow_neg_one, log_rpow]

end Morphism

end ENNReal
```
