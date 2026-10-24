# Complete source: GRWTSK.Algebra.GroupTheory.Commutator.Variantf6e7d2457b23421cbbe8c8c6ab7a9ab1dafdf8615ddd1d3260191bb6637fdd25

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c40a0fb672ea05a28a41eef01619184202d07f9d` · SHA-256 `8fe45e3a4b1694af3cbf15cca0571a9caa3658b5eca62191bd3db72dff64e8f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.CommutatorElementDef.Variant9883beeb5cabae181399cd63bde0b5fb27ae5f5019e592e59d62d2e6391fe460","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9883beeb5cabae181399cd63bde0b5fb27ae5f5019e592e59d62d2e6391fe460","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.CommutatorElementDef.Variant9883beeb5cabae181399cd63bde0b5fb27ae5f5019e592e59d62d2e6391fe460","mathematical_subject":"Algebra.Groups","original_sha256":"9883beeb5cabae181399cd63bde0b5fb27ae5f5019e592e59d62d2e6391fe460","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Commutator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
import Mathlib.Algebra.Group.Defs
import Mathlib.Data.Bracket

/-!
# The bracket on a group given by commutator.
-/


namespace GRWTSK.Algebra.GroupTheory.CommutatorElementDef.Variant9883beeb5cabae181399cd63bde0b5fb27ae5f5019e592e59d62d2e6391fe460

assert_not_exists MonoidWithZero DenselyOrdered

/-- The commutator of two elements `g₁` and `g₂`. -/
instance commutatorElement {G : Type*} [Group G] : Bracket G G :=
  ⟨fun g₁ g₂ ↦ g₁ * g₂ * g₁⁻¹ * g₂⁻¹⟩

theorem commutatorElement_def {G : Type*} [Group G] (g₁ g₂ : G) :
    ⁅g₁, g₂⁆ = g₁ * g₂ * g₁⁻¹ * g₂⁻¹ :=
  rfl
```
