# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinRange.Variant9bfff3c82fa39895072543aed525f83748b7264a72248b7c2ba6717a1b890794

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71efa1269ef1ab71f54378749884904135e31d9d` · SHA-256 `5801cd1e7cb357c2f6818fa531b76d6ea9fe0f2d9a95bcce1066bb7595cbc827`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinRangeSucc.Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FinRangeSucc.Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Array/FinRange.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

prelude
public import Init.Data.Array.Basic
import Init.Data.Array.Lemmas
import Init.Data.Array.OfFn
import Init.Data.Fin.Lemmas
import Init.Omega


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinRangeSucc.Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Array

/--
Returns an array of all elements of `Fin n` in order, starting at `0`.

Examples:
 * `Array.finRange 0 = (#[] : Array (Fin 0))`
 * `Array.finRange 2 = (#[0, 1] : Array (Fin 2))`
-/
@[expose, instance_reducible] protected def finRange (n : Nat) : Array (Fin n) := ofFn fun i => i

@[simp, grind =] theorem size_finRange {n} : (Array.finRange n).size = n := by
  simp [Array.finRange]

@[simp, grind =] theorem getElem_finRange {i : Nat} (h : i < (Array.finRange n).size) :
    (Array.finRange n)[i] = Fin.cast size_finRange ⟨i, h⟩ := by
  simp [Array.finRange]

@[simp] theorem finRange_zero : Array.finRange 0 = #[] := by simp [Array.finRange]

theorem finRange_succ {n} : Array.finRange (n+1) = #[0] ++ (Array.finRange n).map Fin.succ := by
  ext
  · simp [Nat.add_comm]
  · simp [getElem_append]
    split <;>
    · simp; omega

theorem finRange_succ_last {n} :
    Array.finRange (n+1) = (Array.finRange n).map Fin.castSucc ++ #[Fin.last n] := by
  ext
  · simp
  · simp [getElem_push]
    split
    · simp
    · simp_all
      omega

@[grind _=_]
theorem finRange_reverse {n} : (Array.finRange n).reverse = (Array.finRange n).map Fin.rev := by
  ext i h
  · simp
  · simp
    omega

end Array
```
