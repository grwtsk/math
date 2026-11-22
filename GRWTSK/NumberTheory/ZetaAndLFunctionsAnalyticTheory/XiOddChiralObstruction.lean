/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CompletedQuotientSource
<<<<<<< HEAD
=======
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CriticalStripRealAxisMellin
>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b

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

<<<<<<< HEAD
=======

/-- At a nonzero xi value, pointwise convergence at opposite arguments
forces the normalizer's opposite-point ratio to tend to minus one. -/
theorem normalizer_ratio_tendsto_neg_one {d : ℕ → ℕ}
    (odd : ∀ n, Odd (d n))
    (H J : (n : ℕ) → Matrix (Fin (d n)) (Fin (d n)) ℂ)
    (invertible : ∀ n, (J n).det ≠ 0)
    (chiral : ∀ n, J n * H n = -(H n * J n)) (u : ℕ → ℂ → ℂ)
    (z : ℂ) (nonzero : spectralSource z ≠ 0)
    (atPos : Tendsto (fun n => u n z * pencil (H n) z) atTop (𝓝 (spectralSource z)))
    (atNeg : Tendsto (fun n => u n (-z) * pencil (H n) (-z)) atTop
      (𝓝 (spectralSource (-z)))) :
    Tendsto (fun n => u n (-z) / u n z) atTop (𝓝 (-1 : ℂ)) := by
  rw [spectralSource_even] at atNeg
  have hquot := (atNeg.div atPos nonzero).neg
  rw [div_self nonzero] at hquot
  refine hquot.congr' ?_
  filter_upwards [atPos.eventually_ne nonzero] with n hn
  have hp : pencil (H n) z ≠ 0 := (mul_ne_zero_iff.mp hn).2
  change -(u n (-z) * pencil (H n) (-z) / (u n z * pencil (H n) z)) =
    u n (-z) / u n z
  rw [pencil_neg_of_chiral (odd n) (H n) (J n) (invertible n) (chiral n),
    mul_neg, neg_div, neg_neg, mul_div_mul_right _ _ hp]

/-- The strip limit still fails when evenness is relaxed to asymptotic
agreement of the opposite-point normalizer ratios. -/
theorem no_odd_chiral_asymptotically_even_strip_limit {d : ℕ → ℕ}
    (odd : ∀ n, Odd (d n))
    (H J : (n : ℕ) → Matrix (Fin (d n)) (Fin (d n)) ℂ)
    (invertible : ∀ n, (J n).det ≠ 0)
    (chiral : ∀ n, J n * H n = -(H n * J n)) (u : ℕ → ℂ → ℂ)
    (ratios : ∀ z ∈ spectralStrip,
      Tendsto (fun n => u n (-z) / u n z) atTop (𝓝 (1 : ℂ))) :
    ¬ ∀ z ∈ spectralStrip,
      Tendsto (fun n => u n z * pencil (H n) z) atTop (𝓝 (spectralSource z)) := by
  intro limit
  apply spectralSource_not_zero_on_strip
  intro z hz
  by_contra nonzero
  have negMem : -z ∈ spectralStrip := by simpa [spectralStrip] using hz
  have h := normalizer_ratio_tendsto_neg_one odd H J invertible chiral u z
    nonzero (limit z hz) (limit (-z) negMem)
  have conflict := tendsto_nhds_unique h (ratios z hz)
  norm_num at conflict


/-- The centered parameter zero represents the actual real zeta point
one half. The real-axis Mellin sign excludes an origin zero of xi. -/
theorem spectralSource_zero_ne_zero : spectralSource 0 ≠ 0 := by
  intro zero
  have hx : xi (1 / 2 : ℂ) = 0 := by
    simpa only [spectralSource, mul_zero, sub_zero] using zero
  rw [xi_eq_completed _ (by norm_num) (by norm_num)] at hx
  have factor : (1 / 2 : ℂ) * (1 / 2) * (1 / 2 - 1) ≠ 0 := by norm_num
  have completed := (mul_eq_zero.mp hx).resolve_left factor
  have hz : riemannZeta (1 / 2 : ℂ) = 0 := by
    rw [riemannZeta_def_of_ne_zero (by norm_num : (1 / 2 : ℂ) ≠ 0), completed, zero_div]
  have negative :=
    GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.riemannZeta_re_neg_on_real_critical_interval
      (s := (1 / 2 : ℝ)) (by norm_num) (by norm_num)
  have realZero : (riemannZeta (1 / 2 : ℂ)).re = 0 := by rw [hz, Complex.zero_re]
  have same : (((1 / 2 : ℝ) : ℂ)) = (1 / 2 : ℂ) := by norm_num
  rw [same, realZero] at negative
  exact (lt_irrefl _) negative

/-- An odd chiral pencil has a strictly positive central error for every
finite complex normalization value, with no parity requirement on it. -/
theorem center_error_of_odd_chiral {d : ℕ} (odd : Odd d)
    (H J : Matrix (Fin d) (Fin d) ℂ) (invertible : J.det ≠ 0)
    (chiral : J * H = -(H * J)) (value : ℂ) :
    ‖value * pencil H 0 - spectralSource 0‖ = ‖spectralSource 0‖ ∧
      0 < ‖spectralSource 0‖ := by
  refine ⟨?_, norm_pos_iff.mpr spectralSource_zero_ne_zero⟩
  rw [pencil_zero_of_chiral odd H J invertible chiral, mul_zero, zero_sub, norm_neg]

/-- Pointwise convergence at the center already excludes recurrent odd
chiral dimensions when the normalization is finite there. -/
theorem eventually_not_odd_of_center_limit {d : ℕ → ℕ}
    (H J : (n : ℕ) → Matrix (Fin (d n)) (Fin (d n)) ℂ)
    (chiral : ∀ n, Odd (d n) → (J n).det ≠ 0 ∧ J n * H n = -(H n * J n))
    (u : ℕ → ℂ → ℂ)
    (limit : Tendsto (fun n => u n 0 * pencil (H n) 0) atTop (𝓝 (spectralSource 0))) :
    ∀ᶠ n in atTop, ¬ Odd (d n) := by
  filter_upwards [limit.eventually_ne spectralSource_zero_ne_zero] with n nonzero odd
  have laws := chiral n odd
  exact nonzero (by rw [pencil_zero_of_chiral odd (H n) (J n) laws.1 laws.2, mul_zero])


/-- Divide the characteristic polynomial by one formal center factor. -/
def deflatedPencil {d : ℕ} (H : Matrix (Fin d) (Fin d) ℂ) : Polynomial ℂ :=
  H.charpoly.divByMonic Polynomial.X

theorem charpoly_eval_eq_pencil {d : ℕ} (H : Matrix (Fin d) (Fin d) ℂ) (z : ℂ) :
    H.charpoly.eval z = pencil H z := by
  rw [Matrix.eval_charpoly, pencil, Matrix.scalar_apply, Matrix.smul_one_eq_diagonal]

/-- When the origin is a root the formal quotient gives exact deflation,
including the polynomial value at the removed root. -/
theorem X_mul_deflatedPencil {d : ℕ} (H : Matrix (Fin d) (Fin d) ℂ)
    (zero : pencil H 0 = 0) : Polynomial.X * deflatedPencil H = H.charpoly := by
  have root : H.charpoly.IsRoot 0 := by
    change H.charpoly.eval 0 = 0
    rw [charpoly_eval_eq_pencil, zero]
  simpa [deflatedPencil] using (Polynomial.mul_divByMonic_eq_iff_isRoot.mpr root)

theorem mul_deflatedPencil_eval {d : ℕ} (H : Matrix (Fin d) (Fin d) ℂ)
    (zero : pencil H 0 = 0) (z : ℂ) : z * (deflatedPencil H).eval z = pencil H z := by
  simpa only [Polynomial.eval_mul, Polynomial.eval_X, charpoly_eval_eq_pencil] using
    congrArg (Polynomial.eval z) (X_mul_deflatedPencil H zero)

theorem deflatedPencil_even_of_chiral {d : ℕ} (odd : Odd d)
    (H J : Matrix (Fin d) (Fin d) ℂ) (invertible : J.det ≠ 0)
    (chiral : J * H = -(H * J)) (z : ℂ) :
    (deflatedPencil H).eval (-z) = (deflatedPencil H).eval z := by
  by_cases atZero : z = 0
  · simp [atZero]
  · apply mul_left_cancel₀ (neg_ne_zero.mpr atZero)
    rw [mul_deflatedPencil_eval H (pencil_zero_of_chiral odd H J invertible chiral),
      pencil_neg_of_chiral odd H J invertible chiral, neg_mul,
      mul_deflatedPencil_eval H (pencil_zero_of_chiral odd H J invertible chiral)]

/-- One deflation leaves the center nonzero exactly for a simple origin root. -/
theorem deflatedPencil_center_ne_zero_iff {d : ℕ} (H : Matrix (Fin d) (Fin d) ℂ)
    (zero : pencil H 0 = 0) :
    (deflatedPencil H).eval 0 ≠ 0 ↔ H.charpoly.rootMultiplicity 0 = 1 := by
  have factored := X_mul_deflatedPencil H zero
  have one : 1 ≤ H.charpoly.rootMultiplicity 0 := by
    apply (Polynomial.le_rootMultiplicity_iff H.charpoly_monic.ne_zero).mpr
    simpa only [Polynomial.C_0, sub_zero, pow_one] using
      (show Polynomial.X ∣ H.charpoly from ⟨_, factored.symm⟩)
  have twice : (deflatedPencil H).eval 0 = 0 ↔ 2 ≤ H.charpoly.rootMultiplicity 0 := by
    rw [Polynomial.le_rootMultiplicity_iff H.charpoly_monic.ne_zero, Polynomial.C_0, sub_zero]
    rw [← Polynomial.coeff_zero_eq_eval_zero]
    constructor
    · intro h
      obtain ⟨rest, hr⟩ := Polynomial.X_dvd_iff.mpr h
      exact ⟨rest, by rw [← factored, hr, pow_two, mul_assoc]⟩
    · rintro ⟨rest, hr⟩
      have div : deflatedPencil H = Polynomial.X * rest := by
        apply mul_left_cancel₀ Polynomial.X_ne_zero
        rw [factored, hr, pow_two, mul_assoc]
      exact Polynomial.X_dvd_iff.mp ⟨rest, div⟩
  rw [ne_eq, twice]
  omega

/-- A successful finite normalization after one deflation must eventually
use a simple center root whenever the original pencil vanishes there. -/
theorem eventually_simple_center_of_deflated_limit {d : ℕ → ℕ}
    (H : (n : ℕ) → Matrix (Fin (d n)) (Fin (d n)) ℂ)
    (zero : ∀ n, pencil (H n) 0 = 0) (u : ℕ → ℂ → ℂ)
    (limit : Tendsto (fun n => u n 0 * (deflatedPencil (H n)).eval 0)
      atTop (𝓝 (spectralSource 0))) :
    ∀ᶠ n in atTop, (H n).charpoly.rootMultiplicity 0 = 1 := by
  filter_upwards [limit.eventually_ne spectralSource_zero_ne_zero] with n nonzero
  exact (deflatedPencil_center_ne_zero_iff (H n) (zero n)).mp
    fun h => nonzero (by rw [h, mul_zero])

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
end GRWTSK.NumberTheory.Zeta.XiOddChiralObstruction
