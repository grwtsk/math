# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceExactXiHeadValue.Variantb7ce0b94cd99005197339a1eb24f251ad8c6dd5fea6341d071d0d0c758416411

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `158128759131d3fc9baf718be3749b322acd1068` · SHA-256 `4b7296ad3d88cf25c5a2435710532d657beb40c949bf85d4c1593a48e76b7003`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PsiOnCell.Variant013fc7a12d78fe34672924e12d8305fd1810cd8c79b672d562fabc41cc66e8a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"013fc7a12d78fe34672924e12d8305fd1810cd8c79b672d562fabc41cc66e8a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PsiOnCell.Variant013fc7a12d78fe34672924e12d8305fd1810cd8c79b672d562fabc41cc66e8a9","mathematical_subject":"Analysis.Integration","original_sha256":"013fc7a12d78fe34672924e12d8305fd1810cd8c79b672d562fabc41cc66e8a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/exact-head-evaluation/attempt01/SourceExactXiHeadValue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceExactXiHead

/-!
Literal finite closed-Chebyshev evaluation of the actual Xi head.
The prime-power four and prime-seven closed boundary are retained.
Direction: grwtsk contributors. Native source calculation: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.PsiOnCell.Variant013fc7a12d78fe34672924e12d8305fd1810cd8c79b672d562fabc41cc66e8a9

set_option autoImplicit false
noncomputable section
namespace RH16ExactXiHeadValue

open MeasureTheory Set
open RH16ExactXiHead RH16ActualF7 RH16ActualPsiNegativeBlock
open FormalResearch.RiemannHypothesis.SourceActualPsiInverseSquare

private theorem psi_on_cell {n : ℕ} {y : ℝ} (hy0 : 0 ≤ y)
    (hlo : (n : ℝ) ≤ y) (hhi : y < (n : ℝ) + 1) :
    Chebyshev.psi y = Real.log (Nat.lcmUpto n : ℝ) := by
  have hf : ⌊y⌋₊ = n := (Nat.floor_eq_iff hy0).mpr ⟨hlo, hhi⟩
  rw [Chebyshev.psi_eq_psi_coe_floor, hf, Chebyshev.psi_eq_log_lcmUpto]

private theorem psi_on_two_three {y : ℝ} (hy : y ∈ Ioo (2 : ℝ) 3) :
    Chebyshev.psi y = Real.log 2 := by
  have h := psi_on_cell (n := 2) (by linarith [hy.1]) hy.1.le (by norm_num; exact hy.2)
  have hlcm : Nat.lcmUpto 2 = 2 := by decide
  simpa only [hlcm, Nat.cast_ofNat] using h

private theorem psi_on_three_four {y : ℝ} (hy : y ∈ Ioo (3 : ℝ) 4) :
    Chebyshev.psi y = Real.log 6 := by
  have h := psi_on_cell (n := 3) (by linarith [hy.1]) hy.1.le (by norm_num; exact hy.2)
  have hlcm : Nat.lcmUpto 3 = 6 := by decide
  simpa only [hlcm, Nat.cast_ofNat] using h

private theorem psi_on_four_five {y : ℝ} (hy : y ∈ Ioo (4 : ℝ) 5) :
    Chebyshev.psi y = Real.log 12 := by
  have h := psi_on_cell (n := 4) (by linarith [hy.1]) hy.1.le (by norm_num; exact hy.2)
  have hlcm : Nat.lcmUpto 4 = 12 := by decide
  simpa only [hlcm, Nat.cast_ofNat] using h

private theorem psi_on_five_seven {y : ℝ} (hy : y ∈ Ioo (5 : ℝ) 7) :
    Chebyshev.psi y = Real.log 60 := by
  by_cases h6 : y < 6
  · have h := psi_on_cell (n := 5) (by linarith [hy.1]) hy.1.le (by norm_num; exact h6)
    have hlcm : Nat.lcmUpto 5 = 60 := by decide
    simpa only [hlcm, Nat.cast_ofNat] using h
  · have h := psi_on_cell (n := 6) (by linarith [hy.1]) (by linarith)
      (by norm_num; exact hy.2)
    have hlcm : Nat.lcmUpto 6 = 60 := by decide
    simpa only [hlcm, Nat.cast_ofNat] using h

private theorem inverse_power_integral {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) :
    (∫ y in a..b, 1 / y ^ (3 / 2 : ℝ)) =
      2 * (1 / Real.sqrt a - 1 / Real.sqrt b) := by
  have hb : 0 < b := ha.trans_le hab
  have hz : (0 : ℝ) ∉ uIcc a b := by
    rw [uIcc_of_le hab]
    intro h
    linarith [h.1]
  have hi := integral_rpow (a := a) (b := b) (r := (-3 / 2 : ℝ))
    (Or.inr ⟨by norm_num, hz⟩)
  have he : (∫ y in a..b, 1 / y ^ (3 / 2 : ℝ)) =
      ∫ y in a..b, y ^ (-3 / 2 : ℝ) := by
    apply intervalIntegral.integral_congr
    intro y hy
    have hy0 : 0 ≤ y := by
      rw [uIcc_of_le hab] at hy
      exact (ha.trans_le hy.1).le
    rw [show (-3 / 2 : ℝ) = -(3 / 2 : ℝ) by ring, Real.rpow_neg hy0, one_div]
  rw [he, hi]
  norm_num only [show (-3 / 2 : ℝ) + 1 = -(1 / 2 : ℝ) by ring]
  rw [Real.rpow_neg hb.le, Real.rpow_neg ha.le,
    ← Real.sqrt_eq_rpow, ← Real.sqrt_eq_rpow]
  ring

private theorem y_inverse_power_integral :
    (∫ y in (2 : ℝ)..7, y / y ^ (3 / 2 : ℝ)) =
      2 * (Real.sqrt 7 - Real.sqrt 2) := by
  have hz : (0 : ℝ) ∉ uIcc (2 : ℝ) 7 := by
    norm_num [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7)]
  have hi := integral_rpow (a := (2 : ℝ)) (b := 7) (r := (-1 / 2 : ℝ))
    (Or.inr ⟨by norm_num, hz⟩)
  have he : (∫ y in (2 : ℝ)..7, y / y ^ (3 / 2 : ℝ)) =
      ∫ y in (2 : ℝ)..7, y ^ (-1 / 2 : ℝ) := by
    apply intervalIntegral.integral_congr
    intro y hy
    have hy0 : 0 < y := by
      rw [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7)] at hy
      linarith [hy.1]
    rw [show (3 / 2 : ℝ) = 1 + 1 / 2 by ring,
      Real.rpow_add hy0, Real.rpow_one,
      show (-1 / 2 : ℝ) = -(1 / 2 : ℝ) by ring, Real.rpow_neg hy0.le]
    field_simp
  rw [he, hi]
  norm_num only [show (-1 / 2 : ℝ) + 1 = 1 / 2 by ring]
  rw [← Real.sqrt_eq_rpow, ← Real.sqrt_eq_rpow]
  ring

private theorem y_inverse_power_intervalIntegrable :
    IntervalIntegrable (fun y : ℝ => y / y ^ (3 / 2 : ℝ)) volume 2 7 := by
  apply ContinuousOn.intervalIntegrable_of_Icc (by norm_num)
  intro y hy
  have hyp : 0 < y := by linarith [hy.1]
  exact (continuousAt_id.div (continuousAt_id.rpow_const (Or.inl hyp.ne'))
    (Real.rpow_pos_of_pos hyp _).ne').continuousWithinAt

private theorem psi_inverse_power_intervalIntegrable :
    IntervalIntegrable (fun y : ℝ => Chebyshev.psi y / y ^ (3 / 2 : ℝ)) volume 2 7 := by
  have h := (physicalXiDensity_head_intervalIntegrable.add
    y_inverse_power_intervalIntegrable).sub
      ((inverse_power_head_continuous.intervalIntegrable_of_Icc (by norm_num)).const_mul
        (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)))
  convert h using 1
  funext y
  unfold RH16ActualF7.physicalXiDensity shiftedActualChebyshev
  ring

private theorem psi_step_integral {a b c : ℝ} (ha : 0 < a) (hab : a ≤ b)
    (hpsi : ∀ y ∈ Ioo a b, Chebyshev.psi y = c) :
    (∫ y in a..b, Chebyshev.psi y / y ^ (3 / 2 : ℝ)) =
      2 * c * (1 / Real.sqrt a - 1 / Real.sqrt b) := by
  have he : (∫ y in a..b, Chebyshev.psi y / y ^ (3 / 2 : ℝ)) =
      ∫ y in a..b, c * (1 / y ^ (3 / 2 : ℝ)) := by
    apply intervalIntegral.integral_congr_Ioo_of_le hab
    intro y hy
    rw [hpsi y hy]
    ring
  rw [he, intervalIntegral.integral_const_mul, inverse_power_integral ha hab]
  ring

/-- The complete four-step source integral retains the prime-power-four jump. -/
theorem actual_psi_head_integral :
    (∫ y in (2 : ℝ)..7, Chebyshev.psi y / y ^ (3 / 2 : ℝ)) =
      2 * Real.log 2 * (1 / Real.sqrt 2 - 1 / Real.sqrt 3) +
      2 * Real.log 6 * (1 / Real.sqrt 3 - 1 / 2) +
      2 * Real.log 12 * (1 / 2 - 1 / Real.sqrt 5) +
      2 * Real.log 60 * (1 / Real.sqrt 5 - 1 / Real.sqrt 7) := by
  have hi := psi_inverse_power_intervalIntegrable
  have h23 := hi.mono_set (by norm_num [uIcc_of_le])
  have h34 := hi.mono_set (by norm_num [uIcc_of_le])
  have h45 := hi.mono_set (by norm_num [uIcc_of_le])
  have h57 := hi.mono_set (by norm_num [uIcc_of_le])
  have h24 := intervalIntegral.integral_add_adjacent_intervals h23 h34
  have h25 := intervalIntegral.integral_add_adjacent_intervals (h23.trans h34) h45
  have h27 := intervalIntegral.integral_add_adjacent_intervals ((h23.trans h34).trans h45) h57
  rw [← h27, ← h25, ← h24,
    psi_step_integral (by norm_num : (0 : ℝ) < 2) (by norm_num) (fun y hy => psi_on_two_three hy),
    psi_step_integral (by norm_num : (0 : ℝ) < 3) (by norm_num) (fun y hy => psi_on_three_four hy),
    psi_step_integral (by norm_num : (0 : ℝ) < 4) (by norm_num) (fun y hy => psi_on_four_five hy),
    psi_step_integral (by norm_num : (0 : ℝ) < 5) (by norm_num) (fun y hy => psi_on_five_seven hy)]
  norm_num

/-- Exact explicit head constant; prime seven appears before its closed-boundary cancellation. -/
def explicitXiHeadJ : ℝ :=
  2 * (Real.log 2 / Real.sqrt 2 + Real.log 3 / Real.sqrt 3 + Real.log 2 / 2 +
    Real.log 5 / Real.sqrt 5 + Real.log 7 / Real.sqrt 7 - Real.log 420 / Real.sqrt 7) -
    2 * (Real.sqrt 7 - Real.sqrt 2) +
      4 * (Real.eulerMascheroniConstant + 1 - Real.log 2) *
        (1 / Real.sqrt 2 - 1 / Real.sqrt 7)

/-- Evaluation of the literal original source head, without a numerical or signed premise. -/
theorem actualXiHeadJ_eq_explicit : actualXiHeadJ = explicitXiHeadJ := by
  have he : (fun y : ℝ => physicalXiDensity y) =
      fun y => (Chebyshev.psi y / y ^ (3 / 2 : ℝ) - y / y ^ (3 / 2 : ℝ)) +
        2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) * (1 / y ^ (3 / 2 : ℝ)) := by
    funext y
    unfold RH16ActualF7.physicalXiDensity shiftedActualChebyshev
    ring
  unfold actualXiHeadJ
  rw [he, intervalIntegral.integral_add
      (psi_inverse_power_intervalIntegrable.sub y_inverse_power_intervalIntegrable)
      ((inverse_power_head_continuous.intervalIntegrable_of_Icc (by norm_num)).const_mul _),
    intervalIntegral.integral_sub psi_inverse_power_intervalIntegrable
      y_inverse_power_intervalIntegrable,
    intervalIntegral.integral_const_mul, inverse_power_head_integral,
    y_inverse_power_integral, actual_psi_head_integral]
  have h6 : Real.log (6 : ℝ) = Real.log 2 + Real.log 3 := by
    rw [show (6 : ℝ) = 2 * 3 by norm_num, Real.log_mul (by norm_num) (by norm_num)]
  have h12 : Real.log (12 : ℝ) = 2 * Real.log 2 + Real.log 3 := by
    rw [show (12 : ℝ) = 2 ^ 2 * 3 by norm_num,
      Real.log_mul (by norm_num) (by norm_num), Real.log_pow]
    ring
  have h60 : Real.log (60 : ℝ) = 2 * Real.log 2 + Real.log 3 + Real.log 5 := by
    rw [show (60 : ℝ) = 2 ^ 2 * 3 * 5 by norm_num,
      Real.log_mul (by norm_num) (by norm_num),
      Real.log_mul (by norm_num) (by norm_num), Real.log_pow]
    ring
  have h420 : Real.log (420 : ℝ) = 2 * Real.log 2 + Real.log 3 + Real.log 5 + Real.log 7 := by
    rw [show (420 : ℝ) = 2 ^ 2 * 3 * 5 * 7 by norm_num,
      Real.log_mul (by norm_num) (by norm_num),
      Real.log_mul (by norm_num) (by norm_num),
      Real.log_mul (by norm_num) (by norm_num), Real.log_pow]
    ring
  unfold explicitXiHeadJ
  rw [h6, h12, h60, h420]
  ring

/-- The already proved head error now has its explicit original finite source constant. -/
theorem actual_head_abs_error_explicit (A : ℝ) (hA : 91 ≤ A) :
    |actualXiHead A + explicitXiHeadJ / 2| ≤ exactHeadErrorBudget A := by
  rw [← actualXiHeadJ_eq_explicit]
  exact actual_head_abs_error_bound A hA

end RH16ExactXiHeadValue
```
