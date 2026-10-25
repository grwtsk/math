# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Const.Variantc811123ec027c23b16eb5883d2ee705d51c63251fdb9b8c2638639e35b85c80c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `820ddb6e0509241a442fe4abf3ee5ef72264a9ff` · SHA-256 `0a96a5e9cb7fbc39da19c1b858a78fb83839e991cf18913e9bf8031ba6a3349a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastConst.Variant432d5353f8d7e685d35350bb1d0f686b92b6a6e954edb6342384274d94974e12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"432d5353f8d7e685d35350bb1d0f686b92b6a6e954edb6342384274d94974e12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BlastConst.Variant432d5353f8d7e685d35350bb1d0f686b92b6a6e954edb6342384274d94974e12","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"432d5353f8d7e685d35350bb1d0f686b92b6a6e954edb6342384274d94974e12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Const.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastConst.Variant432d5353f8d7e685d35350bb1d0f686b92b6a6e954edb6342384274d94974e12

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec` constants.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastConst (aig : AIG α) (val : BitVec w) : AIG.RefVec aig w :=
  go aig val 0 (.emptyWithCapacity w) (by omega)
where
  go (aig : AIG α) (val : BitVec w) (curr : Nat) (s : AIG.RefVec aig curr) (hcurr : curr ≤ w) :
      AIG.RefVec aig w :=
    if hcurr : curr < w then
      let bitRef := aig.mkConstCached (val.getLsbD curr)
      let s := s.push bitRef
      go aig val (curr + 1) s (by omega)
    else
      have hcurr : curr = w := by omega
      hcurr ▸ s
  termination_by w - curr

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
