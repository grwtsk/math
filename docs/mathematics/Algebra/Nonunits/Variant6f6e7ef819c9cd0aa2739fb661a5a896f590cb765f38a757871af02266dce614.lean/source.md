# Complete source: GRWTSK.Algebra.Nonunits.Variant6f6e7ef819c9cd0aa2739fb661a5a896f590cb765f38a757871af02266dce614

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b447e885ba53f8ff4c7eba469a4ce4a9b8854ca0` · SHA-256 `02e061557f08cdc8610635c6d6a1c34145d3e3ebe1d30693dd88cee2d19e825d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Nonunits.Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Nonunits.Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Ideal/Nonunits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
import Mathlib.RingTheory.Ideal.Maximal

/-!
# The set of non-invertible elements of a monoid

## Main definitions

* `nonunits` is the set of non-invertible elements of a monoid.

## Main results

* `exists_max_ideal_of_mem_nonunits`: every element of `nonunits` is contained in a maximal ideal
-/



namespace GRWTSK.Algebra.Nonunits.Variant4a915602813ee12cefd207c74c4d5c42af7fcc2b8564e8951184cc1d7fdaee35

variable {F α β : Type*} {a b : α}

/-- The set of non-invertible elements of a monoid. -/
def nonunits (α : Type*) [Monoid α] : Set α :=
  { a | ¬IsUnit a }

@[simp]
theorem mem_nonunits_iff [Monoid α] : a ∈ nonunits α ↔ ¬IsUnit a :=
  Iff.rfl

theorem mul_mem_nonunits_right [CommMonoid α] : b ∈ nonunits α → a * b ∈ nonunits α :=
  mt isUnit_of_mul_isUnit_right

theorem mul_mem_nonunits_left [CommMonoid α] : a ∈ nonunits α → a * b ∈ nonunits α :=
  mt isUnit_of_mul_isUnit_left

theorem zero_mem_nonunits [MonoidWithZero α] : 0 ∈ nonunits α ↔ (0 : α) ≠ 1 :=
  not_congr isUnit_zero_iff

@[simp 1001] -- increased priority to appease `simpNF`
theorem one_notMem_nonunits [Monoid α] : (1 : α) ∉ nonunits α :=
  not_not_intro isUnit_one

@[deprecated (since := "2025-05-23")] alias one_not_mem_nonunits := one_notMem_nonunits

-- Porting note : as this can be proved by other `simp` lemmas, this is marked as high priority.
@[simp (high)]
theorem map_mem_nonunits_iff [Monoid α] [Monoid β] [FunLike F α β] [MonoidHomClass F α β] (f : F)
    [IsLocalHom f] (a) : f a ∈ nonunits β ↔ a ∈ nonunits α :=
  ⟨fun h ha => h <| ha.map f, fun h ha => h <| ha.of_map⟩

theorem coe_subset_nonunits [Semiring α] {I : Ideal α} (h : I ≠ ⊤) : (I : Set α) ⊆ nonunits α :=
  fun _x hx hu => h <| I.eq_top_of_isUnit_mem hx hu

theorem exists_max_ideal_of_mem_nonunits [CommSemiring α] (h : a ∈ nonunits α) :
    ∃ I : Ideal α, I.IsMaximal ∧ a ∈ I := by
  have : Ideal.span ({a} : Set α) ≠ ⊤ := by
    intro H
    rw [Ideal.span_singleton_eq_top] at H
    contradiction
  rcases Ideal.exists_le_maximal _ this with ⟨I, Imax, H⟩
  use I, Imax
  apply H
  apply Ideal.subset_span
  exact Set.mem_singleton a
```
