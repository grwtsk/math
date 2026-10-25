# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reverse.Variant6fa945913df7e37ac60bfbeccd395bb6ae17451680a8fedb6fdb138a27d87779

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07af879019b883c59fc964a4d4de4c09c58e58ce` · SHA-256 `611bd04a628ebc55ea1ac1896fdacdf23344f08362f2d01c5b08bb17a611f0e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteBlastReverse.Variant35a52e57dfc698d41d6c18b68dc67ff2b7df4be2a96dea9251d5d6ca65839656","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"35a52e57dfc698d41d6c18b68dc67ff2b7df4be2a96dea9251d5d6ca65839656","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DenoteBlastReverse.Variant35a52e57dfc698d41d6c18b68dc67ff2b7df4be2a96dea9251d5d6ca65839656","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"35a52e57dfc698d41d6c18b68dc67ff2b7df4be2a96dea9251d5d6ca65839656","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Operations/Reverse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Reverse
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DenoteBlastReverse.Variant35a52e57dfc698d41d6c18b68dc67ff2b7df4be2a96dea9251d5d6ca65839656

@[expose] public section

/-!
This module contains the verification of the bitblaster for `BitVec.reverse` from
`Impl.Operations.Reverse`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

@[simp]
theorem denote_blastReverse (aig : AIG α) (target : RefVec aig w)
    (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦(blastReverse aig target).aig, (blastReverse aig target).vec.get idx hidx, assign⟧
          =
        ⟦aig, target.get (w - 1 - idx) (by omega), assign⟧ := by
  intro idx hidx
  simp [blastReverse, AIG.RefVec.get]


end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
