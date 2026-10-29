-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsFinite.Variant336b45f8c6664c355de27d2095f1965f36798dda90d25cdc78e7ca2a1830b6b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"336b45f8c6664c355de27d2095f1965f36798dda90d25cdc78e7ca2a1830b6b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IsFinite.Variant336b45f8c6664c355de27d2095f1965f36798dda90d25cdc78e7ca2a1830b6b6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"336b45f8c6664c355de27d2095f1965f36798dda90d25cdc78e7ca2a1830b6b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Operations/Status.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Basic

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsFinite.Variant336b45f8c6664c355de27d2095f1965f36798dda90d25cdc78e7ca2a1830b6b6

@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Returns `true` if the float represents a real number, i.e., it is neither infinite nor `NaN`.
-/
def isFinite : UnpackedFloat → Bool
  | .notANumber => false
  | .infinity .. => false
  | .zero .. => true
  | .finite .. => true

/--
Returns `true` if the float is positive or negative infinity.
-/
def isInf : UnpackedFloat → Bool
  | .infinity .. => true
  | _ => false

/--
Returns `true` if the float is `NaN`.
-/
def isNaN : UnpackedFloat → Bool
  | .notANumber => true
  | _ => false

end Float.Model.UnpackedFloat
