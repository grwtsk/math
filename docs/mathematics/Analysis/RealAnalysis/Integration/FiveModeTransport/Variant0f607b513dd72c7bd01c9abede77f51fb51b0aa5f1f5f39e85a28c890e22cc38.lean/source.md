# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FiveModeTransport.Variant0f607b513dd72c7bd01c9abede77f51fb51b0aa5f1f5f39e85a28c890e22cc38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87234d30297b66591c4e1c959975e922024acc37` · SHA-256 `3c71954470665235e31d1a1f38a33adc0dacea75e44266211d215972f0419946`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ModeContinuous.Variante307b0503c856a08fd465ed6eb4f9c12e5a125b9b6464cd7dc6c216ab3a535f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e307b0503c856a08fd465ed6eb4f9c12e5a125b9b6464cd7dc6c216ab3a535f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ModeContinuous.Variante307b0503c856a08fd465ed6eb4f9c12e5a125b9b6464cd7dc6c216ab3a535f8","mathematical_subject":"Analysis.Integration","original_sha256":"e307b0503c856a08fd465ed6eb4f9c12e5a125b9b6464cd7dc6c216ab3a535f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeSource
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect

/-!
Actual source transport, with touching endpoints and every prime power retained.
Originating mathematical direction: grwtsk contributors.
Scratch proof assistance: OpenAI Codex. No uniform bound is asserted.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ModeContinuous.Variante307b0503c856a08fd465ed6eb4f9c12e5a125b9b6464cd7dc6c216ab3a535f8

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization BridgeNormalization CorrelationRegularity

theorem mode_continuous (i : Fin 5) : Continuous (mode i) := by
  fin_cases i <;> unfold mode <;> norm_num [legendre] <;> fun_prop

theorem mode_product_integrable (A t : ℝ) (i j : Fin 5) :
    Integrable (fun x => normalizedMode A i x * normalizedMode A j (x-t)) := by
  let s := Icc (-A) A ∩ (fun x : ℝ => x-t) ⁻¹' Icc (-A) A
  let f := fun x : ℝ =>
    (Real.sqrt (modeWeight i / (2*A)) * mode i (x/A)) *
    (Real.sqrt (modeWeight j / (2*A)) * mode j ((x-t)/A))
  have hf : Continuous f := by
    unfold f
    exact (continuous_const.mul ((mode_continuous i).comp
      (continuous_id.div_const A))).mul
      (continuous_const.mul ((mode_continuous j).comp
        ((continuous_id.sub continuous_const).div_const A)))
  have hs : MeasurableSet s :=
    measurableSet_Icc.inter (measurableSet_Icc.preimage (by fun_prop))
  have heq : (fun x => normalizedMode A i x * normalizedMode A j (x-t)) =
      s.indicator f := by
    classical
    funext x
    simp only [normalizedMode, Set.indicator]
    by_cases hx : x ∈ Icc (-A) A
    · by_cases hy : x-t ∈ Icc (-A) A
      · have hsx : x ∈ s := ⟨hx, hy⟩
        rw [if_pos hx, if_pos hy, if_pos hsx]
      · have hsx : x ∉ s := fun h => hy h.2
        rw [if_pos hx, if_neg hy, if_neg hsx, mul_zero]
    · have hsx : x ∉ s := fun h => hx h.1
      rw [if_neg hx, if_neg hsx, zero_mul]
  rw [heq]
  exact (hf.integrableOn_Icc.mono_set inter_subset_left).integrable_indicator hs

/-- The full Lebesgue cross-correlation, distinct from the positive-branch polynomial. -/
def modeCorrelation (A : ℝ) (i j : Fin 5) (t : ℝ) : ℝ :=
  ∫ x : ℝ, normalizedMode A i x * normalizedMode A j (x-t)

theorem actual_correlation_reconstruction (A t : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A t =
      ∑ i : Fin 5, ∑ j : Fin 5,
        alpha A i * alpha A j * modeCorrelation A i j t := by
  unfold sourceCorrelation
  simp_rw [actual_source_reconstruction A hA]
  have heq : (fun x : ℝ =>
      (∑ i : Fin 5, alpha A i * normalizedMode A i x) *
        (∑ j : Fin 5, alpha A j * normalizedMode A j (x-t))) =
      fun x => ∑ i : Fin 5, ∑ j : Fin 5,
        (alpha A i * alpha A j) *
          (normalizedMode A i x * normalizedMode A j (x-t)) := by
    funext x
    simp_rw [Finset.sum_mul, Finset.mul_sum]
    congr 1
    funext i
    congr 1
    funext j
    ring
  rw [heq]
  rw [integral_finsetSum _ (fun i _ => integrable_finsetSum _
    (fun j _ => (mode_product_integrable A t i j).const_mul _))]
  apply Finset.sum_congr rfl
  intro i _
  rw [integral_finsetSum _ (fun j _ => (mode_product_integrable A t i j).const_mul _)]
  simp only [integral_const_mul, modeCorrelation]

def poleMoment (A : ℝ) (i : Fin 5) : ℝ :=
  ∫ x : ℝ, Real.exp (x/2) * normalizedMode A i x

theorem mode_pole_integrable (A : ℝ) (i : Fin 5) :
    Integrable (fun x : ℝ => Real.exp (x/2) * normalizedMode A i x) := by
  have hc : Continuous (fun x : ℝ => Real.exp (x/2) *
      (Real.sqrt (modeWeight i / (2*A)) * mode i (x/A))) :=
    (by fun_prop : Continuous (fun x : ℝ => Real.exp (x/2))).mul
      (continuous_const.mul ((mode_continuous i).comp (continuous_id.div_const A)))
  have heq : (fun x : ℝ => Real.exp (x/2) * normalizedMode A i x) =
      (Icc (-A) A).indicator (fun x => Real.exp (x/2) *
        (Real.sqrt (modeWeight i / (2*A)) * mode i (x/A))) := by
    unfold normalizedMode
    funext x
    exact (Set.indicator_mul_right (Icc (-A) A) (fun x : ℝ => Real.exp (x/2))
      (fun x : ℝ => Real.sqrt (modeWeight i / (2*A)) * mode i (x/A))).symm
  rw [heq]
  exact integrable_zeroExtension _ hc (-A) A

/-- The pole is cancelled only after its actual source moment is proved zero. -/
theorem alpha_dot_pole_zero (A : ℝ) (hA : 1 ≤ A) :
    (∑ i : Fin 5, alpha A i * poleMoment A i) = 0 := by
  have h := CorrelationMoment.positive_pole_zero A hA
  simp_rw [actual_source_reconstruction A hA] at h
  simp_rw [Finset.mul_sum] at h
  have heq (x : ℝ) (i : Fin 5) : Real.exp (x/2) *
      (alpha A i * normalizedMode A i x) =
      alpha A i * (Real.exp (x/2) * normalizedMode A i x) := by ring
  simp_rw [heq] at h
  rw [integral_finsetSum _ (fun i _ => (mode_pole_integrable A i).const_mul _)] at h
  simpa only [integral_const_mul, poleMoment] using h

theorem pole_matrix_contraction (A : ℝ) (hA : 1 ≤ A) :
    (∑ i : Fin 5, ∑ j : Fin 5,
      alpha A i * alpha A j * (2 * poleMoment A i * poleMoment A j)) = 0 := by
  have heq : (∑ i : Fin 5, ∑ j : Fin 5,
      alpha A i * alpha A j * (2 * poleMoment A i * poleMoment A j)) =
      2 * (∑ i : Fin 5, alpha A i * poleMoment A i) ^ 2 := by
    rw [pow_two, Finset.sum_mul]
    simp_rw [Finset.mul_sum]
    congr 1
    funext i
    congr 1
    funext j
    ring
  rw [heq, alpha_dot_pole_zero A hA]
  ring

theorem contracted_correlation_origin (A : ℝ) (hA : 1 ≤ A) :
    (∑ i : Fin 5, ∑ j : Fin 5,
      alpha A i * alpha A j * modeCorrelation A i j 0) = 1 := by
  rw [← actual_correlation_reconstruction A 0 hA]
  simpa only [sourceCorrelation, sub_zero, ← pow_two] using normalized_square_integral A hA

theorem contracted_correlation_even (A t : ℝ) (hA : 1 ≤ A) :
    (∑ i : Fin 5, ∑ j : Fin 5,
      alpha A i * alpha A j * modeCorrelation A i j (-t)) =
    (∑ i : Fin 5, ∑ j : Fin 5,
      alpha A i * alpha A j * modeCorrelation A i j t) := by
  simp_rw [← actual_correlation_reconstruction A _ hA]
  exact sourceCorrelation_even A t

theorem contracted_correlation_support (A t : ℝ) (hA : 1 ≤ A) (ht : 2*A ≤ |t|) :
    (∑ i : Fin 5, ∑ j : Fin 5,
      alpha A i * alpha A j * modeCorrelation A i j t) = 0 := by
  rw [← actual_correlation_reconstruction A t hA]
  exact sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith) ht

end CommonMeanScratch
```
