# Complete source: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41c3b0ac7417612a2c302f773c4053ea7b95fd44` · SHA-256 `94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Boris Bolvig Kjær, Jon Eugster, Sina Hazratpour
-/
import Mathlib.CategoryTheory.Sites.Coherent
import Mathlib.Topology.Category.Profinite.Limits

/-!
# Effective epimorphic families in `Profinite`

Let `π a : X a ⟶ B` be a family of morphisms in `Profinite` indexed by a finite type `α`.
In this file, we show that the following are all equivalent:
- The family `π` is effective epimorphic.
- The induced map `∐ X ⟶ B` is epimorphic.
- The family `π` is jointly surjective.

## Main results

- `Profinite.effectiveEpiFamily_tfae`: characterise being an effective epimorphic family.
- `Profinite.instPrecoherent`: `Profinite` is precoherent.

## Implementation notes

The entire section `EffectiveEpiFamily` comprises exclusively a technical construction for
the main proof and does not contain any statements that would be useful in other contexts.
-/

open CategoryTheory Limits

namespace Profinite

/-!
This section contains exclusively technical definitions and results that are used
in the proof of `Profinite.effectiveEpiFamily_of_jointly_surjective`.

The construction of `QB` as a quotient of the maps `X a → B` is analoguous to the
construction in the file `CompHaus.EffectiveEpi`,
but one has to start with an equivalence relation on `Profinite` instead.
-/
namespace EffectiveEpiFamily

/- Assume we have a family `X a → B` which is jointly surjective. -/
variable {α : Type} [Fintype α] {B : Profinite}
  {X : α → Profinite} (π : (a : α) → (X a ⟶ B))
  (surj : ∀ b : B, ∃ (a : α) (x : X a), π a x = b)

/--
Implementation: This is a setoid on the explicit finite coproduct of `X` whose quotient
will be isomorphic to `B` provided that `X a → B` is an effective epi family.
-/
def relation : Setoid (finiteCoproduct X) where
  r a b := ∃ (Z : Profinite) (z : Z) (fst : Z ⟶ X a.fst) (snd : Z ⟶ X b.fst),
    fst ≫ π _ = snd ≫ π _ ∧ fst z = a.snd ∧ snd z = b.snd
  iseqv := by
    constructor
    · rintro ⟨a, x⟩
      exact ⟨X a, x, 𝟙 _, 𝟙 _, by simp, rfl, rfl⟩
    · rintro ⟨a, x⟩ ⟨b, y⟩ ⟨Z, z, fst, snd, w, h1, h2⟩
      exact ⟨Z, z, snd, fst, w.symm, h2, h1⟩
    · rintro ⟨a, x⟩ ⟨b, y⟩ ⟨z, c⟩ ⟨Z, z, fstZ, sndZ, hZ, hZ1, hZ2⟩
      rintro ⟨W, w, fstW, sndW, hW, hW1, hW2⟩
      refine ⟨pullback sndZ fstW, ⟨⟨z, w⟩, by dsimp; rw [hZ2, hW1]⟩,
        pullback.fst _ _ ≫ fstZ, pullback.snd _ _ ≫ sndW, ?_, hZ1, hW2⟩
      dsimp only at *
      simp only [Category.assoc, hZ, ← hW]
      apply ContinuousMap.ext
      rintro ⟨⟨u, v⟩, h⟩
      change π b (sndZ u) = π b (fstW v)
      rw [h]

/--
Implementation: The map from the quotient of `relation π` to `B`, which will eventually
become the function underlying an isomorphism, provided that `X a → B` is an effective epi family.
-/
def ιFun : Quotient (relation π) → B :=
  Quotient.lift (fun ⟨a, x⟩ => π a x) <| by
    rintro ⟨a, x⟩ ⟨b, y⟩ ⟨Z, z, fst, snd, h, hx, hy⟩
    dsimp only at *
    rw [← hx, ← hy]
    apply_fun (· z) at h
    exact h

/-- Implementation: `ιFun` is continous. -/
lemma ιFun_continuous : Continuous (ιFun π) := by
  apply Continuous.quotient_lift
  apply continuous_sigma
  intro a
  exact (π a).continuous

/-- Implementation: `ιFun` is injective. -/
lemma ιFun_injective : (ιFun π).Injective := by
  rintro ⟨⟨a, x⟩⟩ ⟨⟨b, y⟩⟩ (h : π _ _ = π _ _)
  apply Quotient.sound'
  refine ⟨pullback (π a) (π b), ⟨⟨x, y⟩, h⟩, pullback.fst _ _, pullback.snd _ _, ?_, rfl, rfl⟩
  ext ⟨_, h⟩
  exact h

/-- Implementation: The quotient of `relation π`, considered as an object of `CompHaus`. -/
def QB' : CompHaus :=
  haveI : T2Space (Quotient <| relation π) :=
    ⟨fun _ _ h => separated_by_continuous (ιFun_continuous π) <| (ιFun_injective π).ne h ⟩
  CompHaus.of (Quotient <| relation π)

/-- Implementation: The function `ιFun`, considered as a morphism in `CompHaus`. -/
def ιHom' : (QB' π) ⟶ B.toCompHaus := ⟨ιFun π, ιFun_continuous π⟩

/-- Implementation: `ιFun` as isomorphism in `CompHaus`. -/
noncomputable
def ιIso' : (QB' π) ≅ B.toCompHaus :=
  have : IsIso (ιHom' π) := by
    apply CompHaus.isIso_of_bijective
    refine ⟨ιFun_injective _, ?_⟩
    intro b
    obtain ⟨a, x, h⟩ := surj b
    exact ⟨Quotient.mk _ ⟨a, x⟩, h⟩
  asIso (ιHom' π)

/-- Implementation: The quotient of `relation π`, considered as an object of `Profinite`. -/
def QB : Profinite where
  toCompHaus := QB' π
  IsTotallyDisconnected := ⟨(CompHaus.homeoOfIso (ιIso' π surj)).embedding.isTotallyDisconnected
    (isTotallyDisconnected_of_totallyDisconnectedSpace _)⟩

/-- Implementation: The function `ιFun`, considered as a morphism in `Profinite`. -/
def ιHom : (QB π surj) ⟶ B := ⟨ιFun π, ιFun_continuous π⟩

/-- Implementation: `ιFun` as an isomorphism in `Profinite`. -/
noncomputable
def ιIso : (QB π surj) ≅ B :=
  have : IsIso (ιHom π surj) := by
    apply Profinite.isIso_of_bijective
    refine ⟨ιFun_injective _, ?_⟩
    intro b
    obtain ⟨a, x, h⟩ := surj b
    exact ⟨Quotient.mk _ ⟨a, x⟩, h⟩
  asIso (ιHom π surj)

/-- Implementation: The family of morphisms `X a ⟶ QB` which will be shown to be effective epi. -/
def π' : (a : α) → (X a ⟶ QB π surj) := fun a =>
  { toFun := fun x => Quotient.mk _ ⟨a, x⟩
    continuous_toFun := by
      apply Continuous.comp
      apply continuous_quot_mk
      apply continuous_sigmaMk (σ := (X ·)) }

/-- Implementation: The family of morphisms `π' a : X a ⟶ QB` is an effective epi. -/
def structAux : EffectiveEpiFamilyStruct X (π' π surj) where
  desc := fun e h => {
    toFun := Quotient.lift (fun ⟨a, x⟩ => e a x) <| by
      rintro ⟨a, x⟩ ⟨b, y⟩ ⟨Z, z, fst, snd, hh, hx, hy⟩
      dsimp at *
      rw [← hx, ← hy]
      specialize h _ _ fst snd ?_
      · ext z
        apply ιFun_injective
        apply_fun (· z) at hh
        exact hh
      apply_fun (· z) at h
      exact h
    continuous_toFun := by
      apply Continuous.quotient_lift
      apply continuous_sigma
      intro a
      exact (e a).continuous }
  fac := by
    intro Z e h a
    ext
    rfl
  uniq := by
    intro Z e h m hm
    ext ⟨⟨a, x⟩⟩
    specialize hm a
    apply_fun (· x) at hm
    exact hm

/-- Implementation: `ιIso ∘ (π' a) : X a → QB → B` is exactly `π a`. -/
@[reassoc]
lemma π'_comp_ι_hom (a : α) : π' π surj a ≫ (ιIso π surj).hom = π a := by
  ext
  rfl

/-- Implementation: `ιIso⁻¹ ∘ (π a) : X a → B → QB` is exactly `π' a`. -/
@[reassoc]
lemma π_comp_ι_inv (a : α) : π a ≫ (ιIso π surj).inv = π' π surj a := by
  rw [Iso.comp_inv_eq]
  exact π'_comp_ι_hom _ surj _

/--
Implementation: The family `X` is an effective epi, provided that `π` are jointly surjective.
The theorem `Profinite.effectiveEpiFamily_tfae` should be used instead.
-/
noncomputable
def struct : EffectiveEpiFamilyStruct X π where
  desc := fun e h => (ιIso π surj).inv ≫ (structAux π surj).desc e (fun a₁ a₂ g₁ g₂ hh => by
    apply h
    rw [← cancel_mono (ιIso _ surj).inv]
    simpa only [Category.assoc, π_comp_ι_inv])
  fac := by
    intro W e h a
    simp only [Eq.ndrec, id_eq, eq_mpr_eq_cast, π_comp_ι_inv_assoc, (structAux π surj).fac]
  uniq := by
    intro W e h m hm
    dsimp
    rw [Iso.eq_inv_comp]
    apply (structAux π surj).uniq
    intro a
    simpa using hm a

end EffectiveEpiFamily

section JointlySurjective

/-- One direction of `Profinite.effectiveEpiFamily_tfae` -/
theorem effectiveEpiFamily_of_jointly_surjective
    {α : Type} [Fintype α] {B : Profinite}
    (X : α → Profinite) (π : (a : α) → (X a ⟶ B))
    (surj : ∀ b : B, ∃ (a : α) (x : X a), π a x = b) :
    EffectiveEpiFamily X π :=
  ⟨⟨Profinite.EffectiveEpiFamily.struct π surj⟩⟩

open List in
/--
For a finite family of profinite spaces `π a : X a → B` the following are equivalent:
* `π` is an effective epimorphic family
* the map `∐ π a ⟶ B` is an epimorphism
* `π` is jointly surjective
-/
theorem effectiveEpiFamily_tfae {α : Type} [Fintype α] {B : Profinite}
    (X : α → Profinite) (π : (a : α) → (X a ⟶ B)) :
    TFAE [
      EffectiveEpiFamily X π,
      Epi (Limits.Sigma.desc π),
      ∀ (b : B), ∃ (a : α) (x : X a), π a x = b ] := by
  tfae_have 1 → 2
  · intro
    infer_instance
  tfae_have 2 → 3
  · intro e
    rw [epi_iff_surjective] at e
    let i : ∐ X ≅ finiteCoproduct X :=
      (colimit.isColimit _).coconePointUniqueUpToIso (finiteCoproduct.isColimit _)
    intro b
    obtain ⟨t, rfl⟩ := e b
    let q := i.hom t
    refine ⟨q.1, q.2, ?_⟩
    have : t = i.inv (i.hom t)
    · show t = (i.hom ≫ i.inv) t
      simp only [i.hom_inv_id]
      rfl
    rw [this]
    show _ = (i.inv ≫ Sigma.desc π) (i.hom t)
    suffices : i.inv ≫ Sigma.desc π = finiteCoproduct.desc X π
    · rw [this]
      rfl
    rw [Iso.inv_comp_eq]
    apply colimit.hom_ext
    rintro ⟨a⟩
    simp only [Discrete.functor_obj, colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app,
      colimit.comp_coconePointUniqueUpToIso_hom_assoc]
    ext
    rfl
  tfae_have 3 → 1
  · apply effectiveEpiFamily_of_jointly_surjective
  tfae_finish

end JointlySurjective

section Coherent

/-- The category of profinite spaces is precoherent -/
instance instPrecoherent : Precoherent Profinite := by
  constructor
  intro B₁ B₂ f α _ X₁ π₁ h₁
  refine ⟨α, inferInstance, (pullback f <| π₁ ·), fun a => pullback.fst _ _, ?_,
    id, fun a => pullback.snd _ _, ?_⟩
  · have := (effectiveEpiFamily_tfae _ π₁).out 0 2
    rw [this] at h₁
    clear this
    have := (effectiveEpiFamily_tfae _ (fun a => pullback.fst f (π₁ a))).out 0 2
    rw [this]
    clear this
    intro b₂
    obtain ⟨a, x, h⟩ := h₁ (f b₂)
    exact ⟨a, ⟨⟨b₂, x⟩, h.symm⟩, rfl⟩
  · intro a
    dsimp
    ext ⟨⟨_, _⟩, h⟩
    exact h.symm

end Coherent

end Profinite
```
