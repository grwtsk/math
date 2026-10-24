-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastNot.Variant4e58e5ac0c98d9212907a578cc40c9c11a53a4ec7539e7a5163cd73c3ab5f525","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e58e5ac0c98d9212907a578cc40c9c11a53a4ec7539e7a5163cd73c3ab5f525","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BlastNot.Variant4e58e5ac0c98d9212907a578cc40c9c11a53a4ec7539e7a5163cd73c3ab5f525","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4e58e5ac0c98d9212907a578cc40c9c11a53a4ec7539e7a5163cd73c3ab5f525","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/Not.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Basic
public import Std.Sat.AIG.RefVecOperator


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastNot.Variant4e58e5ac0c98d9212907a578cc40c9c11a53a4ec7539e7a5163cd73c3ab5f525

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.not`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastNot (aig : AIG α) (s : AIG.RefVec aig w) : AIG.RefVecEntry α w :=
  AIG.RefVec.map aig ⟨s, AIG.mkNotCached⟩

instance : AIG.LawfulVecOperator α AIG.RefVec blastNot where
  le_size := by
    intros
    unfold blastNot
    apply AIG.LawfulVecOperator.le_size (f := AIG.RefVec.map)
  decl_eq := by
    intros
    unfold blastNot
    apply AIG.LawfulVecOperator.decl_eq (f := AIG.RefVec.map)

end bitblast
end BVExpr

end Std.Tactic.BVDecide
