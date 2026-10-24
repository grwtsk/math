# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Realization.Variant601ff23e32d4314629d3ee63369dd2eceedd903dfb5ad2db168f13736197e5cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f698a8b967edc415191fa637d8842bb19398563` · SHA-256 `dae866072bb89094d7f41b762f0b6c16ca477fdf5de0933887409b9f5f43a28e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.BumpInterior.Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.BumpInterior.Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee","mathematical_subject":"Analysis.Integration","original_sha256":"a21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SUCAS/Realization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairing
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.Tactic

/-!
# A concrete weak derivative of the immutable RH dilation bump

Route A uses the actual polynomial and zero extension from RH source commit
940c9d729bf8e54f0a6fecdb0911d22cfa64abb1. The distributional claim is proved by
compact-interval integration by parts, not assumed through DilationRealization.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.BumpInterior.Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee

namespace FormalResearch.SUCAS.Realization

open MeasureTheory Set
open scoped ContDiff
open FormalResearch.RiemannHypothesis.SourcePairing

noncomputable section

/-- The polynomial interior of the exact source bump at radius A. -/
def bumpInterior (A x : ℝ) : ℝ := (1 - (x / A) ^ 2) ^ 4 / Real.sqrt A

/-- The ordinary first derivative of the polynomial interior. -/
def firstInterior (A x : ℝ) : ℝ :=
  (-8 * (x / A) + 24 * (x / A) ^ 3 - 24 * (x / A) ^ 5 + 8 * (x / A) ^ 7) /
    (A * Real.sqrt A)

/-- The ordinary second derivative of the polynomial interior. -/
def secondInterior (A x : ℝ) : ℝ :=
  (-8 + 72 * (x / A) ^ 2 - 120 * (x / A) ^ 4 + 56 * (x / A) ^ 6) /
    (A ^ 2 * Real.sqrt A)

/-- The concrete zero-extended candidate for the weak second derivative. -/
def explicitSecondDerivative (A : ℝ) : ℝ → ℝ :=
  (Icc (-A) A).indicator (secondInterior A)

/-- Actual source bytes agree with the indicator of the polynomial interior. -/
theorem scaledBump_eq_indicator (A : ℝ) (hA : 0 < A) :
    scaledBump A = (Icc (-A) A).indicator (bumpInterior A) := by
  funext x
  have hmem : x / A ∈ Icc (-1 : ℝ) 1 ↔ x ∈ Icc (-A) A := by
    simp only [mem_Icc, le_div_iff₀ hA, div_le_iff₀ hA]
    ring_nf
  simp only [scaledBump, sourceBump, hmem, indicator_apply, bumpInterior]
  split_ifs <;> simp

/-- The interior polynomial and all its displayed derivatives are continuous. -/
theorem bumpInterior_continuous (A : ℝ) : Continuous (bumpInterior A) := by
  unfold bumpInterior
  fun_prop

/-- Continuity of the exact first interior derivative. -/
theorem firstInterior_continuous (A : ℝ) : Continuous (firstInterior A) := by
  unfold firstInterior
  fun_prop

/-- Continuity of the exact second interior derivative. -/
theorem secondInterior_continuous (A : ℝ) : Continuous (secondInterior A) := by
  unfold secondInterior
  fun_prop

/-- Exact first differentiation of the source polynomial, with its scaling retained. -/
theorem bumpInterior_hasDerivAt (A x : ℝ) :
    HasDerivAt (bumpInterior A) (firstInterior A x) x := by
  have h := (((hasDerivAt_const x (1 : ℝ)).sub
    (((hasDerivAt_id x).div_const A).pow 2)).pow 4).div_const (Real.sqrt A)
  convert h using 1 <;> try rfl
  dsimp [firstInterior]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- Exact second differentiation of the source polynomial, with its scaling retained. -/
theorem firstInterior_hasDerivAt (A x : ℝ) :
    HasDerivAt (firstInterior A) (secondInterior A x) x := by
  have hy := (hasDerivAt_id x).div_const A
  have h := ((((hy.const_mul (-8)).add ((hy.pow 3).const_mul 24)).sub
    ((hy.pow 5).const_mul 24)).add ((hy.pow 7).const_mul 8)).div_const
      (A * Real.sqrt A)
  convert h using 1 <;> try rfl
  dsimp [secondInterior]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- The source bump has zero endpoint traces. -/
theorem bumpInterior_endpoints (A : ℝ) (hA : A ≠ 0) :
    bumpInterior A (-A) = 0 ∧ bumpInterior A A = 0 := by
  simp [bumpInterior, hA]

/-- Its first derivative also has zero endpoint traces, excluding boundary delta terms. -/
theorem firstInterior_endpoints (A : ℝ) (hA : A ≠ 0) :
    firstInterior A (-A) = 0 ∧ firstInterior A A = 0 := by
  norm_num [firstInterior, hA]

/-- The second derivative has zero endpoint values as well. -/
theorem secondInterior_endpoints (A : ℝ) (hA : A ≠ 0) :
    secondInterior A (-A) = 0 ∧ secondInterior A A = 0 := by
  norm_num [secondInterior, hA]

/-- A continuous polynomial restricted to a compact interval is globally integrable. -/
theorem integrable_zeroExtension (f : ℝ → ℝ) (hf : Continuous f) (a b : ℝ) :
    Integrable ((Icc a b).indicator f) volume :=
  (hf.integrableOn_Icc).integrable_indicator measurableSet_Icc

/-- No endpoint atom is introduced when passing from Lebesgue zero extension to the interval. -/
theorem zeroExtension_integral (f : ℝ → ℝ) (a b : ℝ) (hab : a ≤ b) :
    (∫ x, (Icc a b).indicator f x) = ∫ x in a..b, f x := by
  rw [MeasureTheory.integral_indicator measurableSet_Icc,
    integral_Icc_eq_integral_Ioc, intervalIntegral.integral_of_le hab]

/-- The actual scaled bump is globally integrable, without assuming a realization. -/
theorem scaledBump_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (scaledBump A) volume := by
  rw [scaledBump_eq_indicator A hA]
  exact integrable_zeroExtension _ (bumpInterior_continuous A) _ _

/-- The concrete proposed weak derivative is globally integrable. -/
theorem explicitSecondDerivative_integrable (A : ℝ) :
    Integrable (explicitSecondDerivative A) volume :=
  integrable_zeroExtension _ (secondInterior_continuous A) _ _

/-- Two integrations by parts give the exact source's weak second derivative, with no
DilationRealization premise and with both test-product integrability obligations proved. -/
theorem scaledBump_weak_second_derivative (A : ℝ) (hA : 1 ≤ A) :
    IsWeakSecondDerivative (scaledBump A) (explicitSecondDerivative A) := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hne : A ≠ 0 := ne_of_gt hpos
  have hab : -A ≤ A := by linarith
  refine ⟨(scaledBump_integrable A hpos).locallyIntegrable,
    (explicitSecondDerivative_integrable A).locallyIntegrable, ?_⟩
  intro η hη _
  have hη' : ContDiff ℝ ∞ (deriv η) := (contDiff_infty_iff_deriv.mp hη).2
  have hη'' : ContDiff ℝ ∞ (deriv (deriv η)) := (contDiff_infty_iff_deriv.mp hη').2
  have hgη : Integrable (fun x ↦ explicitSecondDerivative A x * η x) volume := by
    simpa only [explicitSecondDerivative, ← Set.indicator_mul_left] using
      integrable_zeroExtension (fun x ↦ secondInterior A x * η x)
        ((secondInterior_continuous A).mul hη.continuous) (-A) A
  have hfη : Integrable (fun x ↦ scaledBump A x * deriv (deriv η) x) volume := by
    rw [scaledBump_eq_indicator A hpos]
    simpa only [← Set.indicator_mul_left] using
      integrable_zeroExtension (fun x ↦ bumpInterior A x * deriv (deriv η) x)
        ((bumpInterior_continuous A).mul hη''.continuous) (-A) A
  refine ⟨hgη, hfη, ?_⟩
  have ibp₁ := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A)
    (bumpInterior_continuous A).continuousOn hη'.continuous.continuousOn
    (fun x _ ↦ bumpInterior_hasDerivAt A x)
    (fun x _ ↦ ((contDiff_infty_iff_deriv.mp hη').1 x).hasDerivAt)
    ((firstInterior_continuous A).intervalIntegrable (-A) A)
    (hη''.continuous.intervalIntegrable (-A) A)
  have ibp₂ := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A)
    (firstInterior_continuous A).continuousOn hη.continuous.continuousOn
    (fun x _ ↦ firstInterior_hasDerivAt A x)
    (fun x _ ↦ ((contDiff_infty_iff_deriv.mp hη).1 x).hasDerivAt)
    ((secondInterior_continuous A).intervalIntegrable (-A) A)
    (hη'.continuous.intervalIntegrable (-A) A)
  rw [(bumpInterior_endpoints A hne).1, (bumpInterior_endpoints A hne).2] at ibp₁
  rw [(firstInterior_endpoints A hne).1, (firstInterior_endpoints A hne).2] at ibp₂
  simp only [zero_mul, sub_zero, zero_sub] at ibp₁ ibp₂
  rw [scaledBump_eq_indicator A hpos]
  simp_rw [explicitSecondDerivative, ← Set.indicator_mul_left]
  rw [zeroExtension_integral _ (-A) A hab, zeroExtension_integral _ (-A) A hab]
  linarith

/-- The concrete derivative and actual dilation test obey the exact zero-extension field. -/
theorem explicit_dilationTest_zero_extension (A : ℝ) (hA : 1 ≤ A)
    (x : ℝ) (outside : x ∉ Icc (-A) A) :
    dilationTest explicitSecondDerivative A x = 0 := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [dilationTest, scaledBump_eq_indicator A hpos]
  simp [explicitSecondDerivative, indicator_of_notMem outside]

/-- The concrete dilation test is integrable before any full realization is assembled. -/
theorem explicit_dilationTest_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (dilationTest explicitSecondDerivative A) volume := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  exact (explicitSecondDerivative_integrable A).sub ((scaledBump_integrable A hpos).div_const 4)


/-- The constructed dilation test is precisely the indicated compact polynomial. -/
theorem explicit_dilationTest_eq_indicator (A : ℝ) (hA : 0 < A) :
    dilationTest explicitSecondDerivative A =
      (Icc (-A) A).indicator (fun x ↦ secondInterior A x - bumpInterior A x / 4) := by
  funext x
  rw [dilationTest, scaledBump_eq_indicator A hA]
  simp only [explicitSecondDerivative, indicator_apply]
  split_ifs <;> simp

/-- Square integrability of the actual constructed test is proved, not supplied as a field. -/
theorem explicit_dilationTest_square_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ dilationTest explicitSecondDerivative A x ^ 2) volume := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [explicit_dilationTest_eq_indicator A hpos]
  have hc : Continuous (fun x ↦ (secondInterior A x - bumpInterior A x / 4) ^ 2) :=
    ((secondInterior_continuous A).sub ((bumpInterior_continuous A).div_const 4)).pow 2
  convert integrable_zeroExtension _ hc (-A) A using 1
  funext x
  simp only [indicator_apply]
  split_ifs <;> simp


end

end FormalResearch.SUCAS.Realization
```
