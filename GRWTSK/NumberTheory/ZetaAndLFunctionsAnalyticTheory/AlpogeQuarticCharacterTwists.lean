import Mathlib.Analysis.SpecialFunctions.Trigonometric.Series
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic

/-! # Relative discriminants and the quartic residual Selmer component

The companion manuscript uses an optimised regulator inequality for cyclic
quartic fields attached to quadratic host characters.
-/

namespace GRWTSK.AlpogeQuarticCharacterTwists

/-- A radial bound for a sum of hyperbolic cosines, with the exact constant
term preserved by the positive even Taylor series. -/
theorem cosh_sum_radial (x y t : ℝ) (ht : x^2+y^2=t^2) :
    Real.cosh x + Real.cosh y ≤ 1+Real.cosh t := by
  refine hasSum_le (fun n => ?_) ((Real.hasSum_cosh x).add (Real.hasSum_cosh y))
    ((hasSum_ite_eq (0 : ℕ) (1 : ℝ)).add (Real.hasSum_cosh t))
  by_cases hn : n=0
  · simp [hn]
  · simp only [hn, ite_false, zero_add, ← add_div]
    apply div_le_div_of_nonneg_right _ (by positivity)
    simp only [pow_mul, ← ht]
    exact pow_add_pow_le (sq_nonneg _) (sq_nonneg _) hn

/-- The two conjugate logarithms reduce to a single regulator parameter. -/
theorem cosh_product_radial (x y w : ℝ) (hw : 2*(x^2+y^2)=w^2) :
    (Real.exp x + Real.exp (-x)) * (Real.exp y + Real.exp (-y)) ≤
      2+Real.exp w+(Real.exp w)⁻¹ := by
  have h := cosh_sum_radial (x+y) (x-y) w (by nlinarith [hw])
  rw [Real.cosh_add, Real.cosh_sub] at h
  rw [Real.cosh_eq x, Real.cosh_eq y, Real.cosh_eq w, Real.exp_neg w] at h
  nlinarith only [h]

/-- Inverting the radial bound with a little slack gives a conductor gain. -/
theorem discriminant_gain (A Y : ℝ) (hA : 20/3 ≤ A) (hY : 1 ≤ Y)
    (h : A ≤ 2+Y+Y⁻¹) : (13/20)*A < Y := by
  have hypos : 0 < Y := by linarith
  have hi : Y⁻¹ ≤ 1 := (inv_le_one₀ hypos).mpr hY
  have hthree : 3 < Y := by linarith
  have hi' : Y⁻¹ < 1/3 := by
    rw [inv_eq_one_div]
    exact one_div_lt_one_div_of_lt (by norm_num) hthree
  linarith

/-- The discriminant and the conductor are compared with constants valid down
to f=3 and p=5. -/
theorem conductor_square_gain (A Y f p : ℝ) (hA : A^2 = f^2*p)
    (hpos : 0 < A) (hf : 3 ≤ f) (hp : 0 < p) (h : (13/20)*A < Y) :
    (5/4)*f*p < Y^2 := by
  have h₁ : ((13/20)*A)^2 < Y^2 := by gcongr
  have h₂ : (5/4)*f*p < (169/400)*(f^2*p) := by
    have hfpos : 0 < f*p := by positivity
    nlinarith only [mul_pos (show 0 < (169/400 : ℝ)*f-5/4 by linarith) hfpos]
  nlinarith only [hA,h₁,h₂]

/-- Taking logarithms transfers the gain into the archimedean class formula. -/
theorem conductor_log_gain (w c P : ℝ) (hP : 0 < P)
    (hc : Real.exp c < 5/4) (h : (5/4)*P < (Real.exp w)^2) :
    Real.log P+c < 2*w := by
  apply Real.exp_lt_exp.mp
  rw [Real.exp_add, Real.exp_log hP, two_mul, Real.exp_add]
  nlinarith only [h, mul_lt_mul_of_pos_right hc hP]

/-- The class-number formula and primitive even L-value bound leave at most
one quarter of the product of the two conductor parts. -/
theorem relative_class_bound (h P L w v : ℝ) (hP : 0 < P)
    (hv : 0 ≤ v) (hL : L < 2*w) (hb : v ≤ L/2) (heq : 4*w^2*h = P*v^2) :
    h < P/4 := by
  have hvw : v^2 < w^2 := by
    gcongr
    linarith
  have ht := mul_lt_mul_of_pos_left hvw hP
  by_contra! hh
  nlinarith only [heq, ht, mul_nonneg (sq_nonneg w) (sub_nonneg.mpr hh)]

/-- An ample conductor absorbs the Euler-factor constant in the logarithm.
Here c is 4 for the even conductor estimate and 17 for the odd one. -/
theorem conductor_constant_absorbed {A Y Q c : ℝ}
    (hQ : 0<Q) (hc : 0<c) (hbig : A-3≤Y)
    (hgap : Real.sqrt (c*Q)<A-3) : Real.log (c*Q)<2*Real.log Y := by
  have hpos : 0<c*Q := mul_pos hc hQ
  have hsq := Real.sq_sqrt hpos.le
  have lt : c*Q < Y^2 := by
    rw [← hsq]
    gcongr
    linarith
  simpa [Real.log_pow] using Real.log_lt_log hpos lt

/-- The margin furnished by Y>A-3 controls two conductor-dependent
constants. The application uses b=16 or b=44. -/
theorem refined_square_gain (A Y f Q c b : ℝ) (hb : 3 < b) (hA : b ≤ A)
    (hY : A-3 < Y) (hsq : A^2 = f*Q) (hQ : 0<Q)
    (hmargin : c*b^2 ≤ f*(b-3)^2) : c*Q < Y^2 := by
  have hbpos : 0<b := by linarith
  have apos : 0<A := by linarith
  have lhspos : 0 ≤ (b-3)*A := by positivity
  have hlin : (b-3)*A < b*Y := by
    nlinarith only [mul_lt_mul_of_pos_left hY hbpos, hA]
  have hquad : ((b-3)*A)^2 < (b*Y)^2 := by gcongr
  have hscaled := mul_le_mul_of_nonneg_right hmargin hQ.le
  rw [mul_pow,hsq] at hquad
  by_contra! bad
  nlinarith only [hquad, hscaled, mul_le_mul_of_nonneg_left bad (sq_nonneg b)]

/-- Integer form of the logarithmic comparison for a small odd conductor f.
The fraction u/v bounds the square root of f/20. -/
def oddMargin (f u v : ℕ) : Prop :=
  f*v^2 ≤ 20*u^2 ∧ u < v ∧
  17^u*(121*f)^v < (5*f)^(v-u)*(11*f-15)^(2*v)

/-- All five small conductor rows pass the integral power comparisons. -/
theorem odd_conductor_margins :
    oddMargin 3 2 5 ∧ oddMargin 7 3 5 ∧ oddMargin 11 3 4 ∧
    oddMargin 15 7 8 ∧ oddMargin 19 39 40 := by
  norm_num [oddMargin]

/-- An even relative class number below 2p is prime to the odd conductor p. -/
theorem prime_to_even_relative {p h : ℕ} (hp : p.Prime) (hodd : p≠2)
    (hh : 0<h) (he : 2∣h) (hb : h<2*p) : ¬p∣h := by
  rintro ⟨n,rfl⟩
  have hn : 0<n := by by_contra! bad; simp [show n=0 by omega] at hh
  have hn' : n<2 := by
    by_contra! bad
    have hmul := Nat.mul_le_mul_left p bad
    omega
  have hn'' : n=1 := by omega
  simp only [hn'',mul_one] at he
  exact hodd ((Nat.prime_dvd_prime_iff_eq Nat.prime_two hp).mp he).symm

end GRWTSK.AlpogeQuarticCharacterTwists
