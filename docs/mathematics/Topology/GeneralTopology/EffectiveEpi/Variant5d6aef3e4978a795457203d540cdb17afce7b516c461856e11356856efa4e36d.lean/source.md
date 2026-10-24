# Complete source: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variant5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b7613e82d1858e0a6ae462c40b54929a344d0ef` · SHA-256 `5d6aef3e4978a795457203d540cdb17afce7b516c461856e11356856efa4e36d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Boris Bolvig Kjær, Jon Eugster, Sina Hazratpour
-/
import Mathlib.CategoryTheory.Sites.Coherent.ReflectsPreregular
import Mathlib.Topology.Category.CompHaus.EffectiveEpi
import Mathlib.Topology.Category.Profinite.Limits
import Mathlib.Topology.Category.Stonean.Basic
/-!

# Effective epimorphisms in `Profinite`

This file proves that `EffectiveEpi`, `Epi` and `Surjective` are all equivalent in `Profinite`.
As a consequence we deduce from the material in
`Mathlib/Topology/Category/CompHausLike/EffectiveEpi.lean` that `Profinite` is `Preregular`
and `Precoherent`.

We also prove that for a finite family of morphisms in `Profinite` with fixed
target, the conditions jointly surjective, jointly epimorphic and effective epimorphic are all
equivalent.
-/

universe u

open CategoryTheory Limits

namespace Profinite

open List in
theorem effectiveEpi_tfae
    {B X : Profinite.{u}} (π : X ⟶ B) :
    TFAE
    [ EffectiveEpi π
    , Epi π
    , Function.Surjective π
    ] := by
  tfae_have 1 → 2 := fun _ ↦ inferInstance
  tfae_have 2 ↔ 3 := epi_iff_surjective π
  tfae_have 3 → 1 := fun hπ ↦ ⟨⟨CompHausLike.effectiveEpiStruct π hπ⟩⟩
  tfae_finish

instance : profiniteToCompHaus.PreservesEffectiveEpis where
  preserves f h :=
    ((CompHaus.effectiveEpi_tfae _).out 0 2).mpr (((Profinite.effectiveEpi_tfae _).out 0 2).mp h)

instance : profiniteToCompHaus.ReflectsEffectiveEpis where
  reflects f h :=
    ((Profinite.effectiveEpi_tfae f).out 0 2).mpr (((CompHaus.effectiveEpi_tfae _).out 0 2).mp h)

/--
An effective presentation of an `X : Profinite` with respect to the inclusion functor from `Stonean`
-/
noncomputable def profiniteToCompHausEffectivePresentation (X : CompHaus) :
    profiniteToCompHaus.EffectivePresentation X where
  p := Stonean.toProfinite.obj X.presentation
  f := CompHaus.presentation.π X
  effectiveEpi := ((CompHaus.effectiveEpi_tfae _).out 0 1).mpr (inferInstance : Epi _)

instance : profiniteToCompHaus.EffectivelyEnough where
  presentation X := ⟨profiniteToCompHausEffectivePresentation X⟩

instance : Preregular Profinite.{u} := profiniteToCompHaus.reflects_preregular

example : Precoherent Profinite.{u} := inferInstance

-- TODO: prove this for `Type*`
open List in
theorem effectiveEpiFamily_tfae
    {α : Type} [Finite α] {B : Profinite.{u}}
    (X : α → Profinite.{u}) (π : (a : α) → (X a ⟶ B)) :
    TFAE
    [ EffectiveEpiFamily X π
    , Epi (Sigma.desc π)
    , ∀ b : B, ∃ (a : α) (x : X a), π a x = b
    ] := by
  tfae_have 2 → 1
  | _ => by
    simpa [← effectiveEpi_desc_iff_effectiveEpiFamily, (effectiveEpi_tfae (Sigma.desc π)).out 0 1]
  tfae_have 1 → 2 := fun _ ↦ inferInstance
  tfae_have 3 ↔ 1 := by
    erw [((CompHaus.effectiveEpiFamily_tfae
      (fun a ↦ profiniteToCompHaus.obj (X a)) (fun a ↦ profiniteToCompHaus.map (π a))).out 2 0 : )]
    exact ⟨fun h ↦ profiniteToCompHaus.finite_effectiveEpiFamily_of_map _ _ h,
      fun _ ↦ inferInstance⟩
  tfae_finish

theorem effectiveEpiFamily_of_jointly_surjective
    {α : Type} [Finite α] {B : Profinite.{u}}
    (X : α → Profinite.{u}) (π : (a : α) → (X a ⟶ B))
    (surj : ∀ b : B, ∃ (a : α) (x : X a), π a x = b) :
    EffectiveEpiFamily X π :=
  ((effectiveEpiFamily_tfae X π).out 2 0).mp surj

end Profinite
```
