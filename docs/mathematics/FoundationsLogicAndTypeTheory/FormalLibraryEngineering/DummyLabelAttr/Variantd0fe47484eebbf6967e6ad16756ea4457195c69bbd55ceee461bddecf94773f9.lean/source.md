# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DummyLabelAttr.Variantd0fe47484eebbf6967e6ad16756ea4457195c69bbd55ceee461bddecf94773f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3256aadb79f6e2bd00806ea9e3574839c5c2533f` · SHA-256 `cd8a2369ce6ffb8dbc0c6ab955d92eb6a42b7c67d21ceea8311bb9c0817835d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttribute.Variantea62452093603b9caa47e0cdc54445cd9d734dae00bed8a187558e81f6119cb3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea62452093603b9caa47e0cdc54445cd9d734dae00bed8a187558e81f6119cb3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LabelAttribute.Variantea62452093603b9caa47e0cdc54445cd9d734dae00bed8a187558e81f6119cb3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ea62452093603b9caa47e0cdc54445cd9d734dae00bed8a187558e81f6119cb3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/Internal/DummyLabelAttr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Lean.LabelAttribute


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LabelAttribute.Variantea62452093603b9caa47e0cdc54445cd9d734dae00bed8a187558e81f6119cb3

/-- A dummy label attribute, which can be used for testing. -/
-- This can't live in `Batteries.Tactic.LabelAttr`
-- (because we can't use the extension in the same file it is initialized)
-- and it can't live in `test/`, because files there can not import other files in `test/`.
register_label_attr dummy_label_attr
```
