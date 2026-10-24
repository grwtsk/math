# Complete source: GRWTSK.Algebra.GroupTheory.Cyclic.Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb80831434b8cbe21d4b6b04c093397cdabe0928` · SHA-256 `df3e0c844c2885713ff389955c25722b08effc93306f0396f52949ae5d79e1a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ExistsGeneratorLtOne.Variante6ee447c6abffb59a0d59ffe2b3be3060fc78393ffdab636e0ab6c34af764551","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6ee447c6abffb59a0d59ffe2b3be3060fc78393ffdab636e0ab6c34af764551","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ExistsGeneratorLtOne.Variante6ee447c6abffb59a0d59ffe2b3be3060fc78393ffdab636e0ab6c34af764551","mathematical_subject":"Algebra.Groups","original_sha256":"e6ee447c6abffb59a0d59ffe2b3be3060fc78393ffdab636e0ab6c34af764551","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Group/Cyclic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 María Inés de Frutos-Fernández, Filippo A. E. Nuccio. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández, Filippo A. E. Nuccio
-/
import Mathlib.GroupTheory.SpecificGroups.Cyclic

/-!
# Cyclic linearly ordered groups

This file contains basic results about cyclic linearly ordered groups and their subgroups.

The definitions `LinearOrderedCommGroup.Subgroup.genLTOne` (*resp.*
`LinearOrderedCommGroup.genLTOone`) yields a generator of a non-trivial subgroup of a linearly
ordered commutative group with (*resp.* of a non-trivial linearly ordered commutative group) that
is strictly less than `1`. The corresponding additive definitions are also provided.
-/


namespace GRWTSK.Algebra.GroupTheory.ExistsGeneratorLtOne.Variante6ee447c6abffb59a0d59ffe2b3be3060fc78393ffdab636e0ab6c34af764551

noncomputable section

namespace LinearOrderedCommGroup

open LinearOrderedCommGroup

variable {G : Type*} [CommGroup G] [LinearOrder G] [IsOrderedMonoid G] [IsCyclic G]
namespace Subgroup

variable (H : Subgroup G) [Nontrivial H]

@[to_additive exists_neg_generator]
lemma exists_generator_lt_one : ∃ (a : G), a < 1 ∧ Subgroup.zpowers a = H := by
  obtain ⟨a, ha⟩ := H.isCyclic_iff_exists_zpowers_eq_top.mp H.isCyclic
  obtain ha1 | rfl | ha1 := lt_trichotomy a 1
  · exact ⟨a, ha1, ha⟩
  · rw [Subgroup.zpowers_one_eq_bot] at ha
    exact absurd ha.symm <| (H.nontrivial_iff_ne_bot).mp inferInstance
  · use a⁻¹, Left.inv_lt_one_iff.mpr ha1
    rw [Subgroup.zpowers_inv, ha]

/-- Given a subgroup of a cyclic linearly ordered commutative group, this is a generator of
the subgroup that is `< 1`. -/
@[to_additive negGen "Given an additive subgroup of an additive cyclic linearly ordered
commutative group, this is a negative generator of the subgroup."]
protected noncomputable def genLTOne : G := H.exists_generator_lt_one.choose

@[to_additive negGen_neg]
lemma genLTOne_lt_one (H : Subgroup G) [Nontrivial H] : H.genLTOne < 1 :=
  H.exists_generator_lt_one.choose_spec.1

@[to_additive (attr := simp) negGen_zmultiples_eq_top]
lemma genLTOne_zpowers_eq_top (H : Subgroup G) [Nontrivial H] : Subgroup.zpowers H.genLTOne = H :=
  H.exists_generator_lt_one.choose_spec.2

end Subgroup

variable (G) [Nontrivial G]

/-- Given a cyclic linearly ordered commutative group, this is a generator that is `< 1`. -/
@[to_additive negGen "Given an additive cyclic linearly ordered commutative group, this is a
negative generator of it."]
noncomputable def genLTOne : G := (⊤ : Subgroup G).genLTOne

@[to_additive (attr := simp) negGen_eq_of_top]
lemma genLTOne_eq_of_top : genLTOne G = (⊤ : Subgroup G).genLTOne := rfl

end LinearOrderedCommGroup
```
