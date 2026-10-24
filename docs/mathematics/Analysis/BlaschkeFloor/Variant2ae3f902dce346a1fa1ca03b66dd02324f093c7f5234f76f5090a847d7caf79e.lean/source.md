# Complete source: GRWTSK.Analysis.BlaschkeFloor.Variant2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc4c93b196aa94d5ebc5a37c8f2d0a8780ea63b0` · SHA-256 `2ae3f902dce346a1fa1ca03b66dd02324f093c7f5234f76f5090a847d7caf79e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Complex.Norm
import Mathlib.Tactic

set_option autoImplicit false
namespace BlaschkeFloorScratch
noncomputable section

/-- The elementary right-half-plane Blaschke factor evaluated at the reference point one. -/
def blaschkeAtOne (z : ℂ) : ℂ := (1 - z) / (1 + starRingEnd ℂ z)

/-- The reference denominator cannot vanish for a zero in the open right half-plane. -/
theorem reference_denominator_ne_zero (z : ℂ) (hz : 0 < z.re) :
    1 + z ≠ 0 := by
  intro h
  have hr := congrArg Complex.re h
  simp only [Complex.add_re, Complex.one_re, Complex.zero_re] at hr
  linarith

/-- The conjugated reference denominator has the same squared modulus. -/
theorem reference_denominator_normSq (z : ℂ) :
    Complex.normSq (1 + starRingEnd ℂ z) = Complex.normSq (1 + z) := by
  simp only [Complex.normSq_apply, Complex.add_re, Complex.one_re,
    Complex.conj_re, Complex.add_im, Complex.one_im, Complex.conj_im]
  ring

/-- The exact one-zero deficit, with the Hardy reference-vector factor one half retained. -/
theorem blaschke_deficit (z : ℂ) (hz : 0 < z.re) :
    (1 - ‖blaschkeAtOne z‖ ^ 2) / 2 = 2 * z.re / ‖1 + z‖ ^ 2 := by
  have hd : Complex.normSq (1 + z) ≠ 0 :=
    (Complex.normSq_pos.mpr (reference_denominator_ne_zero z hz)).ne'
  rw [← Complex.normSq_eq_norm_sq, ← Complex.normSq_eq_norm_sq]
  simp only [blaschkeAtOne, Complex.normSq_div, reference_denominator_normSq]
  field_simp
  simp only [Complex.normSq_apply, Complex.add_re, Complex.sub_re, Complex.one_re,
    Complex.add_im, Complex.sub_im, Complex.one_im]
  ring

/-- A remaining inner factor of modulus at most one can only increase the deficit. -/
theorem factor_deficit_lower (z q : ℂ) (hz : 0 < z.re) (hq : ‖q‖ ≤ 1) :
    2 * z.re / ‖1 + z‖ ^ 2 ≤ (1 - ‖blaschkeAtOne z * q‖ ^ 2) / 2 := by
  rw [← blaschke_deficit z hz, norm_mul, mul_pow]
  have hq2 : ‖q‖ ^ 2 ≤ 1 := by nlinarith [norm_nonneg q]
  have hh := mul_le_mul_of_nonneg_left hq2 (sq_nonneg ‖blaschkeAtOne z‖)
  nlinarith

/-- The algebraic tracking floor is strictly positive for a right-half-plane zero. -/
theorem blaschke_floor_pos (z : ℂ) (hz : 0 < z.re) :
    0 < 2 * z.re / ‖1 + z‖ ^ 2 := by
  exact div_pos (mul_pos (by norm_num) hz)
    (sq_pos_of_pos (norm_pos_iff.mpr (reference_denominator_ne_zero z hz)))

end
end BlaschkeFloorScratch
```
