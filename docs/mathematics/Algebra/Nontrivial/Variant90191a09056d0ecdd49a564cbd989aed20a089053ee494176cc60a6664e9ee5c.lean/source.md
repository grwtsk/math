# Complete source: GRWTSK.Algebra.Nontrivial.Variant90191a09056d0ecdd49a564cbd989aed20a089053ee494176cc60a6664e9ee5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c78b9bdcadd72ee59c7c104250c6ec24614e0a74` · SHA-256 `90191a09056d0ecdd49a564cbd989aed20a089053ee494176cc60a6664e9ee5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.LinearAlgebra.Basis.VectorSpace
import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic
import Mathlib.RingTheory.Localization.FractionRing

/-!

# Nontriviality of tensor product of algebras

This file contains some more results on nontriviality of tensor product of algebras.

-/

open TensorProduct

namespace Algebra.TensorProduct

/-- If `A`, `B` are `R`-algebras, `R` injects into `A` and `B`, and `A` and `B` are domains
(which implies `R` is also a domain), then `A ⊗[R] B` is nontrivial. -/
theorem nontrivial_of_algebraMap_injective_of_isDomain
    (R A B : Type*) [CommRing R] [CommRing A] [CommRing B] [Algebra R A] [Algebra R B]
    (ha : Function.Injective (algebraMap R A)) (hb : Function.Injective (algebraMap R B))
    [IsDomain A] [IsDomain B] : Nontrivial (A ⊗[R] B) := by
  haveI := ha.isDomain _
  let FR := FractionRing R
  let FA := FractionRing A
  let FB := FractionRing B
  let fa : FR →ₐ[R] FA := IsFractionRing.liftAlgHom (g := Algebra.ofId R FA)
    ((IsFractionRing.injective A FA).comp ha)
  let fb : FR →ₐ[R] FB := IsFractionRing.liftAlgHom (g := Algebra.ofId R FB)
    ((IsFractionRing.injective B FB).comp hb)
  algebraize_only [fa.toRingHom, fb.toRingHom]
  exact Algebra.TensorProduct.mapOfCompatibleSMul FR R FA FB |>.comp
    (Algebra.TensorProduct.map (IsScalarTower.toAlgHom R A FA) (IsScalarTower.toAlgHom R B FB))
    |>.toRingHom.domain_nontrivial

end Algebra.TensorProduct
```
