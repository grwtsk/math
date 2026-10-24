# Complete source: GRWTSK.Algebra.LinearAlgebra.IsSimpleOrder.Variant072dbf7d39449f0f07437b641232a37ddc502868ee9b21b4672e53aee38d556c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b4e1753aac23cb905701f8f094fda656fdc67a0` · SHA-256 `072dbf7d39449f0f07437b641232a37ddc502868ee9b21b4672e53aee38d556c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
import Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition
import Mathlib.LinearAlgebra.FreeModule.StrongRankCondition

/-!
If `A` is a domain, and a finite-dimensional algebra over a field `F`, with prime dimension,
then there are no non-trivial `F`-subalgebras.
-/

open Module Submodule

theorem Subalgebra.isSimpleOrder_of_finrank_prime (F A) [Field F] [Ring A] [IsDomain A]
    [Algebra F A] (hp : (finrank F A).Prime) : IsSimpleOrder (Subalgebra F A) :=
  { toNontrivial :=
      ⟨⟨⊥, ⊤, fun he =>
          Nat.not_prime_one ((Subalgebra.bot_eq_top_iff_finrank_eq_one.1 he).subst hp)⟩⟩
    eq_bot_or_eq_top := fun K => by
      haveI : FiniteDimensional _ _ := .of_finrank_pos hp.pos
      letI := divisionRingOfFiniteDimensional F K
      refine (hp.eq_one_or_self_of_dvd _ ⟨_, (finrank_mul_finrank F K A).symm⟩).imp ?_ fun h => ?_
      · exact fun h' => Subalgebra.eq_bot_of_finrank_one h'
      · exact
          Algebra.toSubmodule_eq_top.1 (eq_top_of_finrank_eq <| K.finrank_toSubmodule.trans h) }
-- TODO: `IntermediateField` version
```
