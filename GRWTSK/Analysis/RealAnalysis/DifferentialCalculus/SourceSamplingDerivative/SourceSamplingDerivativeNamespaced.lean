-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceDerivativeZeroRight.Variant5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceDerivativeZeroRight.Variant5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185","mathematical_subject":"Analysis.Calculus","original_sha256":"5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/SourceSamplingDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceSampling
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDifferenceMoments


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceDerivativeZeroRight.Variant5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185

set_option autoImplicit false

namespace SourceSamplingDerivativeScratch

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open Realization CorrelationRegularity SourceSampling CorrelationDifferenceMoments
open Filter Topology

noncomputable section

theorem source_derivative_zero_right (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    deriv (sourceCorrelation explicitSecondDerivative A) t = 0 := by
  apply HasDerivWithinAt.deriv_eq_zero (s := Set.Ici t)
    ((hasDerivWithinAt_const t (Set.Ici t) (0 : ℝ)).congr_of_mem ?_ (le_refl t))
    (uniqueDiffWithinAt_Ici t)
  intro u hu
  exact sourceCorrelation_eq_zero_of_two_mul_le_abs A u (by linarith)
    ((ht.trans hu).trans (le_abs_self _))

theorem source_difference_zero_right (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    correlationDifference A t = 0 := by
  simp only [correlationDifference, source_derivative_zero_right A t hA ht,
    sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith)
      (ht.trans (le_abs_self _)), zero_div, sub_zero]

theorem sampling_term_hasDerivAt (A x k : ℝ) (hA : 1 ≤ A) (hx : 0 < x) (hk : 0 < k) :
    HasDerivAt (fun y : ℝ ↦ Real.log k / Real.sqrt (y * k) *
      sourceCorrelation explicitSecondDerivative A (Real.log (y * k)))
      (1 / x * (Real.log k / Real.sqrt (x * k) *
        correlationDifference A (Real.log (x * k)))) x := by
  have hprod : x * k ≠ 0 := (mul_pos hx hk).ne'
  have hsqrt : Real.sqrt (x * k) ≠ 0 := (Real.sqrt_pos.mpr (mul_pos hx hk)).ne'
  have hm : HasDerivAt (fun y : ℝ ↦ y * k) k x := by
    simpa only [id_eq, one_mul] using (hasDerivAt_id x).mul_const k
  have hc := ((contDiff_one_iff_deriv.mp
    (sourceCorrelation_contDiff A (by linarith))).1 (Real.log (x * k))).hasDerivAt
  apply HasDerivAt.congr_deriv
    (((hasDerivAt_const x (Real.log k)).div (hm.sqrt hprod) hsqrt).mul
      (hc.comp x (hm.log hprod)))
  unfold correlationDifference
  dsimp only [Function.comp_apply, Pi.div_apply]
  field_simp [hx.ne', hk.ne', hsqrt]
  ring_nf
  rw [Real.sq_sqrt (mul_pos hx hk).le]

theorem samplingIndices_subset_fixed (A y : ℝ) (N : ℕ) (hy : 0 < y)
    (hN : Real.exp (2 * A) / y ≤ (N : ℝ)) :
    samplingIndices A y ⊆ Finset.Icc 1 N := by
  intro k hk
  obtain ⟨hk1, hcut⟩ := (mem_samplingIndices_iff A y k hy).mp hk
  refine Finset.mem_Icc.mpr ⟨hk1, ?_⟩
  have hkX : (k : ℝ) < Real.exp (2 * A) / y :=
    (lt_div_iff₀ hy).mpr (by simpa only [mul_comm] using hcut)
  exact_mod_cast hkX.le.trans hN

theorem kernel_eq_fixed_sum (A y : ℝ) (N : ℕ) (hA : 1 ≤ A) (hy : 0 < y)
    (hN : Real.exp (2 * A) / y ≤ (N : ℝ)) :
    sourceSamplingKernel A y = ∑ k ∈ Finset.Icc 1 N,
      Real.log (k : ℝ) / Real.sqrt (y * (k : ℝ)) *
        sourceCorrelation explicitSecondDerivative A (Real.log (y * (k : ℝ))) := by
  apply Finset.sum_subset (samplingIndices_subset_fixed A y N hy hN)
  intro k hk hout
  have hk1 := (Finset.mem_Icc.mp hk).1
  have hcut : Real.exp (2 * A) ≤ y * (k : ℝ) := by
    by_contra h
    exact hout ((mem_samplingIndices_iff A y k hy).mpr ⟨hk1, lt_of_not_ge h⟩)
  have hlog : 2 * A ≤ Real.log (y * (k : ℝ)) := by
    simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith)
    (hlog.trans (le_abs_self _)), mul_zero]

theorem difference_sum_eq_fixed_sum (A x : ℝ) (N : ℕ) (hA : 1 ≤ A) (hx : 0 < x)
    (hN : Real.exp (2 * A) / x ≤ (N : ℝ)) :
    (∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      correlationDifference A (Real.log (x * (k : ℝ)))) =
      ∑ k ∈ Finset.Icc 1 N, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        correlationDifference A (Real.log (x * (k : ℝ))) := by
  apply Finset.sum_subset (samplingIndices_subset_fixed A x N hx hN)
  intro k hk hout
  have hk1 := (Finset.mem_Icc.mp hk).1
  have hcut : Real.exp (2 * A) ≤ x * (k : ℝ) := by
    by_contra h
    exact hout ((mem_samplingIndices_iff A x k hx).mpr ⟨hk1, lt_of_not_ge h⟩)
  have hlog : 2 * A ≤ Real.log (x * (k : ℝ)) := by
    simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
  rw [source_difference_zero_right A _ hA hlog, mul_zero]

theorem sourceSamplingKernel_hasDerivAt (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (sourceSamplingKernel A)
      (1 / x * ∑ k ∈ samplingIndices A x,
        Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
          correlationDifference A (Real.log (x * (k : ℝ)))) x := by
  let N : ℕ := ⌊2 * Real.exp (2 * A) / x⌋₊ + 1
  have hN (y : ℝ) (hy : x / 2 < y) : Real.exp (2 * A) / y ≤ (N : ℝ) := by
    have hy0 : 0 < y := by linarith
    have hquot : Real.exp (2 * A) / y < 2 * Real.exp (2 * A) / x := by
      apply (div_lt_div_iff₀ hy0 hx).mpr
      nlinarith [Real.exp_pos (2 * A)]
    have hf := Nat.lt_floor_add_one (2 * Real.exp (2 * A) / x)
    exact (hquot.trans (by simpa only [N, Nat.cast_add, Nat.cast_one] using hf)).le
  have heq : sourceSamplingKernel A =ᶠ[𝓝 x]
      (fun y ↦ ∑ k ∈ Finset.Icc 1 N, Real.log (k : ℝ) / Real.sqrt (y * (k : ℝ)) *
        sourceCorrelation explicitSecondDerivative A (Real.log (y * (k : ℝ)))) := by
    filter_upwards [eventually_gt_nhds (show x / 2 < x by linarith)] with y hy
    exact kernel_eq_fixed_sum A y N hA (by linarith) (hN y hy)
  have hd := HasDerivAt.fun_sum (u := Finset.Icc 1 N) (fun k hk ↦
    sampling_term_hasDerivAt A x k hA hx
      (by exact_mod_cast (show 0 < k by have := (Finset.mem_Icc.mp hk).1; omega)))
  have hfixed := hd.congr_of_eventuallyEq heq
  rw [← Finset.mul_sum, ← difference_sum_eq_fixed_sum A x N hA hx
    (hN x (by linarith))] at hfixed
  exact hfixed

theorem sourceSamplingKernel_deriv (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    deriv (sourceSamplingKernel A) x =
      1 / x * ∑ k ∈ samplingIndices A x,
        Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
          correlationDifference A (Real.log (x * (k : ℝ))) :=
  (sourceSamplingKernel_hasDerivAt A x hA hx).deriv

theorem sourceSamplingKernel_differentiableOn (A : ℝ) (hA : 1 ≤ A) :
    DifferentiableOn ℝ (sourceSamplingKernel A) (Set.Ioi 0) := by
  intro x hx
  exact (sourceSamplingKernel_hasDerivAt A x hA hx).differentiableAt.differentiableWithinAt

end
end SourceSamplingDerivativeScratch

#print axioms SourceSamplingDerivativeScratch.source_derivative_zero_right
#print axioms SourceSamplingDerivativeScratch.source_difference_zero_right
#print axioms SourceSamplingDerivativeScratch.sampling_term_hasDerivAt
#print axioms SourceSamplingDerivativeScratch.samplingIndices_subset_fixed
#print axioms SourceSamplingDerivativeScratch.kernel_eq_fixed_sum
#print axioms SourceSamplingDerivativeScratch.difference_sum_eq_fixed_sum
#print axioms SourceSamplingDerivativeScratch.sourceSamplingKernel_hasDerivAt
#print axioms SourceSamplingDerivativeScratch.sourceSamplingKernel_deriv
#print axioms SourceSamplingDerivativeScratch.sourceSamplingKernel_differentiableOn
