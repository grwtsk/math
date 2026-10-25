# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Not.Variant35d11c49a33e8686d0ae6dd98cbf38cb62f36dc53ce37b990dbdda2dfbe53a66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88f0572ec72c8ca6032b200a1ccc4407174861ad` · SHA-256 `a04b12b515e190f391c27fe4ae8a385e97e5207cb30a9e29d1e2fd6e420eee62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
