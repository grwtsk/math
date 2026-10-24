-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListToArrayAux.Variant71a124bc0f6d7e76694a57f4998d14b2a969eb7628e3c0f87c67a530e35defa7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71a124bc0f6d7e76694a57f4998d14b2a969eb7628e3c0f87c67a530e35defa7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ListToArrayAux.Variant71a124bc0f6d7e76694a57f4998d14b2a969eb7628e3c0f87c67a530e35defa7","mathematical_subject":"Computation.DataStructures","original_sha256":"71a124bc0f6d7e76694a57f4998d14b2a969eb7628e3c0f87c67a530e35defa7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/List/ToArrayImpl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Init.Prelude
import Init.Data.List.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListToArrayAux.Variant71a124bc0f6d7e76694a57f4998d14b2a969eb7628e3c0f87c67a530e35defa7

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

/--
Auxiliary definition for `List.toArray`.
`List.toArrayAux as r = r ++ as.toArray`
-/
@[inline_if_reduce]
def List.toArrayAux : List α → Array α → Array α
  | nil,       xs => xs
  | cons a as, xs => toArrayAux as (xs.push a)

/--
Converts a `List α` into an `Array α` by repeatedly pushing elements from the list onto an empty
array. `O(|xs|)`.

Use `List.toArray` instead of calling this function directly. At runtime, this operation implements
both `List.toArray` and `Array.mk`.
-/
-- This function is exported to C, where it is called by `Array.mk`
-- (the constructor) to implement this functionality.
@[inline, expose, match_pattern, pp_nodot, export lean_list_to_array]
def List.toArrayImpl (xs : List α) : Array α :=
  xs.toArrayAux (Array.mkEmpty xs.length)
