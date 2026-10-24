# Complete source: GRWTSK.Algebra.Defs.Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce138ddf03e89987590c687c22937f6c39887788` · SHA-256 `6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yunzhou Xie. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yunzhou Xie, Jujian Zhang
-/
import Mathlib.Algebra.Module.Projective
import Mathlib.RingTheory.Finiteness.Defs
import Mathlib.RingTheory.TensorProduct.Basic

/-!
# Azumaya Algebras

An Azumaya algebra over a commutative ring `R` is a finitely generated, projective
and faithful R-algebra where the tensor product `A ⊗[R] Aᵐᵒᵖ` is isomorphic to the
`R`-endomorphisms of A via the map `f : a ⊗ b ↦ (x ↦ a * x * b.unop)`.
TODO : Add the three more definitions and prove they are equivalent:
· There exists an `R`-algebra `B` such that `B ⊗[R] A` is Morita equivalent to `R`;
· `Aᵐᵒᵖ ⊗[R] A` is Morita equivalent to `R`;
· The center of `A` is `R` and `A` is a separable algebra.

## Reference

* [Benson Farb , R. Keith Dennis, *Noncommutative Algebra*][bensonfarb1993]

## Tags

Azumaya algebra, central simple algebra, noncommutative algebra
-/

variable (R A : Type*) [CommSemiring R] [Semiring A] [Algebra R A]

open TensorProduct MulOpposite

/-- `A` as a `A ⊗[R] Aᵐᵒᵖ`-module (or equivalently, an `A`-`A` bimodule). -/
noncomputable abbrev instModuleTensorProductMop :
  Module (A ⊗[R] Aᵐᵒᵖ) A := TensorProduct.Algebra.module

/-- The canonical map from `A ⊗[R] Aᵐᵒᵖ` to `Module.End R A` where
  `a ⊗ b` maps to `f : x ↦ a * x * b`. -/
noncomputable def AlgHom.mulLeftRight : (A ⊗[R] Aᵐᵒᵖ) →ₐ[R] Module.End R A :=
  letI : Module (A ⊗[R] Aᵐᵒᵖ) A := TensorProduct.Algebra.module
  letI : IsScalarTower R (A ⊗[R] Aᵐᵒᵖ) A := {
    smul_assoc := fun r ab a ↦ by
      change TensorProduct.Algebra.moduleAux _ _ = _ • TensorProduct.Algebra.moduleAux _ _
      simp }
  Algebra.lsmul R (A := A ⊗[R] Aᵐᵒᵖ) R A

@[simp]
lemma AlgHom.mulLeftRight_apply (a : A) (b : Aᵐᵒᵖ) (x : A) :
    AlgHom.mulLeftRight R A (a ⊗ₜ b) x = a * x * b.unop := by
  simp only [AlgHom.mulLeftRight, Algebra.lsmul_coe]
  change TensorProduct.Algebra.moduleAux _ _ = _
  simp [TensorProduct.Algebra.moduleAux, ← mul_assoc]

/-- An Azumaya algebra is a finitely generated, projective and faithful R-algebra where
  `AlgHom.mulLeftRight R A : (A ⊗[R] Aᵐᵒᵖ) →ₐ[R] Module.End R A` is an isomorphism. -/
class IsAzumaya : Prop extends Module.Projective R A, FaithfulSMul R A, Module.Finite R A where
    bij : Function.Bijective <| AlgHom.mulLeftRight R A
```
