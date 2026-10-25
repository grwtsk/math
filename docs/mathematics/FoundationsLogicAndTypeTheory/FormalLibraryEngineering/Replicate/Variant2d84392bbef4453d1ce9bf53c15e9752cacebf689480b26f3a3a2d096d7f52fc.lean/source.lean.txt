-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReplicateTarget.Variant33973f03c2a58be42428cd2d25e50af9f98536872e817c0c769c0738836de14b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33973f03c2a58be42428cd2d25e50af9f98536872e817c0c769c0738836de14b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ReplicateTarget.Variant33973f03c2a58be42428cd2d25e50af9f98536872e817c0c769c0738836de14b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"33973f03c2a58be42428cd2d25e50af9f98536872e817c0c769c0738836de14b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/Replicate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Basic
public import Std.Sat.AIG.LawfulVecOperator
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReplicateTarget.Variant33973f03c2a58be42428cd2d25e50af9f98536872e817c0c769c0738836de14b

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.replicate`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

structure ReplicateTarget (aig : AIG α) (combined : Nat) where
  {w : Nat}
  n : Nat
  inner : AIG.RefVec aig w
  h : combined = w * n

def blastReplicate (aig : AIG α) (target : ReplicateTarget aig newWidth) :
    AIG.RefVecEntry α newWidth :=
  let ⟨n, inner, h⟩ := target
  let ref := go n inner 0 (by omega) (.emptyWithCapacity newWidth)
  ⟨aig, h ▸ ref⟩
where
  go {aig : AIG α} {w : Nat} (n : Nat) (input : AIG.RefVec aig w) (curr : Nat) (hcurr : curr ≤ n)
      (s : AIG.RefVec aig (w * curr)) : AIG.RefVec aig (w * n) :=
    if h : curr < n then
      let s := s.append input
      go n input (curr + 1) (by omega) s
    else
      have : curr = n := by omega
      this ▸ s
  termination_by n - curr

instance : AIG.LawfulVecOperator α ReplicateTarget blastReplicate where
  le_size := by simp [blastReplicate]
  decl_eq := by simp [blastReplicate]

end bitblast
end BVExpr

end Std.Tactic.BVDecide
