# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.NonemptyFiniteChains.Variantfb69c6d90b1a336e62c1d4188f7a74a7f13122495b263062a1b7b365467b5037

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44945333526ee894a8c69158f52ed47dd9c0c048` · SHA-256 `5ec1bf8294f2f65cd24ebea2c56423e742e390cf952ada5b79df815574da91b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.NonemptyFiniteChains.Variantf8c05ef2f0221532dc8eb9e177fae2ea8f512d04c0c750ee204a30362b55aa6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8c05ef2f0221532dc8eb9e177fae2ea8f512d04c0c750ee204a30362b55aa6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.NonemptyFiniteChains.Variantf8c05ef2f0221532dc8eb9e177fae2ea8f512d04c0c750ee204a30362b55aa6f","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f8c05ef2f0221532dc8eb9e177fae2ea8f512d04c0c750ee204a30362b55aa6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/NonemptyFiniteChains.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Order.Category.PartOrd
public import Mathlib.Data.Finset.Empty
public import Mathlib.Data.Finset.Image

/-!
# Nonempty finite chains in a partially ordered type

Given a partially ordered type `X`, we introduce the type
`NonemptyFiniteChains` of nonempty finite chains in `X`, i.e.
nonempty finite subsets `A` of `X` such that all the elements
in `A` are comparable.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.NonemptyFiniteChains.Variantf8c05ef2f0221532dc8eb9e177fae2ea8f512d04c0c750ee204a30362b55aa6f

@[expose] public section

universe v u

open CategoryTheory

namespace PartialOrder

/-- Given a partially ordered type `X`, this is the type of nonempty finite
subsets `A` of `X` such that all the elements of `A` are comparable. -/
@[ext]
structure NonemptyFiniteChains (X : Type u) [PartialOrder X] where
  /-- a finite subset -/
  finset : Finset X
  nonempty : finset.Nonempty := by simp
  comparable (a b : finset) : a ≤ b ∨ b ≤ a

namespace NonemptyFiniteChains

attribute [simp] nonempty

instance (X : Type u) [PartialOrder X] : PartialOrder (NonemptyFiniteChains X) :=
  PartialOrder.lift finset (fun _ _ _ ↦ by aesop)

variable {X Y : Type*} [PartialOrder X] [PartialOrder Y]

@[simp]
lemma le_iff (A B : NonemptyFiniteChains X) : A ≤ B ↔ A.finset ≤ B.finset := Iff.rfl

@[simp]
lemma lt_iff (A B : NonemptyFiniteChains X) : A < B ↔ A.finset < B.finset := Iff.rfl

open scoped Classical in
/-- The image of a nonempty finite chain by a monotone map. -/
noncomputable def map (s : NonemptyFiniteChains X) (f : X →o Y) :
    NonemptyFiniteChains Y where
  finset := Finset.image f s.finset
  comparable := by
    rintro ⟨a, ha⟩ ⟨b, hb⟩
    simp only [Finset.mem_image] at ha hb
    obtain ⟨a, ha', rfl⟩ := ha
    obtain ⟨b, hb', rfl⟩ := hb
    obtain h | h := s.comparable ⟨_, ha'⟩ ⟨_, hb'⟩
    · exact Or.inl (f.monotone h)
    · exact Or.inr (f.monotone h)

@[simp]
lemma mem_map_iff (s : NonemptyFiniteChains X) (f : X →o Y) (y : Y) :
    y ∈ (s.map f).finset ↔ ∃ x, x ∈ s.finset ∧ f x = y := by
  simp [map]

/-- The monotone map `NonemptyFiniteChains X →o NonemptyFiniteChains Y`
that is induced by `f : X →o Y`. -/
@[simps]
noncomputable def orderHomMap (f : X →o Y) :
    NonemptyFiniteChains X →o NonemptyFiniteChains Y where
  toFun s := map s f
  monotone' a b h x hx := by
    simp only [mem_map_iff] at hx ⊢
    obtain ⟨x, hx, rfl⟩ := hx
    exact ⟨x, h hx, rfl⟩

end NonemptyFiniteChains

end PartialOrder

open PartialOrder in
/-- The functor `PartOrd ⥤ PartOrd` which sends a partially ordered type `X`
to `NonemptyFiniteChains X`. -/
@[simps]
noncomputable def PartOrd.nonemptyFiniteChainsFunctor : PartOrd.{u} ⥤ PartOrd.{u} where
  obj X := ↧(NonemptyFiniteChains X)
  map f := PartOrd.ofHom (NonemptyFiniteChains.orderHomMap f.hom)
```
