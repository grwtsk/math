# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Append.Variant137a70002e83d4dff69996de44f7f7190be0d5c1f267e54d8935c79744a24787

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a721cf949e68c0fd941b434c5b34bf3490af8189` · SHA-256 `9ff516c7d3efcda6418bdf0b4c3b6a82783c0bd3e82389fb12aa18f2e4c00114`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteBlastAppend.Variantaa68606b4d14c8a6b12228008d445005cf6dc399eb4bebdb59b39c20b36b5ff3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa68606b4d14c8a6b12228008d445005cf6dc399eb4bebdb59b39c20b36b5ff3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DenoteBlastAppend.Variantaa68606b4d14c8a6b12228008d445005cf6dc399eb4bebdb59b39c20b36b5ff3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"aa68606b4d14c8a6b12228008d445005cf6dc399eb4bebdb59b39c20b36b5ff3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/Append.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Append
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteBlastAppend.Variantaa68606b4d14c8a6b12228008d445005cf6dc399eb4bebdb59b39c20b36b5ff3

@[expose] public section

/-!
This module contains the verification of the `BitVec.append` bitblaster from `Impl.Operations.Append`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

@[simp]
theorem denote_blastAppend (aig : AIG α) (target : AppendTarget aig newWidth)
  (assign : α → Bool) :
  ∀ (idx : Nat) (hidx : idx < newWidth),
      ⟦
        (blastAppend aig target).aig,
        (blastAppend aig target).vec.get idx hidx,
        assign
      ⟧
        =
      if hr : idx < target.rw then
         ⟦aig, target.rhs.get idx hr, assign⟧
      else
         have := target.h
         ⟦aig, target.lhs.get (idx - target.rw) (by omega), assign⟧
    := by
  intros
  unfold blastAppend
  rcases target with ⟨lw, rw, lhs, rhs, ht⟩
  dsimp only
  rw [AIG.RefVec.get_append]
  split <;> rfl


end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
