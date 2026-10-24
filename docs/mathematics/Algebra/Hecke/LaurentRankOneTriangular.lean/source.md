# Complete source: GRWTSK.Algebra.Hecke.LaurentRankOneTriangular

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3` · SHA-256 `cc38f6d924802629c1b33dc58903f88bbe038deadc9b19912f7c0ecf570cd068`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.Hecke.LaurentRankOneBar

/-! Actual rank-one triangular bar uniqueness for K2 in both KL versions.
No higher-rank Bruhat recursion, KL positivity or geometric realization is constructed. -/
namespace GRWTSK.Algebra.Hecke
open LaurentPolynomial

/-- A lower coefficient has only strictly negative Laurent exponents. -/
def StrictlyNegativeLaurent (p : LaurentPolynomial ℤ) : Prop :=
  ∀ n : ℤ, 0 ≤ n → p.coeff n = 0

/-- The rank-one lower coefficient v⁻¹ has the required strict triangularity. -/
theorem inverse_parameter_strictly_negative :
    StrictlyNegativeLaurent (T (-1) : LaurentPolynomial ℤ) := by
  intro n hn
  have hne : (-1 : ℤ) ≠ n := by omega
  simp [T_apply, hne]

/-- A coefficient fixed by exponent inversion cannot have strictly negative support unless zero. -/
theorem negative_laurent_invert_fixed_zero (p : LaurentPolynomial ℤ)
    (hneg : StrictlyNegativeLaurent p) (hbar : LaurentPolynomial.invert p = p) : p = 0 := by
  apply LaurentPolynomial.ext
  intro n
  change p.coeff n = 0
  by_cases hn : 0 ≤ n
  · exact hneg n hn
  · have hc := congrArg (fun q : LaurentPolynomial ℤ => q.coeff n) hbar
    simp only [invert_apply] at hc
    rw [← hc]
    exact hneg (-n) (by omega)

/-- Fixedness plus strict triangularity determines the actual rank-one lower coefficient. -/
theorem laurent_rankOne_triangular_bar_unique (a : LaurentPolynomial ℤ)
    (hneg : StrictlyNegativeLaurent a)
    (hbar : laurentRankOneBar (a, T (-1)) = (a, T (-1))) : a = T (-1) := by
  have hfirst := congrArg Prod.fst hbar
  change LaurentPolynomial.invert a + (T (-2) - 1) *
    LaurentPolynomial.invert (T (-1)) = a at hfirst
  simp only [invert_T, neg_neg] at hfirst
  have hp : (T (-2) : LaurentPolynomial ℤ) * T 1 = T (-1) := by rw [← T_add]; norm_num
  rw [sub_mul, hp, one_mul] at hfirst
  have hfixed : LaurentPolynomial.invert (a - T (-1)) = a - T (-1) := by
    rw [map_sub, invert_T]
    norm_num
    linear_combination hfirst
  have hnegative : StrictlyNegativeLaurent (a - T (-1)) := by
    intro n hn
    change a.coeff n - (T (-1) : LaurentPolynomial ℤ).coeff n = 0
    rw [hneg n hn, inverse_parameter_strictly_negative n hn]
    ring
  exact sub_eq_zero.mp (negative_laurent_invert_fixed_zero _ hnegative hfixed)

/-- Unique existence of the triangular, normalized, bar-fixed rank-one element. -/
theorem laurent_rankOne_triangular_bar_existsUnique :
    ∃! a : LaurentPolynomial ℤ, StrictlyNegativeLaurent a ∧
      laurentRankOneBar (a, T (-1)) = (a, T (-1)) := by
  refine ⟨T (-1), ⟨inverse_parameter_strictly_negative, laurentRankOneBar_normalized_fixed⟩, ?_⟩
  intro a ha
  exact laurent_rankOne_triangular_bar_unique a ha.1 ha.2
end GRWTSK.Algebra.Hecke
```
