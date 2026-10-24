# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CondVar.Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c7ae8818202e0ffd910a3b0e7843b728f1d645b` · SHA-256 `602c3c5c6dfa76d84172d341e573d0a8b58302f3909bce6521cb21930d603f6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CondVar.Variant38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CondVar.Variant38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a","mathematical_subject":"Analysis.Integration","original_sha256":"38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Probability/CondVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.MeasureTheory.Function.ConditionalExpectation.Real
import Mathlib.MeasureTheory.Integral.Average
import Mathlib.Probability.Moments.Variance

/-!
# Conditional variance

This file defines the variance of a real-valued random variable conditional to a sigma-algebra.

## TODO

Define the Lebesgue conditional variance. See
[GibbsMeasure](https://github.com/james18lpc/GibbsMeasure) for a definition of the Lebesgue
conditional expectation).
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.CondVar.Variant38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a

open MeasureTheory Filter
open scoped ENNReal

namespace ProbabilityTheory
variable {Ω : Type*} {m₀ m m' : MeasurableSpace Ω} {hm : m ≤ m₀} {X Y : Ω → ℝ} {μ : Measure[m₀] Ω}
  {s : Set Ω}

variable (m X μ) in
/-- Conditional variance of a real-valued random variable. It is defined as `0` if any one of the
following conditions is true:
- `m` is not a sub-σ-algebra of `m₀`,
- `μ` is not σ-finite with respect to `m`,
- `X - μ[X | m]` is not square-integrable. -/
noncomputable def condVar : Ω → ℝ := μ[(X - μ[X | m]) ^ 2 | m]

@[inherit_doc] scoped notation "Var[" X "; " μ " | " m "]" => condVar m X μ

/-- Conditional variance of a real-valued random variable. It is defined as `0` if any one of the
following conditions is true:
- `m` is not a sub-σ-algebra of `m₀`,
- `volume` is not σ-finite with respect to `m`,
- `X - 𝔼[X | m]` is not square-integrable. -/
scoped notation "Var[" f "|" m "]" => Var[f; MeasureTheory.volume | m]

lemma condVar_of_not_le (hm : ¬m ≤ m₀) : Var[X; μ | m] = 0 := by rw [condVar, condExp_of_not_le hm]

lemma condVar_of_not_sigmaFinite (hμm : ¬SigmaFinite (μ.trim hm)) :
    Var[X; μ | m] = 0 := by rw [condVar, condExp_of_not_sigmaFinite hm hμm]

open scoped Classical in
lemma condVar_of_sigmaFinite [SigmaFinite (μ.trim hm)] :
    Var[X; μ | m] =
      if Integrable (fun ω ↦ (X ω - (μ[X | m]) ω) ^ 2) μ then
        if StronglyMeasurable[m] (fun ω ↦ (X ω - (μ[X | m]) ω) ^ 2) then
          fun ω ↦ (X ω - (μ[X | m]) ω) ^ 2
        else aestronglyMeasurable_condExpL1.mk (condExpL1 hm μ fun ω ↦ (X ω - (μ[X | m]) ω) ^ 2)
      else 0 := condExp_of_sigmaFinite _

lemma condVar_of_stronglyMeasurable [SigmaFinite (μ.trim hm)]
    (hX : StronglyMeasurable[m] X) (hXint : Integrable ((X - μ[X | m]) ^ 2) μ) :
    Var[X; μ | m] = fun ω ↦ (X ω - (μ[X | m]) ω) ^ 2 :=
  condExp_of_stronglyMeasurable _ ((hX.sub stronglyMeasurable_condExp).pow _) hXint

lemma condVar_of_not_integrable (hXint : ¬ Integrable (fun ω ↦ (X ω - (μ[X | m]) ω) ^ 2) μ) :
    Var[X; μ | m] = 0 := condExp_of_not_integrable hXint

@[simp] lemma condVar_zero : Var[0; μ | m] = 0 := by simp [condVar]

@[simp]
lemma condVar_const (hm : m ≤ m₀) (c : ℝ) : Var[fun _ ↦ c; μ | m] = 0 := by
  obtain rfl | hc := eq_or_ne c 0
  · simp [← Pi.zero_def]
  by_cases hμm : IsFiniteMeasure μ
  · simp [condVar, hm, Pi.pow_def]
  · simp [condVar, condExp_of_not_integrable, integrable_const_iff_isFiniteMeasure hc,
      integrable_const_iff_isFiniteMeasure <| pow_ne_zero _ hc, hμm, Pi.pow_def]

lemma stronglyMeasurable_condVar : StronglyMeasurable[m] (Var[X; μ | m]) :=
  stronglyMeasurable_condExp

lemma condVar_congr_ae (h : X =ᵐ[μ] Y) : Var[X; μ | m] =ᵐ[μ] Var[Y; μ | m] :=
  condExp_congr_ae <| by filter_upwards [h, condExp_congr_ae h] with ω hω hω'; dsimp; rw [hω, hω']

lemma condVar_of_aestronglyMeasurable [hμm : SigmaFinite (μ.trim hm)]
    (hX : AEStronglyMeasurable[m] X μ) (hXint : Integrable ((X - μ[X | m]) ^ 2) μ) :
    Var[X; μ | m] =ᵐ[μ] (X - μ[X | m]) ^ 2 :=
  condExp_of_aestronglyMeasurable' _ ((continuous_pow _).comp_aestronglyMeasurable
    (hX.sub stronglyMeasurable_condExp.aestronglyMeasurable)) hXint

lemma integrable_condVar : Integrable Var[X; μ | m] μ := integrable_condExp

/-- The integral of the conditional variance `Var[X | m]` over an `m`-measurable set is equal to
the integral of `(X - μ[X | m]) ^ 2` on that set. -/
lemma setIntegral_condVar [SigmaFinite (μ.trim hm)] (hX : Integrable ((X - μ[X | m]) ^ 2) μ)
    (hs : MeasurableSet[m] s) :
    ∫ ω in s, (Var[X; μ | m]) ω ∂μ = ∫ ω in s, (X ω - (μ[X | m]) ω) ^ 2 ∂μ :=
  setIntegral_condExp _ hX hs

-- `(· ^ 2)` is a postfix operator called `_sq` in lemma names, but
-- `condVar_ae_eq_condExp_sq_sub_condExp_sq` is a bit ridiculous, so we exceptionally denote it by
-- `sq_` as it were a prefix.
lemma condVar_ae_eq_condExp_sq_sub_sq_condExp (hm : m ≤ m₀) [IsFiniteMeasure μ] (hX : MemLp X 2 μ) :
    Var[X; μ | m] =ᵐ[μ] μ[X ^ 2 | m] - μ[X | m] ^ 2 := by
  calc
    Var[X; μ | m]
    _ = μ[X ^ 2 - 2 * X * μ[X | m] + μ[X | m] ^ 2 | m] := by rw [condVar, sub_sq]
    _ =ᵐ[μ] μ[X ^ 2 | m] - 2 * μ[X | m] ^ 2 + μ[X | m] ^ 2 := by
      have aux₀ : Integrable (X ^ 2) μ := hX.integrable_sq
      have aux₁ : Integrable (2 * X * μ[X | m]) μ := by
        rw [mul_assoc]
        exact (memLp_one_iff_integrable.1 <| hX.condExp.mul hX).const_mul _
      have aux₂ : Integrable (μ[X | m] ^ 2) μ := hX.condExp.integrable_sq
      filter_upwards [condExp_add (m := m) (aux₀.sub aux₁) aux₂, condExp_sub (m := m) aux₀ aux₁,
        condExp_mul_of_stronglyMeasurable_right stronglyMeasurable_condExp aux₁
          ((hX.integrable one_le_two).const_mul _), condExp_ofNat (m := m) 2 X]
        with ω hω₀ hω₁ hω₂ hω₃
      simp [hω₀, hω₁, hω₂, hω₃, condExp_const,
        condExp_of_stronglyMeasurable hm (stronglyMeasurable_condExp.pow _) aux₂]
      simp [mul_assoc, sq]
    _ = μ[X ^ 2 | m] - μ[X | m] ^ 2 := by ring

lemma condVar_ae_le_condExp_sq (hm : m ≤ m₀) [IsFiniteMeasure μ] (hX : MemLp X 2 μ) :
    Var[X; μ | m] ≤ᵐ[μ] μ[X ^ 2 | m] := by
  filter_upwards [condVar_ae_eq_condExp_sq_sub_sq_condExp hm hX] with ω hω
  dsimp at hω
  nlinarith

/-- **Law of total variance** -/
lemma integral_condVar_add_variance_condExp (hm : m ≤ m₀) [IsProbabilityMeasure μ]
    (hX : MemLp X 2 μ) : μ[Var[X; μ | m]] + Var[μ[X | m]; μ] = Var[X; μ] := by
  calc
    μ[Var[X; μ | m]] + Var[μ[X | m]; μ]
    _ = μ[(μ[X ^ 2 | m] - μ[X | m] ^ 2 : Ω → ℝ)] + (μ[μ[X | m] ^ 2] - μ[μ[X | m]] ^ 2) := by
      congr 1
      · exact integral_congr_ae <| condVar_ae_eq_condExp_sq_sub_sq_condExp hm hX
      · exact variance_def' hX.condExp
    _ = μ[X ^ 2] - μ[μ[X | m] ^ 2] + (μ[μ[X | m] ^ 2] - μ[X] ^ 2) := by
      rw [integral_sub' integrable_condExp, integral_condExp hm, integral_condExp hm]
      exact hX.condExp.integrable_sq
    _ = Var[X; μ] := by rw [variance_def' hX]; ring

lemma condVar_bot' [NeZero μ] (X : Ω → ℝ) :
    Var[X; μ | ⊥] = fun _ => ⨍ ω, (X ω - ⨍ ω', X ω' ∂μ) ^ 2 ∂μ := by
  ext ω; simp [condVar, condExp_bot', average, measureReal_def]

lemma condVar_bot_ae_eq (X : Ω → ℝ) :
    Var[X; μ | ⊥] =ᵐ[μ] fun _ ↦ ⨍ ω, (X ω - ⨍ ω', X ω' ∂μ) ^ 2 ∂μ := by
  obtain rfl | hμ := eq_zero_or_neZero μ
  · rw [ae_zero]
    exact eventually_bot
  · exact .of_forall <| congr_fun (condVar_bot' X)

lemma condVar_bot [IsProbabilityMeasure μ] (hX : AEMeasurable X μ) :
    Var[X; μ | ⊥] = fun _ω ↦ Var[X; μ] := by
  simp [condVar_bot', average_eq_integral, variance_eq_integral hX]

lemma condVar_smul (c : ℝ) (X : Ω → ℝ) : Var[c • X; μ | m] =ᵐ[μ] c ^ 2 • Var[X; μ | m] := by
  calc
    Var[c • X; μ | m]
    _ =ᵐ[μ] μ[c ^ 2 • (X - μ[X | m]) ^ 2 | m] := by
      rw [condVar]
      refine condExp_congr_ae ?_
      filter_upwards [condExp_smul (m := m) c X] with ω hω
      simp [hω, ← mul_sub, mul_pow]
    _ =ᵐ[μ] c ^ 2 • Var[X; μ | m] := condExp_smul ..

@[simp] lemma condVar_neg (X : Ω → ℝ) : Var[-X; μ | m] =ᵐ[μ] Var[X; μ | m] := by
  refine condExp_congr_ae ?_
  filter_upwards [condExp_neg (m := m) X] with ω hω
  simp [condVar, hω]
  ring

end ProbabilityTheory
```
