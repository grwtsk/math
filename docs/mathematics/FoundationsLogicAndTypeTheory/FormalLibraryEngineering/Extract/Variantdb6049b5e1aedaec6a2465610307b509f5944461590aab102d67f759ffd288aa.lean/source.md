# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extract.Variantdb6049b5e1aedaec6a2465610307b509f5944461590aab102d67f759ffd288aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a26160b4f0d0880a749e4829f4098b3b1a4a9dd1` · SHA-256 `c848cf3ff3aadf9558576d323bcbb5ef0e587e1bba52989fe9ee9eeefac819e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractTarget.Variant01a6d9d7d5476591bee9ddb4f8d24203dd6c7e4a34aed1283a0587981f3c1315","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01a6d9d7d5476591bee9ddb4f8d24203dd6c7e4a34aed1283a0587981f3c1315","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ExtractTarget.Variant01a6d9d7d5476591bee9ddb4f8d24203dd6c7e4a34aed1283a0587981f3c1315","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"01a6d9d7d5476591bee9ddb4f8d24203dd6c7e4a34aed1283a0587981f3c1315","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/Extract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractTarget.Variant01a6d9d7d5476591bee9ddb4f8d24203dd6c7e4a34aed1283a0587981f3c1315

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.extract`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

structure ExtractTarget (aig : AIG α) (len : Nat) where
  {w : Nat}
  vec : AIG.RefVec aig w
  start : Nat

def blastExtract (aig : AIG α) (target : ExtractTarget aig newWidth) :
    AIG.RefVecEntry α newWidth :=
  let ⟨input, start⟩ := target
  ⟨aig, go input start 0 (by omega) (.emptyWithCapacity newWidth)⟩
where
  go {aig : AIG α} {w : Nat} (input : AIG.RefVec aig w) (start : Nat) (curr : Nat)
      (hcurr : curr ≤ newWidth) (s : AIG.RefVec aig curr) :
      AIG.RefVec aig newWidth :=
  if h : curr < newWidth then
    let falseRef := aig.mkConstCached false
    let nextRef := input.getD (start + curr) falseRef
    let s := s.push nextRef
    go input start (curr + 1) (by omega) s
  else
    have : curr = newWidth := by omega
    this ▸ s
termination_by newWidth - curr

instance : AIG.LawfulVecOperator α ExtractTarget blastExtract where
  le_size := by
    intros
    unfold blastExtract
    simp
  decl_eq := by
    intros
    unfold blastExtract
    simp; rfl

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
