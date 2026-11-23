import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Tactic

/-! # Relative-unit estimates for the scalar octic component

These inequalities control an integral norm, the relative regulator and
the conductor-primary part of a class number in the adjacent manuscript.
-/

namespace GRWTSK.AlpogeOcticSelmerBound

/-- Two conjugates with opposite logarithms contribute at most four
times the exponential of their common absolute logarithm. -/
theorem reciprocal_pair_bound (x : ℝ) :
    (1 + Real.exp x) * (1 + Real.exp (-x)) ≤ 4 * Real.exp |x| := by
  have ha := Real.exp_le_exp.mpr (le_abs_self x)
  have hb := Real.exp_le_exp.mpr (neg_le_abs x)
  have hc : 1 ≤ Real.exp |x| := by simp
  have he : Real.exp x * Real.exp (-x) = 1 := by rw [← Real.exp_add]; simp
  nlinarith only [ha, hb, hc, he]

/-- Four reciprocal pairs give the constant 256 used in the norm estimate. -/
theorem four_pair_bound (x : Fin 4 → ℝ) :
    ∏ i, ((1 + Real.exp (x i)) * (1 + Real.exp (-(x i)))) ≤
      256 * Real.exp (∑ i, |x i|) := by
  calc
    _ ≤ ∏ i, (4 * Real.exp |x i|) := by
      apply Finset.prod_le_prod₀
      · intro i _; positivity
      · intro i _; exact reciprocal_pair_bound _
    _ = _ := by rw [Finset.prod_mul_distrib, Real.exp_sum]; norm_num

/-- The sum of absolute logarithms controls the shortest Euclidean length. -/
theorem four_log_energy (a b c d : ℝ) :
    (|a|+|b|+|c|+|d|)^2 ≤ 4*(a^2+b^2+c^2+d^2) := by
  have h : 0 ≤ (|a|-|b|)^2 + (|a|-|c|)^2 + (|a|-|d|)^2 +
      (|b|-|c|)^2 + (|b|-|d|)^2 + (|c|-|d|)^2 := by positivity
  nlinarith only [h, sq_abs a, sq_abs b, sq_abs c, sq_abs d]

/-- The norm-one sublattice has index at most two in the signed relative
lattice and the base/relative unit index is at most eight. -/
theorem regulator_from_indices (D D₁ R r I L : ℝ) (hr : 0 ≤ r) (hR : 0 ≤ R)
    (hH : L^4 ≤ 32*D₁) (h₂ : D₁ ≤ 2*D)
    (hvol : I*R = 8*r*D) (hI : I ≤ 8) : r*L^4 ≤ 64*R := by
  calc
    r*L^4 ≤ r*(32*D₁) := mul_le_mul_of_nonneg_left hH hr
    _ ≤ r*(32*(2*D)) := by gcongr
    _ = 8*(I*R) := by rw [hvol]; ring
    _ ≤ 64*R := by nlinarith only [mul_le_mul_of_nonneg_right hI hR]

/-- The logarithmic ratio is small enough at every p≥2^30. -/
theorem conductor_log_ratio (L b c : ℝ) (hb : 0 < b)
    (hp : 30*b ≤ L) (hc : c ≤ b/2) :
    (L+c)/(L-8*b) ≤ 61/44 := by
  apply (div_le_iff₀ (by linarith : 0 < L-8*b)).mpr
  linarith

/-- A positive fourth-power bound with this ratio puts the relative class
number strictly below the square of the conductor. -/
theorem class_ratio_lt_square (H p z : ℝ) (hp : 0 < p) (hz : 0 ≤ z)
    (hz' : z ≤ 61/44) (hH : H ≤ (p^2/4)*z^4) : H < p^2 := by
  have hz4 : z^4 ≤ (61/44 : ℝ)^4 := by gcongr
  have hq : (61/44 : ℝ)^4 < 4 := by norm_num
  calc
    H ≤ (p^2/4)*z^4 := hH
    _ < (p^2/4)*4 := mul_lt_mul_of_pos_left (hz4.trans_lt hq) (by positivity)
    _ = _ := by ring

/-- The base class number is prime to the conductor. The strict square
bound on the positive relative class number limits the total valuation to one. -/
theorem octic_valuation_le_one (p h q : ℕ) (hp : p.Prime) (hh : 0 < h)
    (hq : 0 < q) (hbase : ¬ p ∣ h) (hrel : q < p^2) :
    (h*q).factorization p ≤ 1 := by
  by_contra! big
  have hdiv := (hp.pow_dvd_iff_le_factorization (Nat.mul_pos hh hq).ne').mpr
    (show 2 ≤ (h*q).factorization p by omega)
  have hc := (hp.coprime_iff_not_dvd.mpr hbase).pow_left 2
  exact Nat.not_dvd_of_pos_of_lt hq hrel (hc.dvd_of_dvd_mul_left hdiv)

/-- The leading affine residue controlling a possible second torsion layer
has at most one zero, and its constant term rules out the zero class. -/
theorem unique_exception_residue {k : Type*} [Field k] {a b x y : k} (ha : a ≠ 0)
    (hx : a+b*x=0) (hy : a+b*y=0) : x=y ∧ x≠0 := by
  have hb : b ≠ 0 := by
    rintro rfl
    simp [ha] at hx
  constructor
  · have eqn : b*x = b*y := by linear_combination hx-hy
    exact mul_left_cancel₀ hb eqn
  · rintro rfl
    simp [ha] at hx

/-- In an interval shorter than the modulus there is at most one weight
in any specified high-precision residue class. -/
theorem at_most_one_closest_index {i j a modulus : ℕ}
    (hi : i < modulus) (hj : j < modulus)
    (ha : i ≡ a [MOD modulus]) (hb : j ≡ a [MOD modulus]) : i=j :=
  (ha.trans hb.symm).eq_of_lt_of_lt hi hj

/-- The octic conductor condition bounds every prime occurring before a
given endpoint. -/
theorem prime_le_weight_window {p m B : ℕ} (hm : 0 < m) (hB : m ≤ B)
    (hp : p-1 ∣ 16*m) : p ≤ 16*B+1 := by
  have h := Nat.le_of_dvd (show 0 < 16*m by omega) hp
  omega

end GRWTSK.AlpogeOcticSelmerBound
