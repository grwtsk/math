-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoolLtWfRel.Variantbb9cc0af0363c623473dea7ce94bec7fef2a01cb942384304b6d59b80e0bc017","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb9cc0af0363c623473dea7ce94bec7fef2a01cb942384304b6d59b80e0bc017","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BoolLtWfRel.Variantbb9cc0af0363c623473dea7ce94bec7fef2a01cb942384304b6d59b80e0bc017","mathematical_subject":"Foundations.Unclassified","original_sha256":"bb9cc0af0363c623473dea7ce94bec7fef2a01cb942384304b6d59b80e0bc017","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/Bool.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Chad Sharp. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chad Sharp
-/
module


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoolLtWfRel.Variantbb9cc0af0363c623473dea7ce94bec7fef2a01cb942384304b6d59b80e0bc017

@[expose] public section

/-!
This file contains `WellFoundedRelation` instances `Bool`.

They are provided as defs rather than instances, despite WellFoundedRelation being a class, as we
provide versions for both < and >. If you need instances, you may use the WellFoundedLT and
WellFoundedGT classes available in Mathlib.
-/

/-- Boolean '<' is well founded -/
@[implicit_reducible]
def Bool.lt_wfRel : WellFoundedRelation Bool where
  rel := (· < ·)
  wf := ⟨fun
    | false => ⟨false, nofun⟩
    | true => ⟨true, fun | false, _ => ⟨false, nofun⟩⟩⟩

/-- Boolean '>' is well founded -/
@[implicit_reducible]
def Bool.gt_wfRel : WellFoundedRelation Bool where
  rel := (· > ·)
  wf := ⟨fun
    | true => ⟨true, nofun⟩
    | false => ⟨false, fun | true, _ => ⟨true, nofun⟩⟩⟩
