# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.PartialBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3cc4af782b99b8cbe45654195ee0b6cf05fbdf0` · SHA-256 `156600d2382098a5d4b230d5b06c0072dbd561335f3dd18882e2d06441b3c235`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib squarefree and radical facts (Apache-2.0).
OpenAI Codex formalization assistance. All bounds in this module have the
explicit squarefree-product hypothesis; it is not supplied for general triples. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

namespace PrimitiveAdditiveTriple

variable (t : PrimitiveAdditiveTriple)

theorem radical_eq_product_of_squarefree (hs : Squarefree (t.a * t.b * t.c)) :
    t.radical = t.a * t.b * t.c := by
  exact Nat.dvd_antisymm t.radical_dvd_product (hs.isRadical.dvd_radical hs.ne_zero)

/-- The coefficient-one radical-height inequality on the squarefree-product
subfamily. This is unconditional as a theorem about that subfamily. -/
theorem height_le_radical_of_squarefree (hs : Squarefree (t.a * t.b * t.c)) :
    t.c ≤ t.radical := by
  rw [t.radical_eq_product_of_squarefree hs]
  exact Nat.le_mul_of_pos_left _ (Nat.mul_pos t.a_pos t.b_pos)

/-- Every nonnegative real epsilon admits constant one for a triple whose
literal product is squarefree. No all-triple squarefreeness is inferred. -/
theorem bound_of_squarefree (ε : ℝ) (hε : 0 ≤ ε)
    (hs : Squarefree (t.a * t.b * t.c)) :
    (t.c : ℝ) ≤ Real.rpow (t.radical : ℝ) (1 + ε) := by
  have hc : (t.c : ℝ) ≤ (t.radical : ℝ) := by
    exact_mod_cast t.height_le_radical_of_squarefree hs
  have hR : 1 ≤ (t.radical : ℝ) := by
    exact_mod_cast (show 1 ≤ t.radical from t.radical_pos)
  simp only [Real.rpow_eq_pow]
  exact hc.trans (by simpa only [Real.rpow_one] using
    (Real.rpow_le_rpow_of_exponent_le hR (by linarith : (1 : ℝ) ≤ 1 + ε)))

end PrimitiveAdditiveTriple
end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
