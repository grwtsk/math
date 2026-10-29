-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MGoalEntails.Variant398634f86c7d6dd83d819a07b565c299eca1c0d169003b8c1d74930688f94837","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"398634f86c7d6dd83d819a07b565c299eca1c0d169003b8c1d74930688f94837","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MGoalEntails.Variant398634f86c7d6dd83d819a07b565c299eca1c0d169003b8c1d74930688f94837","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"398634f86c7d6dd83d819a07b565c299eca1c0d169003b8c1d74930688f94837","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/Do/ProofMode.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Std.Do.SPred.SPred


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MGoalEntails.Variant398634f86c7d6dd83d819a07b565c299eca1c0d169003b8c1d74930688f94837

@[expose] public section


namespace Std.Tactic.Do

open Std.Do

syntax mgoalHyp := ident " : " term

syntax mgoalStx := ppDedent(ppLine mgoalHyp)* ppDedent(ppLine "⊢ₛ " term)

/-- This is the same as `SPred.entails`.
This constant is used to detect `SPred` proof mode goals. -/
abbrev MGoalEntails := @SPred.entails

/-- This is only used for delaboration purposes, so that we can render context variables that appear
to have type `A : PROP` even though `PROP` is not a type. -/
def MGoalHypMarker {σs : List (Type u)} (_A : SPred σs) : Prop := True

end Std.Tactic.Do
