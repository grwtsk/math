-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoolExpr.Variant31d06eb7b7f3a5aece455d8ada34fef0f224263696caf330db07f8cc3b53d280","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31d06eb7b7f3a5aece455d8ada34fef0f224263696caf330db07f8cc3b53d280","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BoolExpr.Variant31d06eb7b7f3a5aece455d8ada34fef0f224263696caf330db07f8cc3b53d280","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"31d06eb7b7f3a5aece455d8ada34fef0f224263696caf330db07f8cc3b53d280","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BoolExpr
public import Std.Tactic.BVDecide.Bitblast.BVExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoolExpr.Variant31d06eb7b7f3a5aece455d8ada34fef0f224263696caf330db07f8cc3b53d280

@[expose] public section

/-!
This directory contains the implementation of the bitblaster itself. It is split up into two parts:
1. Bitblasting of generic boolean substructures for SMT-like problems in `BoolExpr`.
2. The specific bitblaster for `BitVec` problems with boolean substructure in `BVExpr`.
-/
