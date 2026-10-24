# Complete source: GRWTSK.Topology.AlgebraicTopology.Nonempty.Variant4fd9d64022a29ac456315325629fa768a05db3f31ff2eb8f37c78c6713209aa9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b0dea3060397c203b8b6ed2fef0b3a04318dc9b` · SHA-256 `babbc27ecff0075de6847b6f14fe815ee36a7e45e29f74dbe21057408a12fbd6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.Nonempty.Variant9acacbf0a252f9cd45f08792fc45178d2a672dd4f7a7f54ce9288bb22e44a14c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9acacbf0a252f9cd45f08792fc45178d2a672dd4f7a7f54ce9288bb22e44a14c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Nonempty.Variant9acacbf0a252f9cd45f08792fc45178d2a672dd4f7a7f54ce9288bb22e44a14c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9acacbf0a252f9cd45f08792fc45178d2a672dd4f7a7f54ce9288bb22e44a14c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/Nonempty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex

/-!
# Nonempty simplicial sets

-/


namespace GRWTSK.Topology.AlgebraicTopology.Nonempty.Variant9acacbf0a252f9cd45f08792fc45178d2a672dd4f7a7f54ce9288bb22e44a14c

@[expose] public section

universe u

open CategoryTheory Limits

open scoped Simplicial

namespace SSet

variable (X : SSet.{u})

/-- A simplicial set is nonempty when the type of `0`-simplices is nonempty. -/
protected abbrev Nonempty : Prop := _root_.Nonempty (X _⦋0⦌)

variable {X} in
lemma Nonempty.mk {n : SimplexCategoryᵒᵖ} (x : X.obj n) : X.Nonempty :=
  ⟨X.map (SimplexCategory.const _ _ 0).op x⟩

instance (n : SimplexCategoryᵒᵖ) [X.Nonempty] : Nonempty (X.obj n) :=
  ⟨X.map (SimplexCategory.const n.unop ⦋0⦌ 0).op (Classical.arbitrary _)⟩

instance [X.Nonempty] : Nonempty X.N := ⟨N.mk (n := 0) (Classical.arbitrary _) (by simp)⟩

instance [X.Nonempty] : Nonempty X.S := ⟨S.mk (dim := 0) (Classical.arbitrary _)⟩

instance (T : Type u) [Preorder T] [Nonempty T] : (nerve T).Nonempty :=
  ⟨.mk₀ (Classical.arbitrary _)⟩

instance (n : SimplexCategory) : (stdSimplex.obj n).Nonempty :=
  ⟨stdSimplex.objEquiv.symm (SimplexCategory.const _ _ 0)⟩

variable {X} in
lemma nonempty_of_hom {Y : SSet.{u}} (f : Y ⟶ X) [Y.Nonempty] : X.Nonempty :=
  ⟨f.app _ (Classical.arbitrary _)⟩

lemma notNonempty_iff_hasDimensionLT_zero :
    ¬ X.Nonempty ↔ X.HasDimensionLT 0 := by
  simp only [not_nonempty_iff]
  refine ⟨fun _ ↦ ⟨fun n hn ↦ ?_⟩, fun _ ↦ ⟨fun x ↦ ?_⟩⟩
  · have := Function.isEmpty (X.map (⦋0⦌.const ⦋n⦌ 0).op)
    subsingleton
  · exact (lt_self_iff_false _).1 (X.dim_lt_of_nonDegenerate ⟨x, by simp⟩ 0)

variable {X} in
/-- If a simplicial set is not nonempty, it is an initial object. -/
def isInitialOfNotNonempty (hX : ¬ X.Nonempty) : IsInitial X := by
  simp only [not_nonempty_iff] at hX
  have (n : SimplexCategoryᵒᵖ) : IsEmpty (X.obj n) :=
    Function.isEmpty (X.map (⦋0⦌.const n.unop 0).op)
  exact IsInitial.ofUniqueHom (fun _ ↦
    { app _ := ↾fun x ↦ isEmptyElim x
      naturality _ _ _  := by ext x; exact isEmptyElim x })
    (fun _ _ ↦ by ext _ x; exact isEmptyElim x)

end SSet
```
