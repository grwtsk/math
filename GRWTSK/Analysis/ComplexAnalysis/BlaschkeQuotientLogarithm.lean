/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.NormalizedDiskLogarithm
import Mathlib.Analysis.Complex.AbsMax

set_option autoImplicit false

/-!
# Boundary-to-log transport for a holomorphic Blaschke quotient

The quotient g must already be extended holomorphically at the removed zeros.
Its construction is not assumed to follow from totalized pointwise division.
Unit boundary modulus supplies the whole-disk bound by maximum modulus; the
center contraction supplies its anchor floor. The normalized logarithm and
its real-part ceiling are then constructed, not supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.BlaschkeQuotientLogarithm

open Set Metric Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.ComplexAnalysis.DiskBlaschkeFactors
open GRWTSK.Analysis.ComplexAnalysis.NormalizedDiskLogarithm

noncomputable section

/-- Multiplicity-weighted factors retain unit modulus on the outer boundary. -/
theorem norm_product_on_boundary {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4) (z : ℂ) (hz : ‖z‖ = 3) :
    ‖∏ i ∈ S, (factor 3 (a i) z) ^ m i‖ = 1 := by
  rw [norm_prod]
  apply Finset.prod_eq_one
  intro i hi
  rw [norm_pow, norm_factor_on_boundary 3 (by norm_num) (a i) z
    (by linarith [ha i hi]) hz, one_pow]

/-- At the center the same finite product has modulus at most one. -/
theorem norm_product_at_center_le_one {ι : Type*} (S : Finset ι)
    (a : ι → ℂ) (m : ι → ℕ) (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4) :
    ‖∏ i ∈ S, (factor 3 (a i) 0) ^ m i‖ ≤ 1 := by
  simp only [norm_prod, norm_pow]
  apply Finset.prod_le_one (fun _ _ => pow_nonneg (norm_nonneg _) _)
  intro i hi
  apply pow_le_one₀ (norm_nonneg _)
  rw [factor_at_zero 3 (by norm_num), norm_div, norm_neg]
  norm_num [Complex.norm_real, Real.norm_eq_abs]
  exact (div_le_one (by norm_num : (0 : ℝ) < 3)).mpr (by linarith [ha i hi])

/-- Maximum modulus transports the original boundary ceiling to the extended quotient. -/
theorem quotient_norm_le {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (f g : ℂ → ℂ) (M : ℝ) (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4)
    (hg : DiffContOnCl ℂ g (ball 0 (3 : ℝ)))
    (hfactor : ∀ z ∈ closedBall 0 (3 : ℝ),
      f z = g z * ∏ i ∈ S, (factor 3 (a i) z) ^ m i)
    (hbound : ∀ z ∈ sphere 0 (3 : ℝ), ‖f z‖ ≤ M)
    (z : ℂ) (hz : z ∈ closedBall 0 (3 : ℝ)) : ‖g z‖ ≤ M := by
  have hboundary : ∀ w ∈ sphere 0 (3 : ℝ), ‖g w‖ ≤ M := by
    intro w hw
    have he := congrArg norm (hfactor w (sphere_subset_closedBall hw))
    rw [norm_mul, norm_product_on_boundary S a m ha w
      (by simpa [Metric.mem_sphere, dist_zero_right] using hw), mul_one] at he
    rw [← he]
    exact hbound w hw
  apply Complex.norm_le_of_forall_mem_frontier_norm_le isBounded_ball hg
    (fun w hw => hboundary w (frontier_ball_subset_sphere hw))
  simpa only [closure_ball (0 : ℂ) (by norm_num : (3 : ℝ) ≠ 0)] using hz

/-- Removing normalized interior factors cannot decrease the anchor modulus. -/
theorem quotient_center_floor {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (f g : ℂ → ℂ) (η : ℝ) (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4)
    (hfactor : f 0 = g 0 * ∏ i ∈ S, (factor 3 (a i) 0) ^ m i)
    (hfloor : η ≤ ‖f 0‖) : η ≤ ‖g 0‖ := by
  calc
    η ≤ ‖f 0‖ := hfloor
    _ = ‖g 0‖ * ‖∏ i ∈ S, (factor 3 (a i) 0) ^ m i‖ := by rw [hfactor, norm_mul]
    _ ≤ ‖g 0‖ * 1 := mul_le_mul_of_nonneg_left
      (norm_product_at_center_le_one S a m ha) (norm_nonneg _)
    _ = ‖g 0‖ := mul_one _

/-- Derive the analytic logarithm, its anchor, ceiling and factorization from a quotient.
The holomorphic quotient and its zero-freeness are still genuine input obligations. -/
theorem exists_log_from_quotient {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (f g : ℂ → ℂ) (M η : ℝ) (hM : 0 < M) (hη : 0 < η)
    (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4)
    (hg : DiffContOnCl ℂ g (ball 0 (3 : ℝ)))
    (hn : ∀ z ∈ ball 0 (11 / 4 : ℝ), g z ≠ 0)
    (hfactor : ∀ z ∈ closedBall 0 (3 : ℝ),
      f z = g z * ∏ i ∈ S, (factor 3 (a i) z) ^ m i)
    (hbound : ∀ z ∈ sphere 0 (3 : ℝ), ‖f z‖ ≤ M) (hfloor : η ≤ ‖f 0‖) :
    ∃ L : ℂ → ℂ, g 0 ≠ 0 ∧ L 0 = 0 ∧
      DifferentiableOn ℂ L (ball 0 (11 / 4 : ℝ)) ∧
      (∀ z ∈ ball 0 (11 / 4 : ℝ), HasDerivAt L (logDeriv g z) z) ∧
      (∀ z ∈ ball 0 (11 / 4 : ℝ), (L z).re ≤ Real.log (M / η)) ∧
      (∀ z ∈ ball 0 (11 / 4 : ℝ), f z = g 0 *
        (Complex.exp (L z) * ∏ i ∈ S, (factor 3 (a i) z) ^ m i)) := by
  have hsub : ball (0 : ℂ) (11 / 4 : ℝ) ⊆ ball 0 (3 : ℝ) :=
    ball_subset_ball (by norm_num)
  have hf0 : η ≤ ‖g 0‖ := quotient_center_floor S a m f g η ha
    (hfactor 0 (by norm_num)) hfloor
  have hgn : g 0 ≠ 0 := norm_ne_zero_iff.mp (hη.trans_le hf0).ne'
  obtain ⟨L, h0, hL, hd, he, hr⟩ := exists_normalized_log_bounded g (11 / 4) M η
    (by norm_num) hM hη (hg.differentiableOn.mono hsub) hn
    (fun z hz => quotient_norm_le S a m f g M ha hg hfactor hbound z
      (ball_subset_closedBall (hsub hz))) hf0
  refine ⟨L, hgn, h0, hL, hd, hr, ?_⟩
  intro z hz
  rw [hfactor z (ball_subset_closedBall (hsub hz)), he z hz]
  ring

end
end GRWTSK.Analysis.ComplexAnalysis.BlaschkeQuotientLogarithm
