/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.DiskBlaschkeFactors
import Mathlib.Analysis.Complex.BorelCaratheodory
import Mathlib.Analysis.Complex.Liouville
import Mathlib.Analysis.SpecialFunctions.ExpDeriv

set_option autoImplicit false

/-!
# Bound the analytic contribution, not only the principal sum

A normalized analytic logarithm with an all-point real-part ceiling has a
DERIVED derivative bound on a smaller disk. The finite-factor application
requires an actual neighborhood factorization of the same function. This
file does not construct that factorization for zeta; its supplier remains
explicit. No freely assigned logarithmic-derivative bound is an input.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.NormalizedLogDerivativeBound

open Set Metric Filter
open scoped Topology BigOperators ComplexConjugate
open DiskBlaschkeFactors

noncomputable section

/-- Borel-Caratheodory on radii 11/4 and 5/2, with the center normalized to zero. -/
theorem norm_log_le_twenty (L : ℂ → ℂ) (H : ℝ) (hH : 0 < H)
    (hL : DifferentiableOn ℂ L (ball 0 (11 / 4 : ℝ))) (h0 : L 0 = 0)
    (hreal : ∀ z ∈ ball 0 (11 / 4 : ℝ), (L z).re ≤ H)
    (z : ℂ) (hz : ‖z‖ ≤ 5 / 2) : ‖L z‖ ≤ 20 * H := by
  have hm : z ∈ ball (0 : ℂ) (11 / 4 : ℝ) := by
    rw [Metric.mem_ball, dist_zero_right]
    linarith
  have hb := Complex.borelCaratheodory_zero hH hL hreal (by norm_num) hm h0
  apply hb.trans
  apply (div_le_iff₀ (by linarith : 0 < (11 / 4 : ℝ) - ‖z‖)).mpr
  nlinarith [mul_le_mul_of_nonneg_left hz hH.le]

/-- A radius-1/4 Cauchy circle around the radius-9/4 core stays in radius 5/2. -/
theorem small_circle_norm_le (z w : ℂ) (hz : ‖z‖ ≤ 9 / 4)
    (hw : w ∈ closedBall z (1 / 4 : ℝ)) : ‖w‖ ≤ 5 / 2 := by
  have hd : ‖w - z‖ ≤ (1 / 4 : ℝ) := by simpa [Metric.mem_closedBall, dist_eq_norm] using hw
  have ht := norm_le_norm_sub_add w z
  linarith

/-- The regular logarithmic derivative is controlled by a source modulus ceiling. -/
theorem norm_deriv_log_le_eighty (L : ℂ → ℂ) (H : ℝ) (hH : 0 < H)
    (hL : DifferentiableOn ℂ L (ball 0 (11 / 4 : ℝ))) (h0 : L 0 = 0)
    (hreal : ∀ z ∈ ball 0 (11 / 4 : ℝ), (L z).re ≤ H)
    (z : ℂ) (hz : ‖z‖ ≤ 9 / 4) : ‖deriv L z‖ ≤ 80 * H := by
  have hsub : closedBall z (1 / 4 : ℝ) ⊆ ball (0 : ℂ) (11 / 4 : ℝ) := by
    intro w hw
    rw [Metric.mem_ball, dist_zero_right]
    linarith [small_circle_norm_le z w hz hw]
  have hcont : DiffContOnCl ℂ L (ball z (1 / 4 : ℝ)) :=
    DiffContOnCl.mk_ball (hL.mono (ball_subset_closedBall.trans hsub))
      (hL.continuousOn.mono hsub)
  have hc := Complex.norm_deriv_le_of_forall_mem_sphere_norm_le
    (by norm_num : (0 : ℝ) < 1 / 4) hcont
    (fun w hw => norm_log_le_twenty L H hH hL h0 hreal w
      (small_circle_norm_le z w hz (sphere_subset_closedBall hw)))
  convert hc using 1; ring

/-- Differentiating the exponential uses a neighborhood function, not a sampled value. -/
theorem logDeriv_exp (L : ℂ → ℂ) (z : ℂ) (hL : DifferentiableAt ℂ L z) :
    logDeriv (fun w => Complex.exp (L w)) z = deriv L z := by
  rw [logDeriv_apply, hL.hasDerivAt.cexp.deriv]
  field_simp [Complex.exp_ne_zero]

/-- Exact finite factorization, retaining natural multiplicities and the analytic factor. -/
theorem logDeriv_of_factorization {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (L f : ℂ → ℂ) (C z : ℂ) (hC : C ≠ 0) (hL : DifferentiableAt ℂ L z)
    (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4) (hz : ‖z‖ ≤ 9 / 4)
    (hne : ∀ i ∈ S, z ≠ a i)
    (hfactor : f =ᶠ[𝓝 z] fun w => C *
      (Complex.exp (L w) * ∏ i ∈ S, (factor 3 (a i) w) ^ m i)) :
    logDeriv f z = deriv L z + ∑ i ∈ S, (m i : ℂ) * logDeriv (factor 3 (a i)) z := by
  classical
  let P : ℂ → ℂ := fun w => ∏ i ∈ S, (factor 3 (a i) w) ^ m i
  have hden (i : ι) (hi : i ∈ S) : (3 : ℂ) ^ 2 - conj (a i) * z ≠ 0 :=
    denominator_ne_zero 3 (by norm_num) (a i) z (by linarith [ha i hi]) (by linarith)
  have hfac (i : ι) (hi : i ∈ S) : factor 3 (a i) z ≠ 0 :=
    factor_ne_zero 3 (by norm_num) (a i) z (hne i hi) (hden i hi)
  have hdf (i : ι) (hi : i ∈ S) : DifferentiableAt ℂ (factor 3 (a i)) z :=
    differentiableAt_factor 3 (a i) z (hden i hi)
  have hP : P z ≠ 0 := Finset.prod_ne_zero_iff.mpr
    (fun i hi => pow_ne_zero _ (hfac i hi))
  have hdP : DifferentiableAt ℂ P z :=
    DifferentiableAt.fun_finsetProd (fun i hi => (hdf i hi).pow (m i))
  have he := (logDeriv_congr_nhds hfactor).eq_of_nhds
  rw [he, logDeriv_const_mul z C hC]
  change logDeriv (fun w => Complex.exp (L w) * P w) z = _
  rw [logDeriv_mul (f := fun w => Complex.exp (L w)) (g := P) z (Complex.exp_ne_zero _) hP hL.cexp hdP, logDeriv_exp L z hL]
  congr 1
  dsimp only [P]
  rw [logDeriv_prod (s := S) (x := z) (f := fun i w => (factor 3 (a i) w) ^ m i) (fun i hi => pow_ne_zero _ (hfac i hi))
    (fun i hi => (hdf i hi).pow (m i))]
  exact Finset.sum_congr rfl (fun i hi => logDeriv_fun_pow (hdf i hi) (m i))

/-- The bound includes BOTH the pole and disk-normalization terms of every factor.
Constructing hfactor and the normalized analytic logarithm for zeta is NOT proved here. -/
theorem norm_logDeriv_of_factorization {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (L f : ℂ → ℂ) (C z : ℂ) (H δ : ℝ) (hC : C ≠ 0) (hH : 0 < H) (hδ : 0 < δ)
    (hL : DifferentiableOn ℂ L (ball 0 (11 / 4 : ℝ))) (h0 : L 0 = 0)
    (hreal : ∀ w ∈ ball 0 (11 / 4 : ℝ), (L w).re ≤ H)
    (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4) (hz : ‖z‖ ≤ 9 / 4)
    (hsep : ∀ i ∈ S, δ ≤ ‖z - a i‖)
    (hfactor : f =ᶠ[𝓝 z] fun w => C *
      (Complex.exp (L w) * ∏ i ∈ S, (factor 3 (a i) w) ^ m i)) :
    ‖logDeriv f z‖ ≤ 80 * H + (∑ i ∈ S, (m i : ℝ)) * (1 / δ + 1) := by
  have hmem : z ∈ ball (0 : ℂ) (11 / 4 : ℝ) := by
    rw [Metric.mem_ball, dist_zero_right]
    linarith
  have hdiff := hL.differentiableAt (isOpen_ball.mem_nhds hmem)
  have hne (i : ι) (hi : i ∈ S) : z ≠ a i := by
    intro he
    have hh := hsep i hi
    rw [he, sub_self, norm_zero] at hh
    linarith
  rw [logDeriv_of_factorization S a m L f C z hC hdiff ha hz hne hfactor]
  calc
    _ ≤ ‖deriv L z‖ + ‖∑ i ∈ S, (m i : ℂ) * logDeriv (factor 3 (a i)) z‖ := norm_add_le _ _
    _ ≤ 80 * H + ∑ i ∈ S, ‖(m i : ℂ) * logDeriv (factor 3 (a i)) z‖ :=
      add_le_add (norm_deriv_log_le_eighty L H hH hL h0 hreal z hz) (norm_sum_le _ _)
    _ ≤ 80 * H + ∑ i ∈ S, (m i : ℝ) * (1 / δ + 1) := by
      apply add_le_add le_rfl
      apply Finset.sum_le_sum
      intro i hi
      rw [norm_mul, Complex.norm_natCast]
      exact mul_le_mul_of_nonneg_left
        (norm_logDeriv_factor_le (a i) z δ hδ (ha i hi) hz (hsep i hi)) (Nat.cast_nonneg _)
    _ = _ := by rw [Finset.sum_mul]

end
end GRWTSK.Analysis.ComplexAnalysis.NormalizedLogDerivativeBound
