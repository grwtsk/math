# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stream.Variante9227718e2c723004be48554aabf2c4958cb56991553dde01d96f6eaf4064cd4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36cd2426ed8fe980bfaed0fa8817a8096f0fb9a4` · SHA-256 `8386188cb20a462ab1dd7ff9aec949483b2d6d1ece825827ebd758132fcdff5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variant22787a534c392caaeb774ff9b3263142d37476515b1a85eb3b340bd5205f0c79","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22787a534c392caaeb774ff9b3263142d37476515b1a85eb3b340bd5205f0c79","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.String.Variant22787a534c392caaeb774ff9b3263142d37476515b1a85eb3b340bd5205f0c79","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"22787a534c392caaeb774ff9b3263142d37476515b1a85eb3b340bd5205f0c79","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Stream.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Andrew Kent, Leonardo de Moura
-/
module

prelude
public import Init.Data.String.Basic
public import Init.Data.Stream


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variant22787a534c392caaeb774ff9b3263142d37476515b1a85eb3b340bd5205f0c79

public instance : Std.Stream Substring.Raw Char where
  next? s :=
    if s.startPos < s.stopPos then
      some (s.startPos.get s.str, { s with startPos := s.startPos.next s.str })
    else
      none
```
