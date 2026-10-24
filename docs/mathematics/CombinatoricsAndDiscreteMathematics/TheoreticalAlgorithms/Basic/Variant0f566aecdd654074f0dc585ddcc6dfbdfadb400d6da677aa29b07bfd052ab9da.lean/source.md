# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant0f566aecdd654074f0dc585ddcc6dfbdfadb400d6da677aa29b07bfd052ab9da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf83f99f0df07ea9d77c594b2ff8dd780bdacf88` · SHA-256 `13d03019803640bf0a0c8ad0bfbe573b00d247d709e0f6dbda4b5e2f3ec408f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lex.Variant95b87346dcd6564839936c5a1d7ff66e5fee9b8907331b3306f501eab49be9ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95b87346dcd6564839936c5a1d7ff66e5fee9b8907331b3306f501eab49be9ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Lex.Variant95b87346dcd6564839936c5a1d7ff66e5fee9b8907331b3306f501eab49be9ad","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"95b87346dcd6564839936c5a1d7ff66e5fee9b8907331b3306f501eab49be9ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Array/Lex/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Kim Morrison
-/
module

prelude
public import Init.Data.Range.Polymorphic.RangeIterator
import Init.Data.Range.Polymorphic.Iterators
import Init.Data.Range.Polymorphic.Nat
import Init.Omega


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lex.Variant95b87346dcd6564839936c5a1d7ff66e5fee9b8907331b3306f501eab49be9ad

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Array

/--
Compares arrays lexicographically with respect to a comparison `lt` on their elements.

Specifically, `Array.lex as bs lt` is true if
* `bs` is larger than `as` and `as` is pairwise equivalent via `==` to the initial segment of `bs`,
  or
* there is an index `i` such that `lt as[i] bs[i]`, and for all `j < i`, `as[j] == bs[j]`.
-/
def lex [BEq α] (as bs : Array α) (lt : α → α → Bool := by exact (· < ·)) : Bool := Id.run do
  for h : i in 0...(min as.size bs.size) do
    -- TODO: `get_elem_tactic` should be able to find this itself.
    have : i < min as.size bs.size := Std.Rco.lt_upper_of_mem h
    if lt as[i] bs[i] then
      return true
    else if as[i] != bs[i] then
      return false
  return as.size < bs.size

end Array
```
