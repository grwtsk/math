# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Variant9e8199a18ad0ed36e361f0c30bc0f530aa37325da0340064f4a457af910daf42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e23c0782708d377d50626a5a1d7e9065119314f7` · SHA-256 `dfd2fe8ab615ad03fcf5a4284f78dc187ed82f21d87f840fd80163f47f0f7966`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StdSliceIter.Variant7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.StdSliceIter.Variant7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Producers/Slice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Slice.Operations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StdSliceIter.Variant7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1

@[expose] public section

/-!
# Slice iterator

This module provides iterators over slices from `Std.Slice` via `Std.Slice.iter`.
-/

/--
Returns an iterator over the given slice. This iterator will emit the elements of the slice
in increasing order of the indices.
-/
@[always_inline, inline]
def Std.Slice.iter [ToIterator (Slice γ) Id α β] (s : Slice γ) :=
  (Internal.iter s : Iter β)
```
