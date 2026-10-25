# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EditDistance.Variant80458f36de6136f86a907962766a70db7a07f70a0db2e675d08ca5a48c4d3899

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e6988fb8f7bd398d94cd8bd4594aa39f06d5cc6` · SHA-256 `3a8e0283abba11ea4c9c618ffbe6ac93978f6d33952556050824bfee9f702a40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Levenshtein.Variant7e68031be1dde856a6eb9a6728453db65489849cf3a61077b414bd6362209ff0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e68031be1dde856a6eb9a6728453db65489849cf3a61077b414bd6362209ff0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Levenshtein.Variant7e68031be1dde856a6eb9a6728453db65489849cf3a61077b414bd6362209ff0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7e68031be1dde856a6eb9a6728453db65489849cf3a61077b414bd6362209ff0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Data/EditDistance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024-2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Thrane Christiansen
-/
module

prelude
public import Init.Data.String.Basic
import Init.Data.Vector.Basic
import Init.Data.Nat.Order
import Init.Data.Order.Lemmas
import Init.Data.Range
import Init.While
import Init.Data.String.Length


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Levenshtein.Variant7e68031be1dde856a6eb9a6728453db65489849cf3a61077b414bd6362209ff0

set_option linter.missingDocs true

namespace Lean.EditDistance

/--
Computes the Levenshtein distance between two strings, up to some cutoff.

If the return value is `none`, then the distance is certainly greater than the cutoff value, but a
returned `some` does not necessarily indicate that the edit distance is less than or equal to the
cutoff.
-/
public def levenshtein (str1 str2 : String) (cutoff : Nat) : Option Nat := Id.run do
  let len1 := str1.length
  let len2 := str2.length

  -- The lower bound on the Levenshtein distance is the difference in lengths
  if max len1 len2 - min len1 len2 > cutoff then return none

  let mut v0 := Vector.replicate (len2 + 1) 0
  let mut v1 := v0

  for h : i in [0:v0.size] do
    v0 := v0.set i i
  let mut iter1 := str1.startPos
  let mut i := 0
  while h1 : ¬iter1.IsAtEnd do
    v1 := v1.set 0 (i+1)
    let mut iter2 := str2.startPos
    let mut j : Fin (len2 + 1) := 0
    while h2 : ¬iter2.IsAtEnd do
      let j' : Fin (len2 + 1) := j + 1
      let deletionCost := v0[j'] + 1
      let insertionCost := v1[j] + 1
      let substCost :=
        if iter1.get h1 == iter2.get h2 then v0[j]
        else v0[j] + 1
      let cost := min (min deletionCost insertionCost) substCost
      v1 := v1.set j' cost
      iter2 := iter2.next h2
      j := j + 1
    iter1 := iter1.next h1
    i := i + 1
    -- Terminate early if it's impossible that the result is below the cutoff
    if v1.all (· > cutoff) then return none
    v0 := v1
  some v0[len2]
```
