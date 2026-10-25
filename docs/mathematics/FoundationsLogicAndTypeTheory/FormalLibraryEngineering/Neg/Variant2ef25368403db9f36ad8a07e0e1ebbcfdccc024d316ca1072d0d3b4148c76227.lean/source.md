# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Neg.Variant2ef25368403db9f36ad8a07e0e1ebbcfdccc024d316ca1072d0d3b4148c76227

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa8326a1b7fab9b33cdd790b00bd0be7cfeb8a14` · SHA-256 `e1c839bc9d4c47eea5fe035245ab0492865487d9561ac3d37151cf5cedb69efd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteBlastNeg.Variant4a6d5ff93765161068d15c33273c0f10f4fa19a28bfcf058aa10d5222933af5d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a6d5ff93765161068d15c33273c0f10f4fa19a28bfcf058aa10d5222933af5d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DenoteBlastNeg.Variant4a6d5ff93765161068d15c33273c0f10f4fa19a28bfcf058aa10d5222933af5d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4a6d5ff93765161068d15c33273c0f10f4fa19a28bfcf058aa10d5222933af5d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/Neg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Const
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Neg
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Operations.Not
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Operations.Add


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteBlastNeg.Variant4a6d5ff93765161068d15c33273c0f10f4fa19a28bfcf058aa10d5222933af5d

@[expose] public section

/-!
This module contains the verification of the bitblaster for `BitVec.neg` from `Impl.Operations.Neg`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

theorem denote_blastNeg (aig : AIG α) (value : BitVec w) (target : RefVec aig w)
    (assign : α → Bool)
    (htarget : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, target.get idx hidx, assign⟧ = value.getLsbD idx) :

    ∀ (idx : Nat) (hidx : idx < w),
        ⟦(blastNeg aig target).aig, (blastNeg aig target).vec.get idx hidx, assign⟧
          =
        (-value).getLsbD idx := by
  intro idx hidx
  rw [BitVec.neg_eq_not_add]
  unfold blastNeg
  dsimp only
  rw [denote_blastAdd]
  · intro idx hidx
    simp [hidx, htarget]
  · simp

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
