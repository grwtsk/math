# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Neg.Variant3f02fdbd66b19b5911840051fb98fe68db41047b4e8260329831b3adaed7f2a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a16cc41c7ad98f0c8461b14ad0ce7fbf0f22b0e1` · SHA-256 `74febf64db0d7c54a5f34d095069ea5311440d91e2c5b593980fa908f99d0fbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastNeg.Variantfc33ab180152ba0423b7dac03fdafcc537870aabdd5885beea172d8169b4580c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc33ab180152ba0423b7dac03fdafcc537870aabdd5885beea172d8169b4580c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BlastNeg.Variantfc33ab180152ba0423b7dac03fdafcc537870aabdd5885beea172d8169b4580c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"fc33ab180152ba0423b7dac03fdafcc537870aabdd5885beea172d8169b4580c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/Neg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Add
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Not
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Const


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastNeg.Variantfc33ab180152ba0423b7dac03fdafcc537870aabdd5885beea172d8169b4580c

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.neg`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastNeg (aig : AIG α) (input : AIG.RefVec aig w) : AIG.RefVecEntry α w :=
  let res := blastNot aig input
  let aig := res.aig
  let notInput := res.vec

  let one := blastConst aig 1#w

  blastAdd aig ⟨notInput, one⟩

instance : AIG.LawfulVecOperator α AIG.RefVec blastNeg where
  le_size := by
    intros
    simp only [blastNeg]
    apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := blastAdd)
    apply AIG.LawfulVecOperator.le_size (f := blastNot)
  decl_eq := by
    intros
    simp only [blastNeg]
    rw [AIG.LawfulVecOperator.decl_eq (f := blastAdd)]
    rw [AIG.LawfulVecOperator.decl_eq (f := blastNot)]
    · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastNot)
      assumption

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
