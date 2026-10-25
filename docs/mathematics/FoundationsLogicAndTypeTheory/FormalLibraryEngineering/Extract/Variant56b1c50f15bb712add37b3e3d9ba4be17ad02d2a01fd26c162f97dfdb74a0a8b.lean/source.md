# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extract.Variant56b1c50f15bb712add37b3e3d9ba4be17ad02d2a01fd26c162f97dfdb74a0a8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28a619d019ee6a6ff3c0a1e247b046730dfeb4e2` · SHA-256 `15da2bffa4036419d590574545f240c678ecd88ea98a24577b0c551c36ab3c2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoGetAux.Variantd4f0172d7f828eb835cd801f0c79045eb1e912dd53577de931dc8cf83a725a6e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4f0172d7f828eb835cd801f0c79045eb1e912dd53577de931dc8cf83a725a6e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GoGetAux.Variantd4f0172d7f828eb835cd801f0c79045eb1e912dd53577de931dc8cf83a725a6e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d4f0172d7f828eb835cd801f0c79045eb1e912dd53577de931dc8cf83a725a6e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/Extract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Extract
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoGetAux.Variantd4f0172d7f828eb835cd801f0c79045eb1e912dd53577de931dc8cf83a725a6e

@[expose] public section

/-!
This module contains the verification of the `BitVec.extract` bitblaster from `Impl.Operations.Extract`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

namespace blastExtract

theorem go_get_aux (aig : AIG α) (input : RefVec aig w) (lo : Nat) (curr : Nat)
    (hcurr : curr ≤ newWidth) (s : RefVec aig curr) :
    ∀ (idx : Nat) (hidx1 : idx < curr),
        (go input lo curr hcurr s).get idx (by omega) = s.get idx hidx1 := by
  intro idx hidx
  generalize hgo : go input lo curr hcurr s = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    rw [← hgo]
    rw [go_get_aux]; case hidx1 => omega
    rw [AIG.RefVec.get_push_ref_lt]
  · dsimp only at hgo
    rw [← hgo]
    simp only [RefVec.get, Ref.mk.injEq]
    have : curr = newWidth := by omega
    subst this
    simp
termination_by newWidth - curr

theorem go_get (aig : AIG α) (input : RefVec aig w) (lo : Nat) (curr : Nat)
    (hcurr : curr ≤ newWidth) (s : RefVec aig curr) :
    ∀ (idx : Nat) (hidx1 : idx < newWidth),
        curr ≤ idx → (go input lo curr hcurr s).get idx hidx1
          =
        input.getD (lo + idx) (aig.mkConstCached false)
    := by
  intro idx hidx1 hidx2
  generalize hgo : go input lo curr hcurr s = res
  unfold go at hgo
  dsimp only at hgo
  split at hgo
  · rw [← hgo]
    cases Nat.eq_or_lt_of_le hidx2 with
    | inl heq =>
      rw [go_get_aux]; case hidx1 => omega
      rw [AIG.RefVec.get_push_ref_eq']
      · simp [heq]
      · simp [heq]
    | inr heq =>
      rw [go_get]
      omega
  · omega
termination_by newWidth - curr

end blastExtract

@[simp]
theorem denote_blastExtract (aig : AIG α) (target : ExtractTarget aig newWidth)
    (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < newWidth),
        ⟦(blastExtract aig target).aig, (blastExtract aig target).vec.get idx hidx, assign⟧
          =
        if h : (target.start + idx) < target.w then
          ⟦aig, target.vec.get (target.start + idx) h, assign⟧
        else
          false
    := by
  intro idx hidx
  generalize hextract : blastExtract aig target = res
  rcases target with ⟨input, start⟩
  dsimp only
  unfold blastExtract at hextract
  dsimp only at hextract
  · rw [← hextract]
    rw [blastExtract.go_get]
    · dsimp only
      split
      · rw [RefVec.get_in_bound]
      · rw [RefVec.get_out_bound]
        · simp
        · omega
    · omega

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
