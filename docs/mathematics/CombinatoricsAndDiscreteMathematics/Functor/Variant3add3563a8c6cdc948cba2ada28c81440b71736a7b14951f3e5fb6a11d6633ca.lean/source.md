# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Functor.Variant3add3563a8c6cdc948cba2ada28c81440b71736a7b14951f3e5fb6a11d6633ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dd33940898e821853749c1f3f066e6b2ec6226d` · SHA-256 `a705e8616aa4ba90af5f71f05b60e86eb99e1f844e91633f940feb44a2cfe350`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FmapDef.Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FmapDef.Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Finset/Functor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Scott Morrison
-/
import Mathlib.Data.Finset.Lattice
import Mathlib.Data.Finset.NAry
import Mathlib.Data.Multiset.Functor


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FmapDef.Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82

#align_import data.finset.functor from "leanprover-community/mathlib"@"bcfa726826abd57587355b4b5b7e78ad6527b7e4"

/-!
# Functoriality of `Finset`

This file defines the functor structure of `Finset`.

## TODO

Currently, all instances are classical because the functor classes want to run over all types. If
instead we could state that a functor is lawful/applicative/traversable... between two given types,
then we could provide the instances for types with decidable equality.
-/


universe u

open Function

namespace Finset

/-! ### Functor -/

section Functor

variable {α β : Type u} [∀ P, Decidable P]

/-- Because `Finset.image` requires a `DecidableEq` instance for the target type, we can only
construct `Functor Finset` when working classically. -/
protected instance functor : Functor Finset where map f s := s.image f

instance lawfulFunctor : LawfulFunctor Finset where
  id_map s := image_id
  comp_map f g s := image_image.symm
  map_const {α} {β} := by simp only [Functor.mapConst, Functor.map]

@[simp]
theorem fmap_def {s : Finset α} (f : α → β) : f <$> s = s.image f := rfl
#align finset.fmap_def Finset.fmap_def

end Functor

/-! ### Pure -/


protected instance pure : Pure Finset :=
  ⟨fun x => {x}⟩

@[simp]
theorem pure_def {α} : (pure : α → Finset α) = singleton := rfl
#align finset.pure_def Finset.pure_def

/-! ### Applicative functor -/


section Applicative

variable {α β : Type u} [∀ P, Decidable P]

protected instance applicative : Applicative Finset :=
  { Finset.functor, Finset.pure with
    seq := fun t s => t.sup fun f => (s ()).image f
    seqLeft := fun s t => if t () = ∅ then ∅ else s
    seqRight := fun s t => if s = ∅ then ∅ else t () }

@[simp]
theorem seq_def (s : Finset α) (t : Finset (α → β)) : t <*> s = t.sup fun f => s.image f :=
  rfl
#align finset.seq_def Finset.seq_def

@[simp]
theorem seqLeft_def (s : Finset α) (t : Finset β) : s <* t = if t = ∅ then ∅ else s :=
  rfl
#align finset.seq_left_def Finset.seqLeft_def

@[simp]
theorem seqRight_def (s : Finset α) (t : Finset β) : s *> t = if s = ∅ then ∅ else t :=
  rfl
#align finset.seq_right_def Finset.seqRight_def

/-- `Finset.image₂` in terms of monadic operations. Note that this can't be taken as the definition
because of the lack of universe polymorphism. -/
theorem image₂_def {α β γ : Type _} (f : α → β → γ) (s : Finset α) (t : Finset β) :
    image₂ f s t = f <$> s <*> t := by
  ext
  simp [mem_sup]
#align finset.image₂_def Finset.image₂_def

instance lawfulApplicative : LawfulApplicative Finset :=
  { Finset.lawfulFunctor with
    seqLeft_eq := fun s t => by
      rw [seq_def, fmap_def, seqLeft_def]
      obtain rfl | ht := t.eq_empty_or_nonempty
      · simp_rw [image_empty, if_true]
        exact (sup_bot _).symm
      · ext a
        rw [if_neg ht.ne_empty, mem_sup]
        refine' ⟨fun ha => ⟨const _ a, mem_image_of_mem _ ha, mem_image_const_self.2 ht⟩, _⟩
        rintro ⟨f, hf, ha⟩
        rw [mem_image] at hf ha
        obtain ⟨b, hb, rfl⟩ := hf
        obtain ⟨_, _, rfl⟩ := ha
        exact hb
    seqRight_eq := fun s t => by
      rw [seq_def, fmap_def, seqRight_def]
      obtain rfl | hs := s.eq_empty_or_nonempty
      · rw [if_pos rfl, image_empty, sup_empty, bot_eq_empty]
      · ext a
        rw [if_neg hs.ne_empty, mem_sup]
        refine' ⟨fun ha => ⟨id, mem_image_const_self.2 hs, by rwa [image_id]⟩, _⟩
        rintro ⟨f, hf, ha⟩
        rw [mem_image] at hf ha
        obtain ⟨b, hb, rfl⟩ := ha
        obtain ⟨_, _, rfl⟩ := hf
        exact hb
    pure_seq := fun f s => by simp only [pure_def, seq_def, sup_singleton, fmap_def]
    map_pure := fun f a => image_singleton _ _
    seq_pure := fun s a => sup_singleton'' _ _
    seq_assoc := fun s t u => by
      ext a
      simp_rw [seq_def, fmap_def]
      simp only [exists_prop, mem_sup, mem_image]
      constructor
      · rintro ⟨g, hg, b, ⟨f, hf, a, ha, rfl⟩, rfl⟩
        exact ⟨g ∘ f, ⟨comp g, ⟨g, hg, rfl⟩, f, hf, rfl⟩, a, ha, rfl⟩
      · rintro ⟨c, ⟨_, ⟨g, hg, rfl⟩, f, hf, rfl⟩, a, ha, rfl⟩
        exact ⟨g, hg, f a, ⟨f, hf, a, ha, rfl⟩, rfl⟩ }

instance commApplicative : CommApplicative Finset :=
  { Finset.lawfulApplicative with
    commutative_prod := fun s t => by
      simp_rw [seq_def, fmap_def, sup_image, sup_eq_biUnion]
      change (s.biUnion fun a => t.image fun b => (a, b))
        = t.biUnion fun b => s.image fun a => (a, b)
      trans s ×ˢ t <;> [rw [product_eq_biUnion]; rw [product_eq_biUnion_right]] }

end Applicative

/-! ### Monad -/


section Monad

variable [∀ P, Decidable P]

instance : Monad Finset :=
  { Finset.applicative with bind := sup }

@[simp]
theorem bind_def {α β} : (· >>= ·) = sup (α := Finset α) (β := β) :=
  rfl
#align finset.bind_def Finset.bind_def

instance : LawfulMonad Finset :=
  { Finset.lawfulApplicative with
    bind_pure_comp := fun f s => sup_singleton'' _ _
    bind_map := fun t s => rfl
    pure_bind := fun t s => sup_singleton
    bind_assoc := fun s f g => by simp only [bind, ←sup_biUnion, sup_eq_biUnion, biUnion_biUnion] }

end Monad

/-! ### Alternative functor -/


section Alternative

variable [∀ P, Decidable P]

instance : Alternative Finset :=
  { Finset.applicative with
    orElse := fun s t => (s ∪ t ())
    failure := ∅ }

end Alternative

/-! ### Traversable functor -/


section Traversable

variable {α β γ : Type u} {F G : Type u → Type u} [Applicative F] [Applicative G]
  [CommApplicative F] [CommApplicative G]

/-- Traverse function for `Finset`. -/
def traverse [DecidableEq β] (f : α → F β) (s : Finset α) : F (Finset β) :=
  Multiset.toFinset <$> Multiset.traverse f s.1
#align finset.traverse Finset.traverse

@[simp]
theorem id_traverse [DecidableEq α] (s : Finset α) : traverse (pure : α → Id α) s = s := by
  rw [traverse, Multiset.id_traverse]
  exact s.val_toFinset
#align finset.id_traverse Finset.id_traverse

open Classical

@[simp]
theorem map_comp_coe (h : α → β) :
    Functor.map h ∘ Multiset.toFinset = Multiset.toFinset ∘ Functor.map h :=
  funext fun _ => image_toFinset
#align finset.map_comp_coe Finset.map_comp_coe

theorem map_traverse (g : α → G β) (h : β → γ) (s : Finset α) :
    Functor.map h <$> traverse g s = traverse (Functor.map h ∘ g) s := by
  unfold traverse
  simp only [map_comp_coe, functor_norm]
  rw [LawfulFunctor.comp_map, Multiset.map_traverse]
#align finset.map_traverse Finset.map_traverse

end Traversable

end Finset
```
