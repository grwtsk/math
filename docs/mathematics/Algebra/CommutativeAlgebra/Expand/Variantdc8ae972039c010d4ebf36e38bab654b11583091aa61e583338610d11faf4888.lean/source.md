# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Expand.Variantdc8ae972039c010d4ebf36e38bab654b11583091aa61e583338610d11faf4888

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3a1bb82c79f1b750831796a92479c89de5f8196` · SHA-256 `dc8ae972039c010d4ebf36e38bab654b11583091aa61e583338610d11faf4888`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wenrong Zou
-/
module

public import Mathlib.Algebra.MvPolynomial.Expand
public import Mathlib.RingTheory.MvPolynomial.Basic
public import Mathlib.Algebra.CharP.Frobenius
public import Mathlib.FieldTheory.Finite.Basic

/-!
# Results on `MvPolynomial.expand`

In this file we prove results about `MvPolynomial.expand` that require more than the basic API
available in `Mathlib.Algebra.*`.
-/

public section

namespace MvPolynomial

variable {σ R : Type*} [CommSemiring R] (p : ℕ) [ExpChar R p]

set_option backward.isDefEq.respectTransparency.types false in
theorem map_frobenius_expand {f : MvPolynomial σ R} :
    (f.expand p).map (frobenius R p) = f ^ p :=
  f.induction_on' fun _ _ => by simp [monomial_pow, frobenius]
    fun _ _ ha hb => by rw [map_add, map_add, ha, hb, add_pow_expChar]

theorem map_iterateFrobenius_expand (f : MvPolynomial σ R) (n : ℕ) :
    map (iterateFrobenius R p n) (expand (p ^ n) f) = f ^ p ^ n := by
  induction n with
  | zero => simp [map_id]
  | succ k n_ih =>
    symm
    conv_lhs => rw [pow_succ, pow_mul, ← n_ih]
    simp_rw [← map_frobenius_expand p, pow_succ', add_comm k, iterateFrobenius_add,
      ← map_map, ← map_expand, ← expand_mul, iterateFrobenius_one]

theorem _root_.FiniteField.MvPolynomial.expand_card {K : Type*} [Field K] [Fintype K]
    (f : MvPolynomial σ K) : expand (Fintype.card K) f = f ^ Fintype.card K := by
  obtain ⟨p, hp⟩ := CharP.exists K
  rcases FiniteField.card K p with ⟨⟨n, npos⟩, ⟨hp, hn⟩⟩
  have : Fact p.Prime := ⟨hp⟩
  dsimp at hn
  rw [hn, ← map_iterateFrobenius_expand p, iterateFrobenius_eq_pow,
    FiniteField.frobenius_pow hn, RingHom.one_def, map_id]

end MvPolynomial
```
