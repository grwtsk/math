# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Separated.Variant405104f9c33e02350e4ce42ea7a6ee90b8e426277a3b658c75d3d0c0f145b6d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edf10f1f3a84b7e1b956021adc1f2eac86ce9768` · SHA-256 `b75d87676f17e0e470868a666085d95b2cc13e2495809908206ce38bff139385`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsSeparated.Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.IsSeparated.Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810","mathematical_subject":"Logic.Foundations","original_sha256":"7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/Rel/Separated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Basic.Rel
public import Mathlib.Data.Set.Pairwise.Basic

/-!
# Uniform separation

This file defines a notion of separation of a set relative to a relation.

For a relation `R`, an `R`-separated set `s` is a set such that every pair of elements of `s` is
`R`-unrelated.

The concept of uniformly separated sets is used to define two further notions of separation:
* Metric separation: `Metric.IsSeparated`, defined using the small distance relation.
* Dynamical nets: `Dynamics.IsDynNetIn`, defined using the dynamical relation.

## TODO

* Actually use `SetRel.IsSeparated` to define the above two notions.
* Link to the notion of separation given by pairwise disjoint balls.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsSeparated.Variant7a510814b95c89d3e0079c4504d51e29e31aeac80eddb3aeb17e80949e31c810

@[expose] public section

open Set

namespace SetRel
variable {X : Type*} {R S : SetRel X X} {s t : Set X} {x : X}

/-- Given a relation `R`, a set `s` is `R`-separated if its elements are pairwise `R`-unrelated from
each other. -/
def IsSeparated (R : SetRel X X) (s : Set X) : Prop := s.Pairwise fun x y ↦ ¬ x ~[R] y

protected lemma IsSeparated.empty : IsSeparated R (∅ : Set X) := pairwise_empty _
protected lemma IsSeparated.singleton : IsSeparated R {x} := pairwise_singleton ..

@[simp] lemma IsSeparated.of_subsingleton (hs : s.Subsingleton) : IsSeparated R s := hs.pairwise _

alias _root_.Set.Subsingleton.relIsSeparated := IsSeparated.of_subsingleton

nonrec lemma IsSeparated.mono_left (hUV : R ⊆ S) (hs : IsSeparated S s) : IsSeparated R s :=
  hs.mono' fun _x _y hxy h ↦ hxy <| hUV h

lemma IsSeparated.mono_right (hst : s ⊆ t) (ht : IsSeparated R t) : IsSeparated R s := ht.mono hst

lemma isSeparated_insert' :
    IsSeparated R (insert x s) ↔ IsSeparated R s ∧ (∀ y ∈ s, x ~[R] y → x = y) ∧
        ∀ y ∈ s, y ~[R] x → x = y := by
  simp [IsSeparated, pairwise_insert, not_imp_comm (a := _ = _), -not_and, forall_and]

lemma isSeparated_insert [R.IsSymm] :
    IsSeparated R (insert x s) ↔ IsSeparated R s ∧ ∀ y ∈ s, x ~[R] y → x = y := by
  have : Std.Symm fun x y ↦ ¬(x, y) ∈ R := { symm _ _ := mt R.symm }
  simpa [not_imp_not, IsSeparated] using pairwise_insert_of_symm (r := fun x y ↦ ¬(x, y) ∈ R)

lemma isSeparated_insert_of_notMem [R.IsSymm] (hx : x ∉ s) :
    IsSeparated R (insert x s) ↔ IsSeparated R s ∧ ∀ y ∈ s, ¬ x ~[R] y :=
  have : Std.Symm fun x y ↦ ¬(x, y) ∈ R := { symm _ _ := mt R.symm }
  pairwise_insert_of_symm_of_notMem hx

protected lemma IsSeparated.insert' (hs : IsSeparated R s) (h : ∀ y ∈ s, x ~[R] y → x = y)
    (h' : ∀ y ∈ s, y ~[R] x → x = y) : IsSeparated R (insert x s) :=
  isSeparated_insert'.2 ⟨hs, h, h'⟩

protected lemma IsSeparated.insert [R.IsSymm] (hs : IsSeparated R s)
    (h : ∀ y ∈ s, x ~[R] y → x = y) : IsSeparated R (insert x s) :=
  isSeparated_insert.2 ⟨hs, h⟩

end SetRel
```
