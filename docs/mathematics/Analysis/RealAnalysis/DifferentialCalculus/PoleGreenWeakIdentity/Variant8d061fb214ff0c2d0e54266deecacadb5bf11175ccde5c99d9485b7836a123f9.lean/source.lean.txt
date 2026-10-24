-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BoundaryFluxFunction.Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.BoundaryFluxFunction.Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3","mathematical_subject":"Analysis.Calculus","original_sha256":"f377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/f377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.PoleGreenKernel
import Mathlib.Analysis.Calculus.Deriv.Support
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas
import Mathlib.Analysis.Normed.Group.Bounded

/-!
# The finite-interval weak Green identity

The two smooth Green branches satisfy the homogeneous pole equation. Their
Lagrange boundary flux has a unit jump at zero, giving an exact weak delta
identity for a `C⁴` test with vanishing endpoint jets. Compact support then gives
the full-line identity and its ordinary convolution form. No arithmetic bound
or assumption about a distributional potential is inserted.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BoundaryFluxFunction.Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3

namespace FormalResearch.RiemannHypothesis.PoleGreenWeakIdentity

open MeasureTheory Set
open scoped Convolution
open PoleDifferentialCorrelation PoleArithmeticFunctional PoleGreenKernel
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

noncomputable section

/-- The actual Lagrange flux evaluated on the first four ordinary jets. -/
def boundaryFluxFunction (g f : ℝ → ℝ) (t : ℝ) : ℝ :=
  poleBoundaryFlux (g t) (iteratedDeriv 1 g t) (iteratedDeriv 2 g t)
    (iteratedDeriv 3 g t) (f t) (iteratedDeriv 1 f t) (iteratedDeriv 2 f t)
    (iteratedDeriv 3 f t)

/-- A `C⁴` test has the exact derivative of each of its first four jets. -/
theorem has_deriv_at_iterated_deriv (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f)
    (k : ℕ) (hk : k ≤ 3) (t : ℝ) :
    HasDerivAt (iteratedDeriv k f) (iteratedDeriv (k + 1) f t) t := by
  have hd := hf.differentiable_iteratedDeriv k (by exact_mod_cast (by omega : k < 4)) t
  simpa only [iteratedDeriv_succ] using hd.hasDerivAt

/-- Differentiating the boundary flux yields the exact formally self-adjoint operator identity. -/
theorem boundary_flux_has_deriv_at (g f : ℝ → ℝ)
    (hg : ContDiff ℝ 4 g) (hf : ContDiff ℝ 4 f) (t : ℝ) :
    HasDerivAt (boundaryFluxFunction g f)
      (g t * poleSquaredDifferentialOperator f t -
        poleSquaredDifferentialOperator g t * f t) t := by
  have hg0 : HasDerivAt g (iteratedDeriv 1 g t) t := by
    simpa only [iteratedDeriv_zero] using has_deriv_at_iterated_deriv g hg 0 (by omega) t
  have hf0 : HasDerivAt f (iteratedDeriv 1 f t) t := by
    simpa only [iteratedDeriv_zero] using has_deriv_at_iterated_deriv f hf 0 (by omega) t
  have hg1 := has_deriv_at_iterated_deriv g hg 1 (by omega) t
  have hg2 := has_deriv_at_iterated_deriv g hg 2 (by omega) t
  have hg3 := has_deriv_at_iterated_deriv g hg 3 (by omega) t
  have hf1 := has_deriv_at_iterated_deriv f hf 1 (by omega) t
  have hf2 := has_deriv_at_iterated_deriv f hf 2 (by omega) t
  have hf3 := has_deriv_at_iterated_deriv f hf 3 (by omega) t
  have hd := ((((hg0.mul hf3).sub (hg1.mul hf2)).add (hg2.mul hf1)).sub
    (hg3.mul hf0)).sub (((hg0.mul hf1).sub (hg1.mul hf0)).div_const 2)
  unfold boundaryFluxFunction poleBoundaryFlux
  apply hd.congr_deriv
  dsimp [poleSquaredDifferentialOperator]
  ring

/-- The expanded pole operator is continuous for every actual `C⁴` input. -/
theorem pole_squared_operator_continuous (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f) :
    Continuous (poleSquaredDifferentialOperator f) := by
  exact ((hf.continuous_iteratedDeriv 4 (by norm_num)).sub
    ((hf.continuous_iteratedDeriv 2 (by norm_num)).div_const 2)).add
      (hf.continuous.div_const 16)

/-- A homogeneous `C⁴` branch integrates against the pole operator by its boundary flux. -/
theorem homogeneous_branch_green_identity (g f : ℝ → ℝ)
    (hg : ContDiff ℝ 4 g) (hf : ContDiff ℝ 4 f)
    (hzero : ∀ t, poleSquaredDifferentialOperator g t = 0) (a b : ℝ) :
    (∫ t in a..b, g t * poleSquaredDifferentialOperator f t) =
      boundaryFluxFunction g f b - boundaryFluxFunction g f a := by
  have hi : IntervalIntegrable (fun t ↦ g t * poleSquaredDifferentialOperator f t)
      volume a b :=
    (hg.continuous.mul (pole_squared_operator_continuous f hf)).intervalIntegrable a b
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ ?_) hi
  simpa only [hzero, zero_mul, sub_zero] using boundary_flux_has_deriv_at g f hg hf t

/-- Vanishing endpoint jets remove all Lagrange flux terms there. -/
theorem boundary_flux_eq_zero_of_jets (g f : ℝ → ℝ) (t : ℝ)
    (hf : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f t = 0) :
    boundaryFluxFunction g f t = 0 := by
  have h0 : f t = 0 := by simpa using hf 0 (by omega)
  simp [boundaryFluxFunction, poleBoundaryFlux, h0,
    hf 1 (by omega), hf 2 (by omega), hf 3 (by omega)]

/-- The first four endpoint traces and Green jump prove a genuine finite-interval delta identity. -/
theorem pole_squared_green_weak_identity (B : ℝ) (hB : 0 < B)
    (f : ℝ → ℝ) (hf : ContDiff ℝ 4 f)
    (hleft : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f (-B) = 0)
    (hright : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f B = 0) :
    (∫ t in -B..B, poleSquaredGreenKernel t * poleSquaredDifferentialOperator f t) = f 0 := by
  have hp : ContDiff ℝ 4 positiveGreenBranch := by
    unfold positiveGreenBranch poleMode
    fun_prop
  have hn : ContDiff ℝ 4 negativeGreenBranch := by
    unfold negativeGreenBranch poleMode
    fun_prop
  have hpos := homogeneous_branch_green_identity positiveGreenBranch f hp hf
    (fun t ↦ (green_branches_homogeneous t).1) 0 B
  have hneg := homogeneous_branch_green_identity negativeGreenBranch f hn hf
    (fun t ↦ (green_branches_homogeneous t).2) (-B) 0
  rw [boundary_flux_eq_zero_of_jets positiveGreenBranch f B hright] at hpos
  rw [boundary_flux_eq_zero_of_jets negativeGreenBranch f (-B) hleft] at hneg
  have hic : Continuous (fun t ↦ poleSquaredGreenKernel t *
      poleSquaredDifferentialOperator f t) := by
    apply Continuous.mul _ (pole_squared_operator_continuous f hf)
    unfold poleSquaredGreenKernel
    fun_prop
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (μ := volume) (a := -B) (b := 0) (c := B)
    (hic.intervalIntegrable _ _) (hic.intervalIntegrable _ _)
  have hplus : (∫ t in 0..B, poleSquaredGreenKernel t *
      poleSquaredDifferentialOperator f t) =
      ∫ t in 0..B, positiveGreenBranch t * poleSquaredDifferentialOperator f t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [pole_squared_green_positive_branch t ((uIcc_of_le hB.le ▸ ht).1)]
  have hminus : (∫ t in -B..0, poleSquaredGreenKernel t *
      poleSquaredDifferentialOperator f t) =
      ∫ t in -B..0, negativeGreenBranch t * poleSquaredDifferentialOperator f t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [pole_squared_green_negative_branch t ((uIcc_of_le (by linarith : -B ≤ 0) ▸ ht).2)]
  rw [hplus, hminus, hpos, hneg] at hsplit
  have hj : boundaryFluxFunction negativeGreenBranch f 0 -
      boundaryFluxFunction positiveGreenBranch f 0 = f 0 := by
    rcases green_branch_jets_at_zero with ⟨hp0, hn0, hp1, hn1, hp2, hn2, hp3, hn3⟩
    unfold boundaryFluxFunction
    simp only [iteratedDeriv_one, hp0, hn0, hp1, hn1, hp2, hn2, hp3, hn3]
    exact green_boundary_flux_jump _ _ _ _
  linarith

/-- Ordinary iterated derivatives cannot enlarge the topological support. -/
theorem tsupport_iterated_deriv_subset (f : ℝ → ℝ) (k : ℕ) :
    tsupport (iteratedDeriv k f) ⊆ tsupport f := by
  induction k with
  | zero => simp only [iteratedDeriv_zero, subset_refl]
  | succ k ih =>
    rw [iteratedDeriv_succ]
    exact tsupport_deriv_subset.trans ih

/-- Outside the source support every ordinary jet vanishes. -/
theorem iterated_deriv_eq_zero_of_not_mem_tsupport (f : ℝ → ℝ) (k : ℕ) (t : ℝ)
    (ht : t ∉ tsupport f) : iteratedDeriv k f t = 0 := by
  apply image_eq_zero_of_notMem_tsupport
  exact fun h ↦ ht (tsupport_iterated_deriv_subset f k h)

/-- Compact `C⁴` inputs give genuine Green-operator pairing integrability. -/
theorem pole_squared_green_operator_integrable (f : ℝ → ℝ)
    (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    Integrable (fun t ↦ poleSquaredGreenKernel t * poleSquaredDifferentialOperator f t) := by
  have hcomp : HasCompactSupport (fun t ↦ poleSquaredGreenKernel t *
      poleSquaredDifferentialOperator f t) := by
    apply hcf.mono'
    intro t ht
    by_contra h
    have hz (k : ℕ) := iterated_deriv_eq_zero_of_not_mem_tsupport f k t h
    have h0 : f t = 0 := by simpa using hz 0
    have hp : poleSquaredDifferentialOperator f t = 0 := by
      simp [poleSquaredDifferentialOperator, hz 4, hz 2, h0]
    simp [Function.mem_support, hp] at ht
  have hc : Continuous poleSquaredGreenKernel := by unfold poleSquaredGreenKernel; fun_prop
  exact (hc.mul (pole_squared_operator_continuous f hf)).integrable_of_hasCompactSupport hcomp

/-- Compact support converts the finite Green jump calculation into the exact full-line identity. -/
theorem pole_squared_green_full_weak_identity (f : ℝ → ℝ)
    (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    (∫ t, poleSquaredGreenKernel t * poleSquaredDifferentialOperator f t) = f 0 := by
  obtain ⟨B, hB, hbound⟩ := hcf.isCompact.isBounded.exists_pos_norm_lt
  have hnonmem (t : ℝ) (ht : B ≤ |t|) : t ∉ tsupport f := by
    intro h
    have hb := hbound t h
    rw [Real.norm_eq_abs] at hb
    linarith
  have hz (k : ℕ) (t : ℝ) (ht : B ≤ |t|) : iteratedDeriv k f t = 0 :=
    iterated_deriv_eq_zero_of_not_mem_tsupport f k t (hnonmem t ht)
  have hleft : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f (-B) = 0 := by
    intro k _
    apply hz k (-B)
    rw [abs_neg, abs_of_pos hB]
  have hright : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f B = 0 := by
    intro k _
    apply hz k B
    rw [abs_of_pos hB]
  have hsupport (t : ℝ) (ht : t ∉ Icc (-B) B) :
      poleSquaredGreenKernel t * poleSquaredDifferentialOperator f t = 0 := by
    have ha : B ≤ |t| := by
      by_contra h
      exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h)))
    have h0 : f t = 0 := by simpa using hz 0 t ha
    simp [poleSquaredDifferentialOperator, hz 4 t ha, hz 2 t ha, h0]
  calc
    _ = ∫ t, (Icc (-B) B).indicator
        (fun t ↦ poleSquaredGreenKernel t * poleSquaredDifferentialOperator f t) t := by
      apply integral_congr_ae
      filter_upwards [] with t
      by_cases ht : t ∈ Icc (-B) B
      · rw [indicator_of_mem ht]
      · rw [indicator_of_notMem ht, hsupport t ht]
    _ = ∫ t in -B..B, poleSquaredGreenKernel t * poleSquaredDifferentialOperator f t :=
      zeroExtension_integral _ (-B) B (by linarith)
    _ = f 0 := pole_squared_green_weak_identity B hB f hf hleft hright

/-- The even fourth-order operator commutes exactly with translated reflection. -/
theorem pole_squared_operator_const_sub (f : ℝ → ℝ) (x t : ℝ) :
    poleSquaredDifferentialOperator (fun s ↦ f (x - s)) t =
      poleSquaredDifferentialOperator f (x - t) := by
  unfold poleSquaredDifferentialOperator
  rw [iteratedDeriv_comp_const_sub, iteratedDeriv_comp_const_sub]
  norm_num

/-- The actual Green kernel is a convolution right inverse on compact `C⁴` tests. -/
theorem pole_squared_green_convolution_identity (f : ℝ → ℝ)
    (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) (x : ℝ) :
    (poleSquaredGreenKernel ⋆ poleSquaredDifferentialOperator f) x = f x := by
  have hg : ContDiff ℝ 4 (fun t ↦ f (x - t)) := hf.comp (contDiff_const.sub contDiff_id)
  have hcg : HasCompactSupport (fun t ↦ f (x - t)) :=
    hcf.comp_homeomorph (Homeomorph.subLeft x)
  have hi := pole_squared_green_full_weak_identity (fun t ↦ f (x - t)) hg hcg
  rw [convolution_lsmul]
  simp only [smul_eq_mul]
  simpa only [pole_squared_operator_const_sub, sub_zero] using hi

/-- The actual physical base has compact support as a convolution of two compact source bumps. -/
theorem base_correlation_has_compact_support (A : ℝ) (hA : 0 < A) :
    HasCompactSupport (baseCorrelation A) := by
  have hcf := GeneralizedPoleMoments.scaled_bump_has_compact_support A hA
  have hcr : HasCompactSupport (fun x ↦ scaledBump A (-x)) :=
    hcf.comp_homeomorph (Homeomorph.neg ℝ)
  have heq : baseCorrelation A = scaledBump A ⋆ (fun x ↦ scaledBump A (-x)) := by
    funext t
    rw [base_correlation_eq_scaled_bump_correlation A t hA, convolution_lsmul]
    apply integral_congr_ae
    filter_upwards [] with x
    simp [neg_sub]
  rw [heq]
  exact hcf.convolution (ContinuousLinearMap.lsmul ℝ ℝ) hcr

/-- The actual source Green pairing is genuinely integrable. -/
theorem green_source_correlation_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t ↦ poleSquaredGreenKernel t *
      sourceCorrelation explicitSecondDerivative A t) := by
  have hc : Continuous poleSquaredGreenKernel := by unfold poleSquaredGreenKernel; fun_prop
  have hcor := (sourceCorrelation_contDiff A (by linarith)).continuous
  exact (hc.mul hcor).integrable_of_hasCompactSupport
      (sourceCorrelation_hasCompactSupport A (by linarith)).mul_left

/-- The actual correlation satisfies its normalized full-line Green identity. -/
theorem green_source_correlation_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t, poleSquaredGreenKernel t * sourceCorrelation explicitSecondDerivative A t) =
      baseCorrelation A 0 / sourceNormalization A := by
  simp_rw [source_correlation_eq_pole_operator_sq A _ hA, ← mul_div_assoc]
  rw [integral_div, pole_squared_green_full_weak_identity (baseCorrelation A)
    (base_correlation_cont_diff_four A) (base_correlation_has_compact_support A (by linarith))]

/-- The source normalization restores the actual base observation at zero. -/
theorem source_normalization_mul_green_correlation_integral (A : ℝ) (hA : 1 ≤ A) :
    sourceNormalization A *
      (∫ t, poleSquaredGreenKernel t * sourceCorrelation explicitSecondDerivative A t) =
        baseCorrelation A 0 := by
  rw [green_source_correlation_integral A hA]
  field_simp [ne_of_gt (source_normalization_pos A hA)]

/-- Every translated source Green convolution has a genuinely integrable defining product. -/
theorem green_source_correlation_product_integrable (A x : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t ↦ poleSquaredGreenKernel t *
      sourceCorrelation explicitSecondDerivative A (x - t)) := by
  have hc : Continuous poleSquaredGreenKernel := by unfold poleSquaredGreenKernel; fun_prop
  have hcor := (sourceCorrelation_contDiff A (by linarith)).continuous
  have hcomp : HasCompactSupport
      (fun t ↦ sourceCorrelation explicitSecondDerivative A (x - t)) :=
    (sourceCorrelation_hasCompactSupport A (by linarith)).comp_homeomorph (Homeomorph.subLeft x)
  have hcont : Continuous (fun t ↦ poleSquaredGreenKernel t *
      sourceCorrelation explicitSecondDerivative A (x - t)) :=
    hc.mul (hcor.comp (continuous_const.sub continuous_id))
  exact hcont.integrable_of_hasCompactSupport hcomp.mul_left

/-- Convolution with the actual Green kernel exactly recovers the normalized positive base. -/
theorem green_source_correlation_convolution (A x : ℝ) (hA : 1 ≤ A) :
    (poleSquaredGreenKernel ⋆ sourceCorrelation explicitSecondDerivative A) x =
      baseCorrelation A x / sourceNormalization A := by
  have hi := pole_squared_green_convolution_identity (baseCorrelation A)
    (base_correlation_cont_diff_four A) (base_correlation_has_compact_support A (by linarith)) x
  rw [convolution_lsmul] at hi ⊢
  simp only [smul_eq_mul] at hi ⊢
  simp_rw [source_correlation_eq_pole_operator_sq A _ hA, ← mul_div_assoc]
  rw [integral_div, hi]

end

end FormalResearch.RiemannHypothesis.PoleGreenWeakIdentity
