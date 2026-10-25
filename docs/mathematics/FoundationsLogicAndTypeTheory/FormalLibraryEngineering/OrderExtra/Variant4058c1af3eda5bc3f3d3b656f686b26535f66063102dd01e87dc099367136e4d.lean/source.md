# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderExtra.Variant4058c1af3eda5bc3f3d3b656f686b26535f66063102dd01e87dc099367136e4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0f129099f9fcf5187b31ffefc44e4af3e2cd7e0` · SHA-256 `15e39d25397f88f36107e984faec8698c43cbd4b2b282fd5bc40ba6ed70b33a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ord.Variant3204a38516405fa181070b6fdce54018e24da3dd3431d91d9534b87b549a5d3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3204a38516405fa181070b6fdce54018e24da3dd3431d91d9534b87b549a5d3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Ord.Variant3204a38516405fa181070b6fdce54018e24da3dd3431d91d9534b87b549a5d3e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3204a38516405fa181070b6fdce54018e24da3dd3431d91d9534b87b549a5d3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Subtype/OrderExtra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Ord.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ord.Variant3204a38516405fa181070b6fdce54018e24da3dd3431d91d9534b87b549a5d3e

public instance {α : Type u} [Ord α] {P : α → Prop} : Ord (Subtype P) where
  compare a b := compare a.val b.val
```
