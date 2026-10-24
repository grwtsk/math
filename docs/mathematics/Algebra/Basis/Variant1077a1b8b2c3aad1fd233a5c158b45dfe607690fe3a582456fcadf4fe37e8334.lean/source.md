# Complete source: GRWTSK.Algebra.Basis.Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f019f15b06ed9ecb8da05e918485f868d8b857b` · SHA-256 `1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.Algebra.Bilinear
import Mathlib.LinearAlgebra.Basis.Defs
import Mathlib.LinearAlgebra.Basis.Submodule
import Mathlib.RingTheory.Ideal.Span

/-!
# The basis of ideals

Some results involving `Ideal` and `Basis`.
-/

namespace Ideal

variable {ι R S : Type*} [CommSemiring R] [CommRing S] [IsDomain S] [Algebra R S]

/-- A basis on `S` gives a basis on `Ideal.span {x}`, by multiplying everything by `x`. -/
noncomputable def basisSpanSingleton (b : Basis ι R S) {x : S} (hx : x ≠ 0) :
    Basis ι R (span ({x} : Set S)) :=
  b.map <|
    LinearEquiv.ofInjective (LinearMap.mulLeft R x) (mul_right_injective₀ hx) ≪≫ₗ
        LinearEquiv.ofEq _ _
          (by
            ext
            simp [mem_span_singleton', mul_comm]) ≪≫ₗ
      (Submodule.restrictScalarsEquiv R S S (Ideal.span ({x} : Set S))).restrictScalars R

@[simp]
theorem basisSpanSingleton_apply (b : Basis ι R S) {x : S} (hx : x ≠ 0) (i : ι) :
    (basisSpanSingleton b hx i : S) = x * b i := by
  simp only [basisSpanSingleton, Basis.map_apply, LinearEquiv.trans_apply,
    Submodule.restrictScalarsEquiv_apply, LinearEquiv.ofInjective_apply, LinearEquiv.coe_ofEq_apply,
    LinearEquiv.restrictScalars_apply, LinearMap.mulLeft_apply, LinearMap.mul_apply']

@[simp]
theorem constr_basisSpanSingleton {N : Type*} [Semiring N] [Module N S] [SMulCommClass R N S]
    (b : Basis ι R S) {x : S} (hx : x ≠ 0) :
    (b.constr N).toFun (((↑) : _ → S) ∘ (basisSpanSingleton b hx)) = Algebra.lmul R S x :=
  b.ext fun i => by simp

end Ideal

-- Porting note: added explicit coercion `(b i : S)`
/-- If `I : Ideal S` has a basis over `R`,
`x ∈ I` iff it is a linear combination of basis vectors. -/
theorem Basis.mem_ideal_iff {ι R S : Type*} [CommSemiring R] [Semiring S] [Algebra R S]
    {I : Ideal S} (b : Basis ι R I) {x : S} :
    x ∈ I ↔ ∃ c : ι →₀ R, x = Finsupp.sum c fun i x => x • (b i : S) :=
  (b.map ((I.restrictScalarsEquiv R _ _).restrictScalars R).symm).mem_submodule_iff

/-- If `I : Ideal S` has a finite basis over `R`,
`x ∈ I` iff it is a linear combination of basis vectors. -/
theorem Basis.mem_ideal_iff' {ι R S : Type*} [Fintype ι] [CommSemiring R] [Semiring S] [Algebra R S]
    {I : Ideal S} (b : Basis ι R I) {x : S} : x ∈ I ↔ ∃ c : ι → R, x = ∑ i, c i • (b i : S) :=
  (b.map ((I.restrictScalarsEquiv R _ _).restrictScalars R).symm).mem_submodule_iff'
```
