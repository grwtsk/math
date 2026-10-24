# Complete source: GRWTSK.Algebra.CommutativeAlgebra.UnitTrinomial.Variant883832c8e4c483b76a2d0c7f2c298f0c3b7e5ebe5500177faad2d842ad568142

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35e745ecec6a568f3a3635437c6ea479c94786a9` · SHA-256 `883832c8e4c483b76a2d0c7f2c298f0c3b7e5ebe5500177faad2d842ad568142`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
import Mathlib.Algebra.Polynomial.UnitTrinomial
import Mathlib.Analysis.Complex.Polynomial.Basic

/-!
# Irreducibility of unit trinomials

## TODO

Develop more theory (e.g., it suffices to check that `aeval z p ≠ 0` for `z = 0` and `z` a root of
unity).
-/

namespace Polynomial.IsUnitTrinomial
variable {p : ℤ[X]}

/-- A unit trinomial is irreducible if it has no complex roots in common with its mirror. -/
theorem irreducible_of_coprime' (hp : IsUnitTrinomial p)
    (h : ∀ z : ℂ, ¬(aeval z p = 0 ∧ aeval z (mirror p) = 0)) : Irreducible p := by
  refine hp.irreducible_of_coprime fun q hq hq' => ?_
  suffices ¬0 < q.natDegree by
    rcases hq with ⟨p, rfl⟩
    replace hp := hp.leadingCoeff_isUnit
    rw [leadingCoeff_mul] at hp
    replace hp := isUnit_of_mul_isUnit_left hp
    rw [not_lt, Nat.le_zero] at this
    rwa [eq_C_of_natDegree_eq_zero this, isUnit_C, ← this]
  intro hq''
  rw [natDegree_pos_iff_degree_pos] at hq''
  rw [← degree_map_eq_of_injective (algebraMap ℤ ℂ).injective_int] at hq''
  obtain ⟨z, hz⟩ := Complex.exists_root hq''
  rw [IsRoot, eval_map, ← aeval_def] at hz
  refine h z ⟨?_, ?_⟩
  · obtain ⟨g', hg'⟩ := hq
    rw [hg', aeval_mul, hz, zero_mul]
  · obtain ⟨g', hg'⟩ := hq'
    rw [hg', aeval_mul, hz, zero_mul]

end Polynomial.IsUnitTrinomial
```
