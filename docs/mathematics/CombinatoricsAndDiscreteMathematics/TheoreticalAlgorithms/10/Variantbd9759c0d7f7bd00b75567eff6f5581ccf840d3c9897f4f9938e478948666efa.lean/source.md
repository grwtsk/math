# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.10.Variantbd9759c0d7f7bd00b75567eff6f5581ccf840d3c9897f4f9938e478948666efa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dce2aac55a5282648bfd2978b5535132dab77fbc` · SHA-256 `edc46a1668913139f319360bdd454e4bb1b09227f5f3e4579cabda9abbde3edd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemMap.Varianteb8a7a3a2c7da214da445c43dcb7f8ddf0658ca8e359995dda2fcde971dd4197","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb8a7a3a2c7da214da445c43dcb7f8ddf0658ca8e359995dda2fcde971dd4197","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MemMap.Varianteb8a7a3a2c7da214da445c43dcb7f8ddf0658ca8e359995dda2fcde971dd4197","mathematical_subject":"Computation.DataStructures","original_sha256":"eb8a7a3a2c7da214da445c43dcb7f8ddf0658ca8e359995dda2fcde971dd4197","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/10.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Asta H. From, Jannis Limperg
-/
import Aesop


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemMap.Varianteb8a7a3a2c7da214da445c43dcb7f8ddf0658ca8e359995dda2fcde971dd4197

set_option aesop.check.all true

attribute [aesop unsafe [50% constructors, 50% cases]] List.Mem

theorem Mem.map (f : α → β) (x : α) (xs : List α) (h : x ∈ xs) :
    f x ∈ xs.map f := by
  induction h <;> aesop
```
