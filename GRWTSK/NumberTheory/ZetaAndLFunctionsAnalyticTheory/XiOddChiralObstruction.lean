/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CompletedQuotientSource

/-!
# Odd-dimensional chiral determinants and the actual xi strip target

Opposite-sign conjugacy forces the odd parity of the centered spectral
determinant in odd dimension, independently of self-adjointness. An even
normalization keeps this parity. Pointwise convergence on the original
spectral strip is already impossible for this class of candidates.
-/

set_option autoImplicit false
noncomputable section

open Complex Filter Set
open scoped Topology

namespace GRWTSK.NumberTheory.Zeta.XiOddChiralObstruction

open CompletedQuotientSource

def spectralStrip : Set ℂ := {z | |z.im| < 1 / 2}

/-- The literal centered finite determinant. -/
def pencil {d : ℕ} (H : Matrix (Fin d) (Fin d) ℂ) (z : ℂ) : ℂ :=
  (z • (1 : Matrix (Fin d) (Fin d) ℂ) - H).det

/-- An invertible change of coordinates takes the operator to its negative.
Only an intertwiner and its nonzero determinant are needed. -/
theorem pencil_neg_of_chiral {d : ℕ} (odd : Odd d)
    (H J : Matrix (Fin d) (Fin d) ℂ) (invertible : J.det ≠ 0)
    (chiral : J * H = -(H * J)) (z : ℂ) :
    pencil H (-z) = -pencil H z := by
  have comm : J * (z • 1 - H) = (z • 1 + H) * J := by
    rw [mul_sub, Matrix.mul_smul, Matrix.mul_one, chiral, sub_neg_eq_add,
      add_mul, Matrix.smul_mul, Matrix.one_mul]
  have hd := congrArg Matrix.det comm
  rw [Matrix.det_mul, Matrix.det_mul, mul_comm J.det] at hd
  have eq := mul_right_cancel₀ invertible hd
  have neg : (-z) • (1 : Matrix (Fin d) (Fin d) ℂ) - H = -(z • 1 + H) := by
    rw [neg_smul, neg_add_rev, add_comm, sub_eq_add_neg]
  unfold pencil
  rw [neg, Matrix.det_neg, Fintype.card_fin, odd.neg_one_pow, ← eq, neg_one_mul]

theorem pencil_zero_of_chiral {d : ℕ} (odd : Odd d)
    (H J : Matrix (Fin d) (Fin d) ℂ) (invertible : J.det ≠ 0)
    (chiral : J * H = -(H * J)) : pencil H 0 = 0 := by
  have h := pencil_neg_of_chiral odd H J invertible chiral (0 : ℂ)
  rw [neg_zero] at h
  linear_combination h / 2

theorem spectralSource_even (z : ℂ) : spectralSource (-z) = spectralSource z := by
  unfold spectralSource
  rw [show (1 / 2 : ℂ) - I * -z = 1 - (1 / 2 - I * z) by ring, xi_one_sub]

private theorem spectralSource_not_zero_on_strip :
    ¬ ∀ z ∈ spectralStrip, spectralSource z = 0 := by
  intro zeros
  have ev : spectralSource =ᶠ[𝓝 (0 : ℂ)] (fun _ => 0) := by
    have hOpen : IsOpen spectralStrip := isOpen_lt continuous_im.abs continuous_const
    have hzero : (0 : ℂ) ∈ spectralStrip := by norm_num [spectralStrip]
    filter_upwards [hOpen.mem_nhds hzero] with z hz using zeros z hz
  have diff : Differentiable ℂ spectralSource := by
    unfold spectralSource
    exact differentiable_xi.comp (by fun_prop)
  have anchor := AnalyticOnNhd.eqOn_zero_of_preconnected_of_eventuallyEq_zero
    (fun z (_ : z ∈ univ) => diff.analyticAt z)
    isPreconnected_univ (mem_univ (0 : ℂ)) ev (mem_univ (-I / 2))
  rw [spectralSource, show (1 / 2 : ℂ) - I * (-I / 2) = 0 by
    rw [← mul_div_assoc, mul_neg, I_mul_I]; ring, xi_zero] at anchor
  norm_num at anchor

/-- At least one of the two opposite spectral parameters has error
at least the source modulus. No analytic hypothesis on the normalization is needed. -/
theorem norm_source_le_max_pair_error {d : ℕ} (odd : Odd d)
    (H J : Matrix (Fin d) (Fin d) ℂ) (invertible : J.det ≠ 0)
    (chiral : J * H = -(H * J)) (u : ℂ → ℂ) (z : ℂ) (even : u (-z) = u z) :
    ‖spectralSource z‖ ≤ max ‖u z * pencil H z - spectralSource z‖
      ‖u (-z) * pencil H (-z) - spectralSource (-z)‖ := by
  let e := u z * pencil H z - spectralSource z
  let f := u (-z) * pencil H (-z) - spectralSource (-z)
  change ‖spectralSource z‖ ≤ max ‖e‖ ‖f‖
  have sum : e + f = -(2 : ℂ) * spectralSource z := by
    dsimp [e, f]
    rw [even, pencil_neg_of_chiral odd H J invertible chiral, spectralSource_even]
    ring
  have h := norm_add_le e f
  rw [sum, norm_mul, norm_neg, Complex.norm_ofNat] at h
  have he : ‖e‖ ≤ max ‖e‖ ‖f‖ := le_max_left _ _
  have hf : ‖f‖ ≤ max ‖e‖ ‖f‖ := le_max_right _ _
  linarith

/-- At the two former poles, the regularized xi values are both one half.
This gives an explicit error floor for an odd 95-dimensional pencil. -/
theorem half_le_pole_pair_error_95 (H J : Matrix (Fin 95) (Fin 95) ℂ)
    (invertible : J.det ≠ 0) (chiral : J * H = -(H * J))
    (u : ℂ → ℂ) (even : u (-(I / 2)) = u (I / 2)) :
    (1 / 2 : ℝ) ≤ max ‖u (I / 2) * pencil H (I / 2) - 1 / 2‖
      ‖u (-(I / 2)) * pencil H (-(I / 2)) - 1 / 2‖ := by
  have anchor : spectralSource (I / 2) = (1 / 2 : ℂ) := by
    unfold spectralSource
    rw [show (1 / 2 : ℂ) - I * (I / 2) = 1 by
      rw [← mul_div_assoc, I_mul_I]
      ring, xi_one]
  have h := norm_source_le_max_pair_error (by decide : Odd 95) H J invertible chiral u _ even
  rw [spectralSource_even, anchor] at h
  simpa [norm_div] using h

/-- A parity obstruction on the actual open critical strip. The even
normalizing factors are arbitrary pointwise functions. -/
theorem no_odd_chiral_pointwise_strip_limit {d : ℕ → ℕ}
    (odd : ∀ n, Odd (d n))
    (H J : (n : ℕ) → Matrix (Fin (d n)) (Fin (d n)) ℂ)
    (invertible : ∀ n, (J n).det ≠ 0)
    (chiral : ∀ n, J n * H n = -(H n * J n)) (u : ℕ → ℂ → ℂ)
    (even : ∀ n z, u n (-z) = u n z) :
    ¬ ∀ z ∈ spectralStrip,
      Tendsto (fun n => u n z * pencil (H n) z) atTop (𝓝 (spectralSource z)) := by
  intro limit
  apply spectralSource_not_zero_on_strip
  intro z hz
  have negMem : -z ∈ spectralStrip := by simpa [spectralStrip] using hz
  have hneg := limit (-z) negMem
  have hfn : (fun n => u n (-z) * pencil (H n) (-z)) =
      fun n => -(u n z * pencil (H n) z) := by
    funext n
    rw [even, pencil_neg_of_chiral (odd n) (H n) (J n) (invertible n) (chiral n), mul_neg]
  rw [hfn, spectralSource_even] at hneg
  have same := tendsto_nhds_unique hneg (limit z hz).neg
  linear_combination same / 2

end GRWTSK.NumberTheory.Zeta.XiOddChiralObstruction
