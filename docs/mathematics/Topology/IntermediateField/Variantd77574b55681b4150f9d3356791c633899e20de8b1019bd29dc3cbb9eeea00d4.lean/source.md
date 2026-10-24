# Complete source: GRWTSK.Topology.IntermediateField.Variantd77574b55681b4150f9d3356791c633899e20de8b1019bd29dc3cbb9eeea00d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0df41ee41778c5c73d4f65d52e85cadd58e0eb28` · SHA-256 `7c1ffceba09d65d8b70ecccf93b91b65430faa22e050cb0c3970800c3f072e3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.Adjoin.Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Adjoin.Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/IntermediateField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jiedong Jiang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jiedong Jiang
-/
import Mathlib.FieldTheory.IntermediateField.Adjoin.Defs
import Mathlib.Topology.Algebra.Field

/-!
# Continuous actions related to intermediate fields

In this file we define the instances related to continuous actions of
intermediate fields. The topology on intermediate fields is already defined
in earlier file `Mathlib/Topology/Algebra/Field.lean` as the subspace topology.
-/


namespace GRWTSK.Topology.Adjoin.Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034

variable {K L : Type*} [Field K] [Field L] [Algebra K L]
    [TopologicalSpace L] [IsTopologicalRing L]

variable (X : Type*) [TopologicalSpace X] [MulAction L X] [ContinuousSMul L X]
variable (M : IntermediateField K L)

instance IntermediateField.continuousSMul (M : IntermediateField K L) : ContinuousSMul M X :=
  M.toSubfield.continuousSMul X

instance IntermediateField.botContinuousSMul (M : IntermediateField K L) :
    ContinuousSMul (⊥ : IntermediateField K L) M :=
  Topology.IsInducing.continuousSMul (X := L) (N := (⊥ : IntermediateField K L)) (Y := M)
    (M := (⊥ : IntermediateField K L)) Topology.IsInducing.subtypeVal continuous_id rfl
```
