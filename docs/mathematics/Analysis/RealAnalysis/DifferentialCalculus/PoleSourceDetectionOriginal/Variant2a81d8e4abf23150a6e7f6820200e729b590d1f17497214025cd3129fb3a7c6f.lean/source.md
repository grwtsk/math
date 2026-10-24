# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PoleSourceDetectionOriginal.Variant2a81d8e4abf23150a6e7f6820200e729b590d1f17497214025cd3129fb3a7c6f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43e4cce6f7294a97eadda769c9b02626c9ed1954` · SHA-256 `a69499a541c892946e1142298c38e6b2b924472fa500cd99ba58cacdd5be0b6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BilateralLaplaceAdd.Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"baf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.BilateralLaplaceAdd.Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196","mathematical_subject":"Analysis.Calculus","original_sha256":"baf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-bessel-contour-recovery/PoleSourceDetection.original.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceLaplaceDetection

/-!
# Exact source detection at every positive dilation

This module extends the radius domain of the existing exact source Laplace API
from `1 ≤ A` to `0 < A`. It reuses the canonical bump, scaled bump, explicit
second derivative, normalization, normalized test, correlation, and bilateral
Laplace definitions. The existing normalization-positivity theorem has the
stronger radius hypothesis; its extension here proves positivity from that
same exact normalization polynomial, without changing the source or its scale.
Complex weighted integrability, zero boundary traces, and reflected convolution
justify the exact transform identity at every positive radius.

The scope is source sensitivity only, not RH. This module proves neither the
existence nor the absence of an off-line zeta zero. It proves no domination of
one zero term over the complete explicit formula, no `PrimeSquareCompensationTail`,
and no `EstimateObligation`. It does not alter the certified frontier equivalence
class or identify zeros of the bump transform with zeta zeros. A hypothetical
off-critical-line zero is merely not annihilated by this source at any positive
dilation. No issue is closed by these proofs.

AI attribution: Codex authored this API extension and its proofs.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BilateralLaplaceAdd.Variantbaf33b5ea7c23919074b08afeb1ced55dd184a1ac178a4b9426ab9b17dc18196

namespace FormalResearch.RiemannHypothesis.PoleSourceDetection

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open SourceLaplaceDetection SourceBumpLaplace PoleDifferentialCorrelation

noncomputable section

/-- Addition of two genuinely integrable complex weights commutes with the bilateral transform. -/
theorem bilateral_laplace_add (f g : ℝ → ℝ) (z : ℂ)
    (hf : Integrable (fun t : ℝ ↦ (f t : ℂ) * Complex.exp (z * (t : ℂ))))
    (hg : Integrable (fun t : ℝ ↦ (g t : ℂ) * Complex.exp (z * (t : ℂ)))) :
    bilateralLaplace (fun t ↦ f t + g t) z = bilateralLaplace f z + bilateralLaplace g z := by
  unfold bilateralLaplace
  simp only [Complex.ofReal_add, add_mul]
  exact integral_add hf hg

/-- Real scalar multiplication commutes with a genuinely integrable bilateral transform. -/
theorem bilateral_laplace_smul (c : ℝ) (f : ℝ → ℝ) (z : ℂ)
    (hf : Integrable (fun t : ℝ ↦ (f t : ℂ) * Complex.exp (z * (t : ℂ)))) :
    bilateralLaplace (fun t ↦ c * f t) z = (c : ℂ) * bilateralLaplace f z := by
  unfold bilateralLaplace
  simp only [Complex.ofReal_mul, mul_assoc]
  exact ((ContinuousLinearMap.mul ℂ ℂ) (c : ℂ)).integral_comp_comm hf

/-- Reflection preserves genuine integrability and exchanges the two Laplace parameters. -/
theorem bilateral_laplace_reflect (f : ℝ → ℝ) (z : ℂ)
    (hf : Integrable (fun t : ℝ ↦ (f t : ℂ) * Complex.exp ((-z) * (t : ℂ)))) :
    Integrable (fun t : ℝ ↦ (f (-t) : ℂ) * Complex.exp (z * (t : ℂ))) ∧
      bilateralLaplace (fun t ↦ f (-t)) z = bilateralLaplace f (-z) := by
  refine ⟨reflected_laplace_integrable f z hf, ?_⟩
  unfold bilateralLaplace
  simpa only [Complex.ofReal_neg, neg_mul_neg] using
    integral_neg_eq_self (fun t : ℝ ↦ (f t : ℂ) * Complex.exp ((-z) * (t : ℂ))) volume

/-- Positive-radius extension of positivity for the unchanged canonical normalization. -/
theorem source_normalization_pos_of_pos (A : ℝ) (hA : 0 < A) :
    0 < sourceNormalization A := by
  have hA2 : 0 < A ^ 2 := pow_pos hA _
  have hA4 : 0 < A ^ 4 := pow_pos hA _
  unfold sourceNormalization
  positivity

/-- Every actual normalized test has a genuinely integrable complex weight for `A > 0`. -/
theorem normalized_test_laplace_integrable (A : ℝ) (hA : 0 < A) (z : ℂ) :
    Integrable (fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ) *
      Complex.exp (z * (x : ℂ))) :=
  compact_laplace_integrable _ z (normalizedTest_contDiff A hA).continuous
    (normalizedTest_hasCompactSupport A hA)

/-- The actual correlation also has a genuinely integrable complex weight for `A > 0`. -/
theorem source_laplace_integrable (A : ℝ) (hA : 0 < A) (z : ℂ) :
    Integrable (fun t : ℝ ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp (z * (t : ℂ))) :=
  complex_weighted_correlation_integrable _ z
    (normalized_test_laplace_integrable A hA z)
    (normalized_test_laplace_integrable A hA (-z))

/-- The actual normalized test is the pole operation on its actual bump at every positive radius. -/
theorem normalized_test_eq_pole_differential_operator (A : ℝ) (hA : 0 < A) :
    normalizedTest explicitSecondDerivative A =
      fun t ↦ poleDifferentialOperator (scaledBump A) t /
        Real.sqrt (sourceNormalization A) := by
  unfold normalizedTest dilationTest poleDifferentialOperator
  rw [scaled_bump_second_deriv A hA]

/-- Two actual zero-trace integrations by parts give the complex second-derivative factor. -/
theorem explicit_second_derivative_laplace (A : ℝ) (hA : 0 < A) (z : ℂ) :
    bilateralLaplace (explicitSecondDerivative A) z =
      z ^ 2 * bilateralLaplace (scaledBump A) z := by
  have hne := ne_of_gt hA
  have h0 := bilateral_laplace_indicator_derivative (bumpInterior A) (firstInterior A)
    (-A) A z (by linarith) (bumpInterior_continuous A) (firstInterior_continuous A)
    (bumpInterior_hasDerivAt A) (bumpInterior_endpoints A hne).1 (bumpInterior_endpoints A hne).2
  have h1 := bilateral_laplace_indicator_derivative (firstInterior A) (secondInterior A)
    (-A) A z (by linarith) (firstInterior_continuous A) (secondInterior_continuous A)
    (firstInterior_hasDerivAt A) (firstInterior_endpoints A hne).1 (firstInterior_endpoints A hne).2
  rw [explicitSecondDerivative, scaledBump_eq_indicator A hA, h1, h0]
  ring

/-- The actual test retains its complex pole factor and exact normalization for `A > 0`. -/
theorem normalized_test_laplace_factor (A : ℝ) (hA : 0 < A) (z : ℂ) :
    bilateralLaplace (normalizedTest explicitSecondDerivative A) z =
      (z ^ 2 - 1 / 4) * bilateralLaplace (scaledBump A) z /
        (Real.sqrt (sourceNormalization A) : ℂ) := by
  unfold bilateralLaplace normalizedTest dilationTest
  simp only [Complex.ofReal_div, Complex.ofReal_sub, Complex.ofReal_ofNat]
  simp_rw [div_mul_eq_mul_div]
  simp_rw [sub_mul]
  simp_rw [div_mul_eq_mul_div]
  rw [integral_div, integral_sub (explicit_second_derivative_laplace_integrable A z)
    ((scaled_bump_laplace_integrable A z hA).div_const (4 : ℂ)), integral_div]
  change (bilateralLaplace (explicitSecondDerivative A) z -
    bilateralLaplace (scaledBump A) z / 4) / (Real.sqrt (sourceNormalization A) : ℂ) = _
  rw [explicit_second_derivative_laplace A hA z]
  unfold bilateralLaplace
  ring

/-- Genuine dilation substitution gives `√A * B(Az)` for the actual scaled bump. -/
theorem scaled_bump_laplace (A : ℝ) (hA : 0 < A) (z : ℂ) :
    bilateralLaplace (scaledBump A) z =
      (Real.sqrt A : ℂ) * bumpLaplace ((A : ℂ) * z) := by
  rw [SourceLaplaceDetection.scaled_bump_laplace A z hA, bilateral_laplace_source_bump]
  have hs : (Real.sqrt A : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt (Real.sqrt_pos.mpr hA)
  have he : (A : ℂ) / (Real.sqrt A : ℂ) = (Real.sqrt A : ℂ) := by
    apply (div_eq_iff hs).mpr
    exact_mod_cast (Real.mul_self_sqrt hA.le).symm
  rw [he]

/-- The exact normalized test transform exposes both square-root scales and the pole factor. -/
theorem normalized_test_laplace (A : ℝ) (hA : 0 < A) (z : ℂ) :
    bilateralLaplace (normalizedTest explicitSecondDerivative A) z =
      (Real.sqrt A : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ) *
        (z ^ 2 - 1 / 4) * bumpLaplace ((A : ℂ) * z) := by
  rw [normalized_test_laplace_factor A hA z, scaled_bump_laplace A hA z]
  ring

/-- Genuine complex Fubini gives the actual source's two reflected test transforms for `A > 0`. -/
theorem source_laplace_eq_test_product (A : ℝ) (hA : 0 < A) (z : ℂ) :
    sourceLaplace A z = bilateralLaplace (normalizedTest explicitSecondDerivative A) z *
      bilateralLaplace (normalizedTest explicitSecondDerivative A) (-z) :=
  bilateral_laplace_correlation _ z (normalized_test_laplace_integrable A hA z)
    (normalized_test_laplace_integrable A hA (-z))

/-- The exact source transform identity holds at every positive dilation. -/
theorem source_laplace_eq_bump_square (A : ℝ) (hA : 0 < A) (z : ℂ) :
    sourceLaplace A z = (A : ℂ) / (sourceNormalization A : ℂ) *
      (z ^ 2 - 1 / 4) ^ 2 * bumpLaplace ((A : ℂ) * z) ^ 2 := by
  have hZpos := source_normalization_pos_of_pos A hA
  have hAsqrt : (Real.sqrt A : ℂ) ^ 2 = (A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hA.le
  have hZsqrt : (Real.sqrt (sourceNormalization A) : ℂ) ^ 2 =
      (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hZpos.le
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (Real.sqrt_pos.mpr hZpos)
  have hz : (sourceNormalization A : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt hZpos
  rw [source_laplace_eq_test_product A hA z, normalized_test_laplace A hA z,
    normalized_test_laplace A hA (-z), mul_neg, bump_laplace_even]
  simp only [neg_sq]
  field_simp [hs, hz]
  rw [hAsqrt, hZsqrt]
  ring

/-- T1 in the requested native bilateral form, with the unchanged actual source. -/
theorem source_correlation_bilateral_laplace (A : ℝ) (hA : 0 < A) (z : ℂ) :
    bilateralLaplace (sourceCorrelation explicitSecondDerivative A) z =
      (A : ℂ) / (sourceNormalization A : ℂ) * (z ^ 2 - 1 / 4) ^ 2 *
        bumpLaplace ((A : ℂ) * z) ^ 2 :=
  source_laplace_eq_bump_square A hA z

/-- Exact first derivative of the actual bump transform, from dominated differentiation. -/
theorem bump_laplace_deriv (z : ℂ) : deriv bumpLaplace z = bumpLaplaceMoment 1 z := by
  have he : bumpLaplaceMoment 0 = bumpLaplace := funext bump_laplace_moment_zero
  have h := bump_laplace_moment_has_deriv_at 0 z
  rw [he] at h
  exact h.deriv

/-- Exact second derivative of the actual bump transform, with the same genuine domination. -/
theorem bump_laplace_second_deriv (z : ℂ) :
    deriv (deriv bumpLaplace) z = bumpLaplaceMoment 2 z := by
  have he : deriv bumpLaplace = bumpLaplaceMoment 1 := funext bump_laplace_deriv
  rw [he]
  exact (bump_laplace_moment_has_deriv_at 1 z).deriv

/-- T2 in ordinary native complex derivative form for the actual source integral. -/
theorem bump_laplace_ode (z : ℂ) :
    z * deriv (deriv bumpLaplace) z + 10 * deriv bumpLaplace z - z * bumpLaplace z = 0 := by
  rw [bump_laplace_second_deriv, bump_laplace_deriv]
  exact sub_eq_zero.mpr (bump_laplace_moment_ode z)

/-- T3: every zero of the actual bump transform has zero real part. -/
theorem bump_laplace_zero_real_part_eq_zero {z : ℂ} (hz : bumpLaplace z = 0) : z.re = 0 := by
  by_contra hre
  exact bump_laplace_ne_zero_of_re_ne_zero z hre hz

/-- T4 explicitly transports nonzero real part through every positive real dilation. -/
theorem bump_laplace_scaled_ne_zero (A : ℝ) (hA : 0 < A) (z : ℂ) (hz : z.re ≠ 0) :
    bumpLaplace ((A : ℂ) * z) ≠ 0 := by
  apply bump_laplace_ne_zero_of_re_ne_zero
  have he : (((A : ℂ) * z).re) = A * z.re := by simp
  rw [he]
  exact mul_ne_zero (ne_of_gt hA) hz

/-- T5 exposes each nonzero factor of the actual correlation transform at positive radius. -/
theorem source_correlation_laplace_ne_zero (A : ℝ) (hA : 0 < A) (z : ℂ)
    (hre : z.re ≠ 0) (hpole : z ^ 2 ≠ 1 / 4) :
    bilateralLaplace (sourceCorrelation explicitSecondDerivative A) z ≠ 0 := by
  rw [source_correlation_bilateral_laplace A hA z]
  have ha : (A : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt hA
  have hz : (sourceNormalization A : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (source_normalization_pos_of_pos A hA)
  have hq : z ^ 2 - 1 / 4 ≠ 0 := sub_ne_zero.mpr hpole
  have hb : bumpLaplace ((A : ℂ) * z) ≠ 0 := bump_laplace_scaled_ne_zero A hA z hre
  exact mul_ne_zero (mul_ne_zero (div_ne_zero ha hz) (pow_ne_zero _ hq)) (pow_ne_zero _ hb)

/-- T6 detects every off-line strip parameter at every positive radius, without a zeta predicate. -/
theorem source_correlation_laplace_strip_ne_zero (A : ℝ) (hA : 0 < A) (ρ : ℂ)
    (hρ0 : 0 < ρ.re) (hρ1 : ρ.re < 1) (hoff : ρ.re ≠ 1 / 2) :
    bilateralLaplace (sourceCorrelation explicitSecondDerivative A) (ρ - 1 / 2) ≠ 0 := by
  apply source_correlation_laplace_ne_zero A hA (ρ - 1 / 2)
  · simpa using sub_ne_zero.mpr hoff
  · exact sub_ne_zero.mp (shifted_strip_pole_factor_ne_zero ρ hρ0 hρ1)

end
end FormalResearch.RiemannHypothesis.PoleSourceDetection
```
