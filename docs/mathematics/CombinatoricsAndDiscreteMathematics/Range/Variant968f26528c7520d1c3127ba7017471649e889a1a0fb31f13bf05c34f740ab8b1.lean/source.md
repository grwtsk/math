# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variant968f26528c7520d1c3127ba7017471649e889a1a0fb31f13bf05c34f740ab8b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f5292fee013d87b3f94a93edce65391ebd7bec4` · SHA-256 `0f0bd2ff94d238db136caa01714d8957004612a209532140aae5c92498ac98a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteRange.Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteRange.Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"cbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Set/Finite/Range.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Kyle Miller
-/
module

public import Mathlib.Data.Set.Finite.Basic
public import Mathlib.Data.ULift

/-!
# Finiteness of `Set.range`

## Implementation notes

Each result in this file should come in three forms: a `Fintype` instance, a `Finite` instance
and a `Set.Finite` constructor.

## Tags

finite sets
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteRange.Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19

public section

assert_not_exists IsOrderedRing MonoidWithZero

open Set Function

universe u v w x

variable {α : Type u} {β : Type v} {ι : Sort w} {γ : Type x}

namespace Set

/-! ### Fintype instances

Every instance here should have a corresponding `Set.Finite` constructor in the next section.
-/

section FintypeInstances

instance fintypeRange [DecidableEq α] (f : ι → α) [Fintype (PLift ι)] : Fintype (range f) :=
  Fintype.ofFinset (Finset.univ.image <| f ∘ PLift.down) <| by simp

end FintypeInstances

end Set

/-! ### Finite instances

There is seemingly some overlap between the following instances and the `Fintype` instances
in `Data.Set.Finite`. While every `Fintype` instance gives a `Finite` instance, those
instances that depend on `Fintype` or `Decidable` instances need an additional `Finite` instance
to be able to generally apply.

Some set instances do not appear here since they are consequences of others, for example
`Subtype.Finite` for subsets of a finite type.
-/


namespace Finite.Set

instance finite_range (f : ι → α) [Finite ι] : Finite (range f) := by
  classical
  have := Fintype.ofFinite (PLift ι)
  infer_instance

instance finite_replacement [Finite α] (f : α → β) :
    Finite {f x | x : α} :=
  Finite.Set.finite_range f

end Finite.Set

namespace Set

/-! ### Constructors for `Set.Finite`

Every constructor here should have a corresponding `Fintype` instance in the previous section
(or in the `Fintype` module).

The implementation of these constructors ideally should be no more than `Set.toFinite`,
after possibly setting up some `Fintype` and classical `Decidable` instances.
-/


section SetFiniteConstructors

theorem finite_range (f : ι → α) [Finite ι] : (range f).Finite :=
  toFinite _

theorem Finite.dependent_image {s : Set α} (hs : s.Finite) (F : ∀ i ∈ s, β) :
    {y : β | ∃ x hx, F x hx = y}.Finite := by
  have := hs.to_subtype
  simpa [range] using finite_range fun x : s => F x x.2

end SetFiniteConstructors

lemma Finite.exists_subset_finite_image_eq {f : α → β} {s : Set α} {u : Set β}
    (hu : u.Finite) (hsu : u ⊆ f '' s) :
    ∃ᵉ (t ⊆ s) (_ : t.Finite), f '' t = u := by
  have : Finite u := Finite.to_subtype hu
  choose g hg hg' using hsu
  let g' (x : u) : α := g x.property
  exact ⟨range g', fun a ha ↦ by aesop, finite_range _, by aesop⟩

lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteRange.Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.Function.Injective.range_eq_range_iff_subset [Finite α]
    {f g : α → γ} (hf : Function.Injective f) :
    range f = range g ↔ range f ⊆ range g := by
  classical
  have := Fintype.ofFinite α
  grind [eq_of_subset_of_card_le, card_range_of_injective, Fintype.card_range_le]

end Set
```
