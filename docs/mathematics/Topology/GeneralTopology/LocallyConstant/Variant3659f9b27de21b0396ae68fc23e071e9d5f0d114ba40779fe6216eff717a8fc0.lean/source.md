# Complete source: GRWTSK.Topology.GeneralTopology.LocallyConstant.Variant3659f9b27de21b0396ae68fc23e071e9d5f0d114ba40779fe6216eff717a8fc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `785c3e2e99d948f569465f48f6e5a9090b6c36c3` · SHA-256 `3659f9b27de21b0396ae68fc23e071e9d5f0d114ba40779fe6216eff717a8fc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Topology.LocallyConstant.Algebra
import Mathlib.Topology.ContinuousMap.Basic
import Mathlib.Topology.ContinuousMap.Algebra

/-!
# The algebra morphism from locally constant functions to continuous functions.

-/


namespace LocallyConstant

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/-- The inclusion of locally-constant functions into continuous functions as a multiplicative
monoid hom. -/
@[to_additive (attr := simps)
"The inclusion of locally-constant functions into continuous functions as an additive monoid hom."]
def toContinuousMapMonoidHom [Monoid Y] [ContinuousMul Y] : LocallyConstant X Y →* C(X, Y) where
  toFun := (↑)
  map_one' := by
    ext
    simp
  map_mul' x y := by
    ext
    simp

/-- The inclusion of locally-constant functions into continuous functions as a linear map. -/
@[simps]
def toContinuousMapLinearMap (R : Type*) [Semiring R] [AddCommMonoid Y] [Module R Y]
    [ContinuousAdd Y] [ContinuousConstSMul R Y] : LocallyConstant X Y →ₗ[R] C(X, Y) where
  toFun := (↑)
  map_add' x y := by
    ext
    simp
  map_smul' x y := by
    ext
    simp

/-- The inclusion of locally-constant functions into continuous functions as an algebra map. -/
@[simps]
def toContinuousMapAlgHom (R : Type*) [CommSemiring R] [Semiring Y] [Algebra R Y]
    [IsTopologicalSemiring Y] : LocallyConstant X Y →ₐ[R] C(X, Y) where
  toFun := (↑)
  map_one' := by
    ext
    simp
  map_mul' x y := by
    ext
    simp
  map_zero' := by
    ext
    simp
  map_add' x y := by
    ext
    simp
  commutes' r := by
    ext x
    simp [Algebra.smul_def]

end LocallyConstant
```
