# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartialSups.Variant529b4a90e28d7e64d08f80c1ff69cd52325036c9bd79de98cff76a8d0f939f0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `336d60bbc84ef5cd60c4e567d00e94c54af31f78` · SHA-256 `901a5cacb5775fb8adc3d74abde2adb7dbb261cabb01e3b0bacc475ccb60b40e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartialSupsAddOne.Variant5903a5400f5b0cc233c49dc7307f0a630861a3ce7b8c03f3204112d406f2e262","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5903a5400f5b0cc233c49dc7307f0a630861a3ce7b8c03f3204112d406f2e262","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.PartialSupsAddOne.Variant5903a5400f5b0cc233c49dc7307f0a630861a3ce7b8c03f3204112d406f2e262","mathematical_subject":"Algebra.OrderTheory","original_sha256":"5903a5400f5b0cc233c49dc7307f0a630861a3ce7b8c03f3204112d406f2e262","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/PartialSups.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Order.SuccPred
import Mathlib.Order.PartialSups

/-!
# `PartialSups` in a `SuccAddOrder`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartialSupsAddOne.Variant5903a5400f5b0cc233c49dc7307f0a630861a3ce7b8c03f3204112d406f2e262

open Finset

variable {α ι : Type*} [SemilatticeSup α]

@[simp]
lemma partialSups_add_one [Add ι] [One ι] [LinearOrder ι] [LocallyFiniteOrderBot ι] [SuccAddOrder ι]
    (f : ι → α) (i : ι) : partialSups f (i + 1) = partialSups f i ⊔ f (i + 1) :=
  Order.succ_eq_add_one i ▸ partialSups_succ f i
```
