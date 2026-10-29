-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant7946025a487c8f7314081607b87c4290c97662f93ec5db6286c36bd96f7fe323","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7946025a487c8f7314081607b87c4290c97662f93ec5db6286c36bd96f7fe323","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variant7946025a487c8f7314081607b87c4290c97662f93ec5db6286c36bd96f7fe323","mathematical_subject":"Foundations.Unclassified","original_sha256":"7946025a487c8f7314081607b87c4290c97662f93ec5db6286c36bd96f7fe323","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/BitVec/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant7946025a487c8f7314081607b87c4290c97662f93ec5db6286c36bd96f7fe323

@[expose] public section

namespace BitVec

/-- `ofFnLEAux f` returns the `BitVec m` whose `i`th bit is `f i` when `i < m`, little endian. -/
@[inline] def ofFnLEAux (m : Nat) (f : Fin n → Bool) : BitVec m :=
  Fin.foldr n (fun i v => v.shiftConcat (f i)) 0

/-- `ofFnLE f` returns the `BitVec n` whose `i`th bit is `f i` with little endian ordering. -/
@[inline] def ofFnLE (f : Fin n → Bool) : BitVec n := ofFnLEAux n f

/-- `ofFnBE f` returns the `BitVec n` whose `i`th bit is `f i` with big endian ordering. -/
@[inline] def ofFnBE (f : Fin n → Bool) : BitVec n := ofFnLE fun i => f i.rev
