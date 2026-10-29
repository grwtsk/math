-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteBlastNot.Variant02f4cf6a908bcbb0a7896e6a8a2e43d6571bc31506431e85c002e470fe931ffc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02f4cf6a908bcbb0a7896e6a8a2e43d6571bc31506431e85c002e470fe931ffc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DenoteBlastNot.Variant02f4cf6a908bcbb0a7896e6a8a2e43d6571bc31506431e85c002e470fe931ffc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"02f4cf6a908bcbb0a7896e6a8a2e43d6571bc31506431e85c002e470fe931ffc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/Not.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Not


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteBlastNot.Variant02f4cf6a908bcbb0a7896e6a8a2e43d6571bc31506431e85c002e470fe931ffc

@[expose] public section

/-!
This module contains the verification of the bitblaster for `BitVec.not` from `Impl.Operations.Not`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

@[simp]
theorem denote_blastNot (aig : AIG α) (target : RefVec aig w)
    (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦(blastNot aig target).aig, (blastNot aig target).vec.get idx hidx, assign⟧
          =
        !⟦aig, target.get idx hidx, assign⟧ := by
  intro idx hidx
  unfold blastNot
  simp

end bitblast
end BVExpr

end Std.Tactic.BVDecide
