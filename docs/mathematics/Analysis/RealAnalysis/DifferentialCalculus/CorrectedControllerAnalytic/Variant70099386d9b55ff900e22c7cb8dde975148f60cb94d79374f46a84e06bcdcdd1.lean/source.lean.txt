import FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpAdapter

/-! Global analytic admission of the corrected quotient, before Hardy norm estimates. -/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic
open Set
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceBumpMoments SourceBumpGlobal SourceBumpAdapter MobiusSourceFilterQuotient
open MobiusPoleNumerator FixedSourceFilter
noncomputable section

/-- The actual source filter with its simple positive polynomial zero removed globally. -/
def reducedW (z : ℂ) : ℂ :=
  Complex.exp (-z) * (z + 1 / 2) * bumpMoment 0 z /
    (Real.sqrt (45056 / 1105 : ℝ) : ℂ)

/-- The global factorization agrees with the unchanged source at every complex parameter. -/
theorem W_factor (z : ℂ) : W z = (z - 1 / 2) * reducedW z := by
  rw [W_eq_bumpMoment]
  unfold reducedW
  ring

/-- The factor remaining after removal is entire. -/
theorem reducedW_differentiable : Differentiable ℂ reducedW := by
  intro z
  unfold reducedW
  have hb := (bumpMoment_hasDerivAt 0 z).differentiableAt
  fun_prop

/-- The removed factor has no zero anywhere in the open right half-plane. -/
theorem reducedW_ne_zero (z : ℂ) (hz : 0 < z.re) : reducedW z ≠ 0 := by
  have hb : bumpMoment 0 z ≠ 0 := by
    intro h
    have := bumpMoment_zero_re z h
    linarith
  have hp : z + (1 / 2 : ℂ) ≠ 0 := by
    intro h
    have := congrArg Complex.re h
    norm_num at this
    linarith
  have hc : (Real.sqrt (45056 / 1105 : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (Real.sqrt_pos.2 (by norm_num : (0 : ℝ) < 45056 / 1105)))
  exact div_ne_zero (mul_ne_zero (mul_ne_zero (Complex.exp_ne_zero _) hp) hb) hc

/-- The only zero of the actual source filter in the right half-plane is its prescribed zero. -/
theorem W_zero_iff (z : ℂ) (hz : 0 < z.re) : W z = 0 ↔ z = 1 / 2 := by
  rw [W_factor, mul_eq_zero]
  simp [reducedW_ne_zero z hz, sub_eq_zero]

/-- The explicit global factor retains the already checked derivative at the removed point. -/
theorem reducedW_half : reducedW (1 / 2) = deriv W (1 / 2) := by
  have hd := (((hasDerivAt_id (1 / 2 : ℂ)).sub_const (1 / 2)).mul
    (reducedW_differentiable (1 / 2)).hasDerivAt)
  have he : (fun z : ℂ => (z - 1 / 2) * reducedW z) = W := by
    funext z
    exact (W_factor z).symm
  have hd' : HasDerivAt (fun z : ℂ => (z - 1 / 2) * reducedW z)
      (reducedW (1 / 2)) (1 / 2) := by simpa using! hd
  rw [he] at hd'
  exact hd'.deriv.symm

/-- The global quotient removes the common zero before any shift or smoothing is composed. -/
def quotient (X : ℕ) (z : ℂ) : ℂ := correctedQuotient X z / reducedW z

/-- The global extension is exactly the original quotient away from one half. -/
theorem quotient_of_ne (X : ℕ) (z : ℂ) (hz : z ≠ 1 / 2) :
    quotient X z = correctedNumerator X z / W z := by
  rw [quotient, correctedQuotient_of_ne X z hz, W_factor]
  rw [div_div]

/-- Multiplication by the unchanged source recovers the complete numerator, including its zero. -/
theorem W_mul_quotient (X : ℕ) (z : ℂ) (hz : 0 < z.re) :
    W z * quotient X z = correctedNumerator X z := by
  rw [W_factor, quotient, correctedNumerator_factor X z]
  field_simp [reducedW_ne_zero z hz]

/-- The global extension keeps the signed logarithmic value divided by the actual source slope. -/
theorem quotient_half (X : ℕ) (hX : 1 ≤ X) :
    quotient X (1 / 2) = (logNormalization X : ℂ) / deriv W (1 / 2) := by
  rw [quotient, correctedQuotient_half X hX, reducedW_half]

/-- The corrected quotient is holomorphic throughout the open right half-plane. -/
theorem quotient_differentiableAt (X : ℕ) (z : ℂ) (hz : 0 < z.re) :
    DifferentiableAt ℂ (quotient X) z :=
  (correctedQuotient_differentiable X z).div
    (reducedW_differentiable z) (reducedW_ne_zero z hz)

/-- The complete proposed shifted and smoothed analytic controller candidate. -/
def candidate (X : ℕ) (ε h : ℝ) (z : ℂ) : ℂ :=
  quotient X (z + ε) * (1 + (h : ℂ) * (z + ε))⁻¹ ^ 6 / (1 + z + ε)

/-- Every remaining denominator is nonzero on the shifted closed right half-plane. -/
theorem candidate_denominators_ne_zero (ε h : ℝ) (hε : 0 < ε) (hh : 0 ≤ h)
    (z : ℂ) (hz : 0 ≤ z.re) :
    reducedW (z + ε) ≠ 0 ∧ 1 + (h : ℂ) * (z + ε) ≠ 0 ∧ 1 + z + (ε : ℂ) ≠ 0 := by
  have hr : 0 < (z + (ε : ℂ)).re := by simp only [Complex.add_re, Complex.ofReal_re]; linarith
  refine ⟨reducedW_ne_zero _ hr, ?_, ?_⟩
  · intro he
    have := congrArg Complex.re he
    norm_num at this
    nlinarith [mul_nonneg hh (le_of_lt hr)]
  · intro he
    have := congrArg Complex.re he
    norm_num at this
    linarith

/-- Global complex differentiability includes every boundary parameter after a positive shift. -/
theorem candidate_differentiableAt (X : ℕ) (ε h : ℝ) (hε : 0 < ε) (hh : 0 ≤ h)
    (z : ℂ) (hz : 0 ≤ z.re) : DifferentiableAt ℂ (candidate X ε h) z := by
  obtain ⟨_, hd, hp⟩ := candidate_denominators_ne_zero ε h hε hh z hz
  have hq := (quotient_differentiableAt X (z + ε) (by
    simp only [Complex.add_re, Complex.ofReal_re]; linarith)).comp z
      ((differentiableAt_id).add_const (ε : ℂ))
  unfold candidate
  have hs : DifferentiableAt ℂ (fun w : ℂ => (1 + (h : ℂ) * (w + ε))⁻¹ ^ 6) z :=
    (((differentiableAt_const (1 : ℂ)).add
      ((differentiableAt_const (h : ℂ)).mul
        ((differentiableAt_id).add_const (ε : ℂ)))).inv hd).pow 6
  exact (hq.mul hs).div (by fun_prop) hp

end
end FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic
