# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceMixedCurvatureCross.Variant1fd144af66755730e57a24890ef1aa718aef96ec7882a42fe4a1f7c7627615b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fcf0d16d849cc43e2274b052b2b22305c3fdb29` · SHA-256 `0bd3c179d59d4d407c39564269226e130a55e934b3f28bf0f420d9b65e18ff52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceShiftCrossIntegrable.Variant6b9369c586ed33ee2861c52a7779323ea77da5f84999b5ea54b71314b3857605","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b9369c586ed33ee2861c52a7779323ea77da5f84999b5ea54b71314b3857605","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceShiftCrossIntegrable.Variant6b9369c586ed33ee2861c52a7779323ea77da5f84999b5ea54b71314b3857605","mathematical_subject":"Analysis.Integration","original_sha256":"6b9369c586ed33ee2861c52a7779323ea77da5f84999b5ea54b71314b3857605","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-hilbert-cycle-20261006/finite-energy-replays/SourceMixedCurvatureCross.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
# The actual finite mixed-curvature cross identity

Complete private proof-text preparation: UNCOMPILED. The two real coefficient
rows, two shift rows and two finite index types are independent. Actual source
products are proved integrable before any finite integral exchange. The only
source import is the current branch-local correlation curvature module.

This identity supplies no sign for unequal rows. It does not perform the
arithmetic work's interval Fubini step, identify integrated derivative profiles
with derivatives, or alter the full centered diagonal and independent main term.
No PRIVATE35 lemma, positivity assumption, tail bound or RH witness is used.

AI attribution: OpenAI Codex proof construction; native verification is held.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceShiftCrossIntegrable.Variant6b9369c586ed33ee2861c52a7779323ea77da5f84999b5ea54b71314b3857605

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross

open MeasureTheory
open scoped BigOperators
open SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

noncomputable section

private theorem source_shift_cross_integrable {A : ℝ} (hA : 0 < A) (u w : ℝ) :
    Integrable (fun v : ℝ => normalizedTest explicitSecondDerivative A (v + u) *
      normalizedTest explicitSecondDerivative A (v + w)) := by
  convert (correlation_product_integrable A (u - w) hA).comp_add_right u using 1
  funext v
  rw [show v + u - (u - w) = v + w by ring]

private theorem deriv_shift_cross_integrable {A : ℝ} (hA : 0 < A) (u w : ℝ) :
    Integrable (fun v : ℝ => deriv (normalizedTest explicitSecondDerivative A) (v + u) *
      deriv (normalizedTest explicitSecondDerivative A) (v + w)) := by
  convert (sourceCorrelation_second_deriv_integrand_integrable hA (u - w)).comp_add_right u
    using 1
  funext v
  rw [show v + u - (u - w) = v + w by ring]

private theorem correlation_at_shift_difference (A u w : ℝ) :
    sourceCorrelation explicitSecondDerivative A (u - w) =
      ∫ v : ℝ, normalizedTest explicitSecondDerivative A (v + u) *
        normalizedTest explicitSecondDerivative A (v + w) := by
  unfold sourceCorrelation
  symm
  calc
    _ = ∫ v : ℝ, normalizedTest explicitSecondDerivative A (v + u) *
        normalizedTest explicitSecondDerivative A (v + u - (u - w)) := by
      apply integral_congr_ae
      filter_upwards [] with v
      rw [show v + u - (u - w) = v + w by ring]
    _ = _ := integral_add_right_eq_self
      (fun v : ℝ => normalizedTest explicitSecondDerivative A v *
        normalizedTest explicitSecondDerivative A (v - (u - w))) u

private theorem curvature_at_shift_difference {A : ℝ} (hA : 0 < A) (u w : ℝ) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (u - w) =
      -(∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v + u) *
        deriv (normalizedTest explicitSecondDerivative A) (v + w)) := by
  have ht : (∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v + u) *
      deriv (normalizedTest explicitSecondDerivative A) (v + w)) =
      ∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) v *
        deriv (normalizedTest explicitSecondDerivative A) (v - (u - w)) := by
    calc
      _ = ∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v + u) *
          deriv (normalizedTest explicitSecondDerivative A) (v + u - (u - w)) := by
        apply integral_congr_ae
        filter_upwards [] with v
        rw [show v + u - (u - w) = v + w by ring]
      _ = _ := integral_add_right_eq_self
        (fun v : ℝ => deriv (normalizedTest explicitSecondDerivative A) v *
          deriv (normalizedTest explicitSecondDerivative A) (v - (u - w))) u
  rw [sourceCorrelation_second_deriv_eq_integral hA, ← ht]

/-- The actual finite mixed kernel is the negative two-sector cross pairing.
The independently chosen rows need not agree and no sign is asserted. -/
theorem actual_mixed_curvature_finite_cross_eq_neg_products
    {ι κ : Type*} (s : Finset ι) (t : Finset κ) (a x : ι → ℝ) (b y : κ → ℝ)
    {A : ℝ} (hA : 0 < A) :
    (∑ i ∈ s, ∑ j ∈ t, a i * b j *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x i - y j) -
        sourceCorrelation explicitSecondDerivative A (x i - y j) / 4)) =
      -(∫ v : ℝ,
        (∑ i ∈ s, a i * deriv (normalizedTest explicitSecondDerivative A) (v + x i)) *
          (∑ j ∈ t, b j * deriv (normalizedTest explicitSecondDerivative A) (v + y j))) -
        (1 / 4 : ℝ) * (∫ v : ℝ,
          (∑ i ∈ s, a i * normalizedTest explicitSecondDerivative A (v + x i)) *
            (∑ j ∈ t, b j * normalizedTest explicitSecondDerivative A (v + y j))) := by
  have hfinite (p : ι → ℝ → ℝ) (q : κ → ℝ → ℝ)
      (hprod : ∀ i ∈ s, ∀ j ∈ t, Integrable (fun v : ℝ => p i v * q j v)) :
      (∫ v : ℝ, (∑ i ∈ s, a i * p i v) * (∑ j ∈ t, b j * q j v)) =
        ∑ i ∈ s, ∑ j ∈ t, a i * b j * (∫ v : ℝ, p i v * q j v) := by
    have hexpand :
        (fun v : ℝ => (∑ i ∈ s, a i * p i v) * (∑ j ∈ t, b j * q j v)) =
        (fun v : ℝ => ∑ i ∈ s, ∑ j ∈ t, a i * b j * (p i v * q j v)) := by
      funext v
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      ring
    rw [hexpand, integral_finsetSum s]
    · apply Finset.sum_congr rfl
      intro i hi
      rw [integral_finsetSum t]
      · apply Finset.sum_congr rfl
        intro j hj
        exact integral_const_mul (a i * b j) _
      · intro j hj
        exact (hprod i hi j hj).const_mul (a i * b j)
    · intro i hi
      exact integrable_finsetSum t (fun j hj =>
        (hprod i hi j hj).const_mul (a i * b j))
  have hp := hfinite
    (fun i v => normalizedTest explicitSecondDerivative A (v + x i))
    (fun j v => normalizedTest explicitSecondDerivative A (v + y j))
    (fun i _ j _ => source_shift_cross_integrable hA (x i) (y j))
  have hd := hfinite
    (fun i v => deriv (normalizedTest explicitSecondDerivative A) (v + x i))
    (fun j v => deriv (normalizedTest explicitSecondDerivative A) (v + y j))
    (fun i _ j _ => deriv_shift_cross_integrable hA (x i) (y j))
  rw [hd, hp]
  simp only [curvature_at_shift_difference hA, correlation_at_shift_difference,
    mul_sub, mul_neg, mul_div, Finset.sum_sub_distrib, Finset.sum_neg_distrib]
  simp_rw [← Finset.sum_div]
  ring

end
end FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross
```
