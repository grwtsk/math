-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.PresentedGroup.Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.PresentedGroup.Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958","mathematical_subject":"Algebra.Groups","original_sha256":"6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/GroupTheory/PresentedGroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Michael Howes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Howes
-/
import Mathlib.GroupTheory.FreeGroup
import Mathlib.GroupTheory.QuotientGroup


namespace GRWTSK.Algebra.GroupTheory.PresentedGroup.Variant6b86f542fcf8390f8cf3f9759182f4281d7dab0079baefc1bdea596a6b401958

#align_import group_theory.presented_group from "leanprover-community/mathlib"@"d90e4e186f1d18e375dcd4e5b5f6364b01cb3e46"

/-!
# Defining a group given by generators and relations

Given a subset `rels` of relations of the free group on a type `α`, this file constructs the group
given by generators `x : α` and relations `r ∈ rels`.

## Main definitions

* `PresentedGroup rels`: the quotient group of the free group on a type `α` by a subset `rels` of
  relations of the free group on `α`.
* `of`: The canonical map from `α` to a presented group with generators `α`.
* `toGroup f`: the canonical group homomorphism `PresentedGroup rels → G`, given a function
  `f : α → G` from a type `α` to a group `G` which satisfies the relations `rels`.

## Tags

generators, relations, group presentations
-/


variable {α : Type*}

/-- Given a set of relations, `rels`, over a type `α`, `PresentedGroup` constructs the group with
generators `x : α` and relations `rels` as a quotient of `FreeGroup α`. -/
def PresentedGroup (rels : Set (FreeGroup α)) :=
  FreeGroup α ⧸ Subgroup.normalClosure rels
#align presented_group PresentedGroup

namespace PresentedGroup

instance (rels : Set (FreeGroup α)) : Group (PresentedGroup rels) :=
  QuotientGroup.Quotient.group _

/-- `of` is the canonical map from `α` to a presented group with generators `x : α`. The term `x` is
mapped to the equivalence class of the image of `x` in `FreeGroup α`. -/
def of {rels : Set (FreeGroup α)} (x : α) : PresentedGroup rels :=
  QuotientGroup.mk (FreeGroup.of x)
#align presented_group.of PresentedGroup.of

section ToGroup

/-
Presented groups satisfy a universal property. If `G` is a group and `f : α → G` is a map such that
the images of `f` satisfy all the given relations, then `f` extends uniquely to a group homomorphism
from `PresentedGroup rels` to `G`.
-/
variable {G : Type*} [Group G] {f : α → G} {rels : Set (FreeGroup α)}

-- mathport name: exprF
local notation "F" => FreeGroup.lift f

-- Porting note: `F` has been expanded, because `F r = 1` produces a sorry.
variable (h : ∀ r ∈ rels, FreeGroup.lift f r = 1)

theorem closure_rels_subset_ker : Subgroup.normalClosure rels ≤ MonoidHom.ker F :=
  Subgroup.normalClosure_le_normal fun x w ↦ (MonoidHom.mem_ker _).2 (h x w)
#align presented_group.closure_rels_subset_ker PresentedGroup.closure_rels_subset_ker

theorem to_group_eq_one_of_mem_closure : ∀ x ∈ Subgroup.normalClosure rels, F x = 1 :=
  fun _ w ↦ (MonoidHom.mem_ker _).1 <| closure_rels_subset_ker h w
#align presented_group.to_group_eq_one_of_mem_closure PresentedGroup.to_group_eq_one_of_mem_closure

/-- The extension of a map `f : α → G` that satisfies the given relations to a group homomorphism
from `PresentedGroup rels → G`. -/
def toGroup : PresentedGroup rels →* G :=
  QuotientGroup.lift (Subgroup.normalClosure rels) F (to_group_eq_one_of_mem_closure h)
#align presented_group.to_group PresentedGroup.toGroup

@[simp]
theorem toGroup.of {x : α} : toGroup h (of x) = f x :=
  FreeGroup.lift.of
#align presented_group.to_group.of PresentedGroup.toGroup.of

theorem toGroup.unique (g : PresentedGroup rels →* G)
    (hg : ∀ x : α, g (PresentedGroup.of x) = f x) : ∀ {x}, g x = toGroup h x := by
  intro x
  refine' QuotientGroup.induction_on x _
  exact fun _ ↦ FreeGroup.lift.unique (g.comp (QuotientGroup.mk' _)) hg
#align presented_group.to_group.unique PresentedGroup.toGroup.unique

end ToGroup

instance (rels : Set (FreeGroup α)) : Inhabited (PresentedGroup rels) :=
  ⟨1⟩

end PresentedGroup
