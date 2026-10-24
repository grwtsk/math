# Complete source: GRWTSK.Algebra.CommutativeAlgebra.FiniteDimensional.Variant014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3068b3319a0939c3ea4186533ed2a061d5d9012` · SHA-256 `014dc6093ceee91d6c9154e3312b62a2f3b273c7228afb837dfb5180602d80a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.FieldTheory.Minpoly.Field
import Mathlib.Algebra.Polynomial.Module.AEval
import Mathlib.Algebra.Module.Torsion

/-!
# Polynomial modules in finite dimensions

This file is a place to collect results about the `R[X]`-module structure induced on an `R`-module
by an `R`-linear endomorphism, which require the concept of finite-dimensionality.

## Main results:
* `Module.AEval.isTorsion_of_finiteDimensional`: if a vector space `M` with coefficients in a field
  `K` carries a natural `K`-linear endomorphism which belongs to a finite-dimensional algebra
  over `K`, then the induced `K[X]`-module structure on `M` is pure torsion.

-/

open Polynomial

variable {R K M A : Type*} {a : A}

namespace Module.AEval

theorem isTorsion_of_aeval_eq_zero [CommSemiring R] [NoZeroDivisors R] [Semiring A] [Algebra R A]
    [AddCommMonoid M] [Module A M] [Module R M] [IsScalarTower R A M]
    {p : R[X]} (h : aeval a p = 0) (h' : p ≠ 0) :
    IsTorsion R[X] (AEval R M a) := by
  have hp : p ∈ nonZeroDivisors R[X] := fun q hq ↦ Or.resolve_right (mul_eq_zero.mp hq) h'
  exact fun x ↦ ⟨⟨p, hp⟩, (of R M a).symm.injective <| by simp [h]⟩

variable (K M a)

theorem isTorsion_of_finiteDimensional [Field K] [Ring A] [Algebra K A]
    [AddCommGroup M] [Module A M] [Module K M] [IsScalarTower K A M] [FiniteDimensional K A] :
    IsTorsion K[X] (AEval K M a) :=
  isTorsion_of_aeval_eq_zero (minpoly.aeval K a) (minpoly.ne_zero_of_finite K a)

end Module.AEval
```
