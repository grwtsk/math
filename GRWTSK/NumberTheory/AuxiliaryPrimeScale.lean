import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# A uniform scale for the auxiliary-prime analytic estimates

Local source attribution: grwtsk contributors.

The consumer is the actual prime-ideal difference in `AuxiliaryPrimeIdealDifference`.
These lemmas discharge the numerical dominance step, with all analytic estimates
remaining visible as hypotheses. They do not assert a zero-free strip or an
explicit formula for any zeta function. Source correspondence and evidence are
recorded beside the analytic existence theorem.
-/

namespace GRWTSK.PrimeFieldFactoring.AnalyticScale

private theorem eighth_mul_pow {a y : ℝ} (hy : 0 ≤ y) (h : 8 * a ≤ y) (k : ℕ) :
    a * y ^ k ≤ y ^ (k + 1) / 8 := by
  calc
    _ ≤ (y / 8) * y ^ k := mul_le_mul_of_nonneg_right (by linarith) (pow_nonneg hy _)
    _ = _ := by rw [pow_succ]; ring

/-- At the base `T * B`, a linear field-invariant bound is absorbed uniformly
by the single input-independent choice `576 * C ≤ T`. -/
theorem analytic_error_at_power {B T C : ℝ} {m : ℕ}
    (hB : 1 ≤ B) (hT : 2 ≤ T) (hC : 576 * C ≤ T) (hm : 1 ≤ m) :
    72 * C * B * (T * B) ^ (m - 1) ≤ (T * B) ^ m / 8 := by
  have hcoef : 576 * C * B ≤ T * B :=
    mul_le_mul_of_nonneg_right hC (by linarith)
  have h : 8 * (72 * C * B) ≤ T * B := by nlinarith only [hcoef]
  have he := eighth_mul_pow (by positivity : 0 ≤ T * B) h (m - 1)
  simpa only [Nat.sub_add_cancel hm] using he

/-- The exponent gap of one quarter absorbs the elementary nuisance bound
uniformly. Its smallest allowed case already has a full factor `T * B`. -/
theorem nuisance_error_at_quarter {B T H : ℝ} {r : ℕ}
    (hB : 1 ≤ B) (hT : 2 ≤ T) (hH : 1920 * H ≤ T) (hr : 1 ≤ r) :
    240 * H * B * (T * B) ^ (3 * r) ≤ (T * B) ^ (4 * r) / 8 := by
  let y := T * B
  have hy : 1 ≤ y := by dsimp [y]; nlinarith
  have hcoef : 1920 * H * B ≤ y :=
    mul_le_mul_of_nonneg_right hH (by linarith)
  have hgap : y ≤ y ^ r := le_self_pow₀ hy (by omega)
  have ha : 240 * H * B ≤ y ^ r / 8 := by linarith
  calc
    _ ≤ (y ^ r / 8) * y ^ (3 * r) :=
      mul_le_mul_of_nonneg_right ha (pow_nonneg (by linarith) _)
    _ = (y ^ r * y ^ (3 * r)) / 8 := by ring
    _ = _ := by rw [← pow_add, show r + 3 * r = 4 * r by omega]

/-- The strip exponent at an integral reciprocal width becomes a natural power.
This is an exact identity, including the endpoint `m = 1`. -/
theorem strip_power_nat (y : ℝ) (hy : 0 ≤ y) (m : ℕ) (hm : 1 ≤ m) :
    (y ^ m) ^ (1 - 1 / (m : ℝ) : ℝ) = y ^ (m - 1) := by
  rw [← Real.rpow_natCast y m, ← Real.rpow_mul hy]
  have hm0 : (m : ℝ) ≠ 0 := by exact_mod_cast (by omega : m ≠ 0)
  have he : (m : ℝ) * (1 - 1 / (m : ℝ)) = ((m - 1 : ℕ) : ℝ) := by
    rw [Nat.cast_sub hm, Nat.cast_one]
    field_simp
  rw [he, Real.rpow_natCast]

/-- No rounding loss occurs in the nuisance exponent when the scale exponent
is a multiple of four. -/
theorem quarter_power (y : ℝ) (hy : 0 ≤ y) (r : ℕ) :
    (y ^ (4 * r)) ^ (3 / 4 : ℝ) = y ^ (3 * r) := by
  rw [← Real.rpow_natCast y (4 * r), ← Real.rpow_mul hy]
  have he : ((4 * r : ℕ) : ℝ) * (3 / 4) = ((3 * r : ℕ) : ℝ) := by
    push_cast
    ring
  rw [he, Real.rpow_natCast]

/-- Polynomiality concerns the numerical search cap, not merely its bit length.
For a fixed `T`, the exponent and coefficient are independent of the input `B`. -/
theorem polynomial_cap_identity (T B m : ℕ) :
    2 * (T * B) ^ m = (2 * T ^ m) * B ^ m := by
  rw [mul_pow, mul_assoc]

/-- Absolute errors for both sums, with the actual `1/q` coefficient retained,
leave a strict surplus over any nuisance mass bounded by `x/8`. -/
theorem strict_surplus {x q u v n : ℝ} (hx : 0 < x) (hq : 2 ≤ q)
    (herr : |u - x| + |v - x| / q ≤ x / 8) (hn : n ≤ x / 8) :
    n < u - v / q := by
  have hq0 : 0 < q := by linarith
  have hu : x - |u - x| ≤ u := by linarith [neg_abs_le (u - x)]
  have hv : v ≤ x + |v - x| := by linarith [le_abs_self (v - x)]
  have hvq := div_le_div_of_nonneg_right hv hq0.le
  have hxq : x / q ≤ x / 2 := (div_le_div_iff₀ hq0 (by norm_num : (0 : ℝ) < 2)).mpr
    (by nlinarith)
  rw [add_div] at hvq
  linarith

end GRWTSK.PrimeFieldFactoring.AnalyticScale
