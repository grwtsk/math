# Complete source: GRWTSK.Algebra.LinearAlgebra.RestrictScalars.Variant3b5830cbe139bd5f8078f8a3a8af7fd483d59887714f1a7701adda82aeaf4478

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e70e369b2fb9c6a99ac4c90d1a7e1b92120ffe24` · SHA-256 `3b5830cbe139bd5f8078f8a3a8af7fd483d59887714f1a7701adda82aeaf4478`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Module.Presentation.DirectSum
import Mathlib.Algebra.Module.Presentation.Cokernel

/-!
# Presentation of the restriction of scalars of a module

Given a morphism of rings `A → B` and a `B`-module `M`, we obtain a presentation
of `M` as a `A`-module from a presentation of `M` as `B`-module,
a presentation of `B` as a `A`-module (and some additional data).

## TODO
* deduce that if `B` is a finitely presented as an `A`-module and `M` is
  finitely presented as an `B`-module, then `M` is finitely presented as an `A`-module

-/

namespace Module

variable {B : Type*} [Ring B] {M : Type*} [AddCommGroup M] [Module B M]
  [DecidableEq B]
  (presM : Presentation B M) [DecidableEq presM.G]
  {A : Type*} [CommRing A] [Algebra A B] [Module A M] [IsScalarTower A B M]
  (presB : Presentation A B)

namespace Presentation

/-- The additional data that is necessary in order to obtain a presentation
of the restriction of scalars of a module. -/
abbrev RestrictScalarsData : Type _ :=
  (presB.finsupp presM.G).CokernelData
    (LinearMap.restrictScalars A presM.map)
    (fun (⟨g, g'⟩ : presB.G × presM.R) ↦ presB.var g • Finsupp.single g' (1 : B))

variable (data : presM.RestrictScalarsData presB)

/-- A presentation of the restriction of scalars from `B` to `A` of a `B`-module `M`,
given a presentation of `M` as a `B`-module, a presentation of `B` as an `A`-module,
and an additional data. -/
noncomputable def restrictScalars : Presentation A M :=
  ofExact (g := LinearMap.restrictScalars A presM.π) (presB.finsupp presM.G) data
    presM.exact presM.surjective_π (by
      ext v
      dsimp
      simp only [Submodule.mem_top, iff_true]
      apply Finsupp.induction
      · simp
      · intro r b w _ _ hw
        refine Submodule.add_mem _ ?_ hw
        obtain ⟨β, rfl⟩ := presB.surjective_π b
        apply Finsupp.induction (motive := fun β ↦ Finsupp.single r (presB.π β) ∈ _)
        · simp
        · intro g a f _ _ hf
          rw [map_add, Finsupp.single_add]
          refine Submodule.add_mem _ ?_ hf
          rw [← Finsupp.smul_single_one, ← Finsupp.smul_single_one,
            map_smul, Relations.Solution.π_single, smul_assoc]
          exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨⟨g, r⟩, rfl⟩))

end Presentation

end Module
```
