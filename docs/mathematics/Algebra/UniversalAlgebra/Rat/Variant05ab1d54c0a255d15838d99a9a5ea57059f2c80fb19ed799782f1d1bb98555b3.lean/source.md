# Complete source: GRWTSK.Algebra.UniversalAlgebra.Rat.Variant05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75dc61c255c91f70c22ebf491404e8e289503b41` · SHA-256 `05ab1d54c0a255d15838d99a9a5ea57059f2c80fb19ed799782f1d1bb98555b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Yury Kudryashov
-/
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Algebra.Rat

/-!
# Homomorphisms of `ℚ`-algebras

-/


namespace RingHom

variable {R S : Type*}

/-- Reinterpret a `RingHom` as a `ℚ`-algebra homomorphism. This actually yields an equivalence,
see `RingHom.equivRatAlgHom`. -/
def toRatAlgHom [Ring R] [Ring S] [Algebra ℚ R] [Algebra ℚ S] (f : R →+* S) : R →ₐ[ℚ] S :=
  { f with commutes' := f.map_rat_algebraMap }

@[simp]
theorem toRatAlgHom_toRingHom [Ring R] [Ring S] [Algebra ℚ R] [Algebra ℚ S] (f : R →+* S) :
    ↑f.toRatAlgHom = f :=
  RingHom.ext fun _x => rfl

@[simp]
theorem toRatAlgHom_apply [Ring R] [Ring S] [Algebra ℚ R] [Algebra ℚ S] (f : R →+* S) (x : R) :
    f.toRatAlgHom x = f x :=
  rfl

end RingHom

section

variable {R S : Type*}

@[simp]
theorem AlgHom.toRingHom_toRatAlgHom [Ring R] [Ring S] [Algebra ℚ R] [Algebra ℚ S]
    (f : R →ₐ[ℚ] S) : (f : R →+* S).toRatAlgHom = f :=
  AlgHom.ext fun _x => rfl

/-- The equivalence between `RingHom` and `ℚ`-algebra homomorphisms. -/
@[simps]
def RingHom.equivRatAlgHom [Ring R] [Ring S] [Algebra ℚ R] [Algebra ℚ S] :
    (R →+* S) ≃ (R →ₐ[ℚ] S) where
  toFun := RingHom.toRatAlgHom
  invFun := AlgHom.toRingHom
  left_inv f := RingHom.toRatAlgHom_toRingHom f
  right_inv f := AlgHom.toRingHom_toRatAlgHom f

end
```
