# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Basic.Varianta88f400f36e450792f01bdd98cf7f887553d01292cab052ac5bc133e54ae1054

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9343cf9ab6833297ca7d664d5efa7fa1fdcd72c3` · SHA-256 `64b69fc0afec67ff47486880178a7e1b12b4be37542d427130934f88b582a1b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Partition.Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.Partition.Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Partition/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Peter Nelson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Peter Nelson
-/
import Mathlib.Data.SetLike.Basic
import Mathlib.Order.SupIndep

/-!
# Partitions

A `Partition` of an element `a` in a complete lattice is an independent family of nontrivial
elements whose supremum is `a`.

An important special case is where `s : Set α`, where a `Partition s` corresponds to a partition
of the elements of `s` into a family of nonempty sets.
This is equivalent to a transitive and symmetric binary relation `r : α → α → Prop`
where `s` is the set of all `x` for which `r x x`.

## Main definitions

* For `[CompleteLattice α]` and `s : α`, a `Set.Partition s` is an independent collection of
  nontrivial elements whose supremum is `s`.

## TODO

* Link this to `Finpartition`.
* Give API lemmas for the specialization to the `Set` case.

-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Partition.Variant11514555716413f8a4a937ef2be1751b8ed8c4ae393936e670145e8204e69b72

variable {α : Type*} {s x y : α}

open Set

/-- A `Partition` of an element `s` of a `CompleteLattice` is a collection of
independent nontrivial elements whose supremum is `s`. -/
structure Partition [CompleteLattice α] (s : α) where
  /-- The collection of parts -/
  parts : Set α
  /-- The parts are `sSupIndep`. -/
  sSupIndep' : sSupIndep parts
  /-- The bottom element is not a part. -/
  bot_notMem' : ⊥ ∉ parts
  /-- The supremum of all parts is `s`. -/
  sSup_eq' : sSup parts = s

namespace Partition

@[deprecated (since := "2025-05-23")] alias bot_not_mem' := bot_notMem'

section Basic

variable [CompleteLattice α] {P : Partition s}

instance {s : α} : SetLike (Partition s) α where
  coe := Partition.parts
  coe_injective' p p' h := by cases p; cases p'; simpa using h

/-- See Note [custom simps projection]. -/
def Simps.coe {s : α} (P : Partition s) : Set α := P

initialize_simps_projections Partition (parts → coe, as_prefix coe)

@[simp] lemma coe_parts : P.parts = P := rfl

@[ext] lemma ext {P Q : Partition s} (hP : ∀ x, x ∈ P ↔ x ∈ Q) : P = Q :=
  SetLike.ext hP

@[simp]
lemma sSupIndep (P : Partition s) : sSupIndep (P : Set α) :=
  P.sSupIndep'

lemma disjoint (hx : x ∈ P) (hy : y ∈ P) (hxy : x ≠ y) :
    Disjoint x y :=
  P.sSupIndep.pairwiseDisjoint hx hy hxy

lemma pairwiseDisjoint : Set.PairwiseDisjoint (P : Set α) id :=
  P.sSupIndep'.pairwiseDisjoint

@[simp]
lemma sSup_eq (P : Partition s) : sSup P = s :=
  P.sSup_eq'

@[simp]
lemma iSup_eq (P : Partition s) : ⨆ x ∈ P, x = s := by
  simp_rw [← P.sSup_eq, sSup_eq_iSup]
  rfl

lemma le_of_mem (P : Partition s) (hx : x ∈ P) : x ≤ s :=
  (le_sSup hx).trans_eq P.sSup_eq

lemma parts_nonempty (P : Partition s) (hs : s ≠ ⊥) : (P : Set α).Nonempty :=
  nonempty_iff_ne_empty.2 fun hP ↦ by simp [← P.sSup_eq, hP, sSup_empty] at hs

@[simp]
lemma bot_notMem (P : Partition s) : ⊥ ∉ P :=
  P.bot_notMem'

@[deprecated (since := "2025-05-23")] alias bot_not_mem := bot_notMem

lemma ne_bot_of_mem (hx : x ∈ P) : x ≠ ⊥ :=
  fun h ↦ P.bot_notMem <| h ▸ hx

lemma bot_lt_of_mem (hx : x ∈ P) : ⊥ < x :=
  bot_lt_iff_ne_bot.2 <| P.ne_bot_of_mem hx

/-- Convert a `Partition s` into a `Partition t` via an equality `s = t`. -/
@[simps]
protected def copy {t : α} (P : Partition s) (hst : s = t) : Partition t where
  parts := P
  sSupIndep' := P.sSupIndep
  bot_notMem' := P.bot_notMem
  sSup_eq' := hst ▸ P.sSup_eq

@[simp]
lemma mem_copy_iff {t x : α} {P : Partition s} (hst : s = t) : x ∈ P.copy hst ↔ x ∈ P := Iff.rfl

/-- The natural equivalence between the subtype of parts and the subtype of parts of a copy. -/
@[simps!]
def partscopyEquiv {t : α} (P : Partition s) (hst : s = t) : ↥(P.copy hst) ≃ ↥P :=
  Equiv.setCongr rfl

/-- A constructor for `Partition s` that removes `⊥` from the set of parts. -/
@[simps]
def removeBot (P : Set α) (indep : _root_.sSupIndep P) (sSup_eq : sSup P = s) : Partition s where
  parts := P \ {⊥}
  sSupIndep' := indep.mono diff_subset
  bot_notMem' := by simp
  sSup_eq' := by simp [← sSup_eq]

end Basic

end Partition
```
