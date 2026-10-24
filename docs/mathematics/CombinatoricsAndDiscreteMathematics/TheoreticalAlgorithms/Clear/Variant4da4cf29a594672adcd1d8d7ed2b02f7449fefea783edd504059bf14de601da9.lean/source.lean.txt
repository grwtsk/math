-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeanMVarIdTryClearManyPrime.Variantb6a861bedd04ec9000c001080dd91d0dcbb0e9a98f37e4933ad986a81248f1cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6a861bedd04ec9000c001080dd91d0dcbb0e9a98f37e4933ad986a81248f1cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LeanMVarIdTryClearManyPrime.Variantb6a861bedd04ec9000c001080dd91d0dcbb0e9a98f37e4933ad986a81248f1cd","mathematical_subject":"Computation.DataStructures","original_sha256":"b6a861bedd04ec9000c001080dd91d0dcbb0e9a98f37e4933ad986a81248f1cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Meta/Clear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Std.Lean.Meta.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeanMVarIdTryClearManyPrime.Variantb6a861bedd04ec9000c001080dd91d0dcbb0e9a98f37e4933ad986a81248f1cd

open Lean Lean.Meta

/--
Try to clear the given fvars from the local context. Returns the new goal and
the hypotheses that were cleared. Unlike `Lean.MVarId.tryClearMany`, this
function does not require the `hyps` to be given in the order in which they
appear in the local context.
-/
def Lean.MVarId.tryClearMany' (goal : MVarId) (hyps : Array FVarId) :
    MetaM (MVarId × Array FVarId) :=
  goal.withContext do
    let hyps ← sortFVarsByContextOrder hyps
    hyps.foldrM (init := (goal, Array.mkEmpty hyps.size))
      λ h (goal, cleared) => do
        let goal' ← goal.tryClear h
        let cleared := if goal == goal' then cleared else cleared.push h
        return (goal', cleared)
