# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant45375660751066914d19220460727a091f4cf4aa354cdd7c853f8dd8644fc8ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `217056e3e4b46931a0743d05ee1aa9d0caa0cc4c` · SHA-256 `acbafa8c7989303e7daf57feb2e9163f506f738968b1624a7e8d6d8f585e1067`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Splits.Variant40cbf42c1053f31cc2c61abfe4f7850b5daa5ba984092532dd68e9a534f9afed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40cbf42c1053f31cc2c61abfe4f7850b5daa5ba984092532dd68e9a534f9afed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Splits.Variant40cbf42c1053f31cc2c61abfe4f7850b5daa5ba984092532dd68e9a534f9afed","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"40cbf42c1053f31cc2c61abfe4f7850b5daa5ba984092532dd68e9a534f9afed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.String.Lemmas.Splits
public import Init.Data.String.Lemmas.Modify
public import Init.Data.String.Lemmas.Search
public import Init.Data.String.Lemmas.FindPos
public import Init.Data.String.Lemmas.Basic
public import Init.Data.String.Lemmas.Order
public import Init.Data.String.Lemmas.IsEmpty
public import Init.Data.String.Lemmas.Pattern
public import Init.Data.String.Lemmas.Slice
public import Init.Data.String.Lemmas.Iterate
public import Init.Data.String.Lemmas.Intercalate
public import Init.Data.String.Lemmas.Iter
public import Init.Data.String.Lemmas.Hashable
public import Init.Data.String.Lemmas.TakeDrop
public import Init.Data.String.Lemmas.StringOrder
public import Init.Data.String.Lemmas.Length

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Splits.Variant40cbf42c1053f31cc2c61abfe4f7850b5daa5ba984092532dd68e9a534f9afed

```
