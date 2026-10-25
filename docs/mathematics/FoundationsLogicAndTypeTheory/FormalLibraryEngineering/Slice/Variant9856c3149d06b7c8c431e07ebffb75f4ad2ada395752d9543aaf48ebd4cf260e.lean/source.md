# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Variant9856c3149d06b7c8c431e07ebffb75f4ad2ada395752d9543aaf48ebd4cf260e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e9c516d6b615f79b73e1b3419e030f075197e29` · SHA-256 `6197c9de1e9821e0af7e6d05fe5c555cd440f89e417e54d56cf16cd6ecf5aa1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Variant90a445003bf5be6760898864911f1715e09630868763ead8a539e1ad323ad093","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90a445003bf5be6760898864911f1715e09630868763ead8a539e1ad323ad093","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Slice.Variant90a445003bf5be6760898864911f1715e09630868763ead8a539e1ad323ad093","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"90a445003bf5be6760898864911f1715e09630868763ead8a539e1ad323ad093","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Slice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Slice.Basic
public import Init.Data.Slice.Notation
public import Init.Data.Slice.Operations
public import Init.Data.Slice.Array
public import Init.Data.Slice.List
public import Init.Data.Slice.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Variant90a445003bf5be6760898864911f1715e09630868763ead8a539e1ad323ad093

public section

/-!
# Polymorphic slices

This module provides slices -- views on a subset of all elements of an array or other collection,
demarcated by a range of indices.

* `Init.Data.Slice.Basic` defines the `Slice` structure. All slices are of this type.
* `Init.Data.Slice.Operations` provides functions on `Slice` via dot notation. Many of them are
  implemented using iterators under the hood.
* `Init.Data.Slice.Notation` provides slice notation based on ranges, relying on the `Sliceable`
  typeclass.
* `Init.Data.Slice.Array` provides the `Sliceable` instance for array slices.
-/
```
