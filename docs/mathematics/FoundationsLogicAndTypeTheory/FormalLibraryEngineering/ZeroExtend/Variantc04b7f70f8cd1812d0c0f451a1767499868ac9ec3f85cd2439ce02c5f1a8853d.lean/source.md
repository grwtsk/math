# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZeroExtend.Variantc04b7f70f8cd1812d0c0f451a1767499868ac9ec3f85cd2439ce02c5f1a8853d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8112b37d7d18da28b3f82c7ec5ba5cc389283fdc` · SHA-256 `cf6dabe25f711027bf5f2da17fb0a3570c60e6cad22e84a0858072822893fec3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastZeroExtend.Variant678c34b5988dc839883946cc5174d5ce0e2d2ac589cc070be8790d70e83dec04","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"678c34b5988dc839883946cc5174d5ce0e2d2ac589cc070be8790d70e83dec04","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BlastZeroExtend.Variant678c34b5988dc839883946cc5174d5ce0e2d2ac589cc070be8790d70e83dec04","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"678c34b5988dc839883946cc5174d5ce0e2d2ac589cc070be8790d70e83dec04","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/ZeroExtend.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastZeroExtend.Variant678c34b5988dc839883946cc5174d5ce0e2d2ac589cc070be8790d70e83dec04

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.zeroExtend`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastZeroExtend (aig : AIG α) (target : AIG.ExtendTarget aig newWidth) :
    AIG.RefVecEntry α newWidth :=
  let ⟨width, input⟩ := target
  go aig width input newWidth 0 (by omega) (.emptyWithCapacity newWidth)
where
  go (aig : AIG α) (w : Nat) (input : AIG.RefVec aig w) (newWidth : Nat) (curr : Nat)
      (hcurr : curr ≤ newWidth) (s : AIG.RefVec aig curr) :
      AIG.RefVecEntry α newWidth :=
    if hcurr1 : curr < newWidth then
      if hcurr2 : curr < w then
        let s := s.push (input.get curr hcurr2)
        go aig w input newWidth (curr + 1) (by omega) s
      else
        let zeroRef := aig.mkConstCached false
        let s := s.push zeroRef
        go aig w input newWidth (curr + 1) (by omega) s
    else
      have hcurr : curr = newWidth := by omega
      ⟨aig, hcurr ▸ s⟩
termination_by newWidth - curr

namespace blastZeroExtend

theorem go_le_size (aig : AIG α) (w : Nat) (input : AIG.RefVec aig w) (newWidth curr : Nat)
    (hcurr : curr ≤ newWidth) (s : AIG.RefVec aig curr) :
    aig.decls.size ≤ (go aig w input newWidth curr hcurr s).aig.decls.size := by
  unfold go
  split
  · dsimp only
    split
    · apply go_le_size
    · apply go_le_size
  · simp
termination_by newWidth - curr

theorem go_decl_eq (aig : AIG α) (w : Nat) (input : AIG.RefVec aig w) (newWidth curr : Nat)
    (hcurr : curr ≤ newWidth) (s : AIG.RefVec aig curr) :
    ∀ (idx : Nat) (h1) (h2),
       (go aig w input newWidth curr hcurr s).aig.decls[idx]'h2 = aig.decls[idx]'h1 := by
  generalize hgo : go aig w input newWidth curr hcurr s = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    split at hgo
    · rw [← hgo]
      intro idx h1 h2
      rw [go_decl_eq]
    · rw [← hgo]
      intro idx h1 h2
      rw [go_decl_eq]
  · simp [← hgo]
termination_by newWidth - curr

end blastZeroExtend

instance : AIG.LawfulVecOperator α AIG.ExtendTarget blastZeroExtend where
  le_size := by
    intros
    unfold blastZeroExtend
    apply blastZeroExtend.go_le_size
  decl_eq := by
    intros
    unfold blastZeroExtend
    apply blastZeroExtend.go_decl_eq

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
