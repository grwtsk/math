# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinRange.Variant752d91b3e98ac1057559c7aa6429d2c1e9dba346a48c0d9d02462734fe5d566c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6d815747a97543fdc7ea3fd5e4c7c2602cf59f9` · SHA-256 `66d28bd4ebea4c7a4f0eb0763713997a0ee9bdf80b3f25739347a683a31be9ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinRange.Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FinRange.Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Vector/FinRange.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

prelude
public import Init.Data.Vector.Basic
import Init.Data.Fin.Lemmas
import Init.Data.Vector.Lemmas
import Init.Data.Vector.OfFn
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FinRange.Variantd9ed42c2cd0fe84cdc9ce7695b8a0666b03e9bff652744d0544c2adcaae87e89

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Vector

/-- `finRange n` is the vector of all elements of `Fin n` in order. -/
protected def finRange (n : Nat) : Vector (Fin n) n := ofFn fun i => i

@[simp, grind =] theorem getElem_finRange {i : Nat} (h : i < n) :
    (Vector.finRange n)[i] = ⟨i, h⟩ := by
  simp [Vector.finRange]

@[simp] theorem finRange_zero : Vector.finRange 0 = #v[] := by simp [Vector.finRange]

theorem finRange_succ {n} : Vector.finRange (n+1) =
    (#v[(0 : Fin (n+1))] ++ (Vector.finRange n).map Fin.succ).cast (by omega) := by
  ext i h
  · simp [getElem_append]
    split <;>
    · simp; omega

theorem finRange_succ_last {n} :
    Vector.finRange (n+1) = (Vector.finRange n).map Fin.castSucc ++ #v[Fin.last n] := by
  ext i h
  · simp [getElem_push]
    split
    · simp
    · simp_all
      omega

@[grind _=_]
theorem finRange_reverse {n} : (Vector.finRange n).reverse = (Vector.finRange n).map Fin.rev := by
  ext i h
  simp
  omega

end Vector
```
