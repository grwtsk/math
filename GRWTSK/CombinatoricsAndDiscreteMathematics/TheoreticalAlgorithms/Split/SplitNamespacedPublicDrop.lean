-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Drop.Variant44d6eaee22be122e757984021e6bf14cef101b84e86020b54ce9afca8cadc5e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44d6eaee22be122e757984021e6bf14cef101b84e86020b54ce9afca8cadc5e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Drop.Variant44d6eaee22be122e757984021e6bf14cef101b84e86020b54ce9afca8cadc5e1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"44d6eaee22be122e757984021e6bf14cef101b84e86020b54ce9afca8cadc5e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Array/Subarray/Split.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Thrane Christiansen
-/

module

prelude
public import Init.Data.Array.Subarray
import all Init.Data.Array.Subarray
import Init.Omega


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Drop.Variant44d6eaee22be122e757984021e6bf14cef101b84e86020b54ce9afca8cadc5e1

public section

/-
This module contains splitting operations on subarrays that crucially rely on `omega` for proof
automation. Placing them in another module breaks an import cycle, because `omega` itself uses the
array library.
-/

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Subarray

/--
Removes the first `i` elements of the subarray. If there are `i` or fewer elements, the resulting
subarray is empty.
-/
def drop (arr : Subarray α) (i : Nat) : Subarray α := ⟨{
  array := arr.array
  start := min (arr.start + i) arr.stop
  stop := arr.stop
  start_le_stop := by omega
  stop_le_array_size := arr.stop_le_array_size
}⟩

/--
Keeps only the first `i` elements of the subarray. If there are `i` or fewer elements, the resulting
subarray is empty.
-/
def take (arr : Subarray α) (i : Nat) : Subarray α := ⟨{
  array := arr.array
  start := arr.start
  stop := min (arr.start + i) arr.stop
  start_le_stop := by
    have := arr.start_le_stop
    omega
  stop_le_array_size := by
    have := arr.stop_le_array_size
    omega
}⟩

/--
Splits a subarray into two parts, the first of which contains the first `i` elements and the second
of which contains the remainder.
-/
def split (s : Subarray α) (i : Fin s.size.succ) : (Subarray α × Subarray α) :=
  (s.take i, s.drop i)
