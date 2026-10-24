# Complete source: GRWTSK.Algebra.StrongRankCondition.Variant1660efae70b881775a77110b439db6c37efc280a99f4f5f9d3a959a3a40610c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a4e52ebe6281efa7e275cc66b3589756bb07d6f` · SHA-256 `1660efae70b881775a77110b439db6c37efc280a99f4f5f9d3a959a3a40610c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca
-/
import Mathlib.RingTheory.FiniteType
import Mathlib.LinearAlgebra.InvariantBasisNumber

/-!

# Strong rank condition for commutative rings

We prove that any nontrivial commutative ring satisfies `StrongRankCondition`, meaning that
if there is an injective linear map `(Fin n → R) →ₗ[R] Fin m → R`, then `n ≤ m`. This implies that
any commutative ring satisfies `InvariantBasisNumber`: the rank of a finitely generated free
module is well defined.

## Main result

* `commRing_strongRankCondition R` : `R` has the `StrongRankCondition`.

The `commRing_strongRankCondition` comes from `CommRing.orzechProperty`, proved in
`Mathlib/RingTheory/FiniteType.lean`, which states that any commutative ring satisfies
the `OrzechProperty`, that is, for any finitely generated
`R`-module `M`, any surjective homomorphism `f : N → M` from a submodule `N` of `M` to `M`
is injective.


## References

* [Orzech, Morris. *Onto endomorphisms are isomorphisms*][orzech1971]
* [Djoković, D. Ž. *Epimorphisms of modules which must be isomorphisms*][djokovic1973]
* [Ribenboim, Paulo. *Épimorphismes de modules qui sont nécessairement
  des isomorphismes*][ribenboim1971]

-/


variable (R : Type*) [CommRing R] [Nontrivial R]

/-- Any nontrivial commutative ring satisfies the `StrongRankCondition`. -/
instance (priority := 100) commRing_strongRankCondition : StrongRankCondition R :=
  inferInstance
```
