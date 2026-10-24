# Complete source: GRWTSK.Algebra.Epi.Variant3583c575b394acf89c52b67318cd8ebc2818a546c291a84636d826ac4e597f70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ba86a9d7d7c35f511b04649d1a2342dd2b63246` · SHA-256 `3583c575b394acf89c52b67318cd8ebc2818a546c291a84636d826ac4e597f70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Algebra.Category.Ring.Basic
import Mathlib.RingTheory.TensorProduct.Finite
import Mathlib.CategoryTheory.ConcreteCategory.EpiMono

/-!
# Epimorphisms in `CommRingCat`

## Main results
- `RingHom.surjective_iff_epi_and_finite`: surjective <=> epi + finite
-/

open CategoryTheory TensorProduct

universe u

lemma CommRingCat.epi_iff_tmul_eq_tmul {R S : Type u} [CommRing R] [CommRing S] [Algebra R S] :
    Epi (CommRingCat.ofHom (algebraMap R S)) ↔
      ∀ s : S, s ⊗ₜ[R] 1 = 1 ⊗ₜ s := by
  constructor
  · intro H
    #adaptation_note /-- https://github.com/leanprover/lean4/pull/6024
    we need to add `(R := R) (A := S)` in the next line to deal with unification issues. -/
    have := H.1 (CommRingCat.ofHom <| Algebra.TensorProduct.includeLeftRingHom (R := R))
      (CommRingCat.ofHom <| (Algebra.TensorProduct.includeRight (R := R) (A := S)).toRingHom)
      (by ext r; show algebraMap R S r ⊗ₜ 1 = 1 ⊗ₜ algebraMap R S r;
          simp only [Algebra.algebraMap_eq_smul_one, smul_tmul])
    exact RingHom.congr_fun (congrArg Hom.hom this)
  · refine fun H ↦ ⟨fun {T} f g e ↦ ?_⟩
    letI : Algebra R T := (ofHom (algebraMap R S) ≫ g).hom.toAlgebra
    let f' : S →ₐ[R] T := ⟨f.hom, RingHom.congr_fun (congrArg Hom.hom e)⟩
    let g' : S →ₐ[R] T := ⟨g.hom, fun _ ↦ rfl⟩
    ext s
    simpa using congr(Algebra.TensorProduct.lift f' g' (fun _ _ ↦ .all _ _) $(H s))

lemma RingHom.surjective_of_epi_of_finite {R S : CommRingCat} (f : R ⟶ S) [Epi f]
    (h₂ : RingHom.Finite f.hom) : Function.Surjective f := by
  algebraize [f.hom]
  apply RingHom.surjective_of_tmul_eq_tmul_of_finite
  rwa [← CommRingCat.epi_iff_tmul_eq_tmul]

lemma RingHom.surjective_iff_epi_and_finite {R S : CommRingCat} {f : R ⟶ S} :
    Function.Surjective f ↔ Epi f ∧ RingHom.Finite f.hom where
  mp h := ⟨ConcreteCategory.epi_of_surjective f h, .of_surjective f.hom h⟩
  mpr := fun ⟨_, h⟩ ↦ surjective_of_epi_of_finite f h
```
