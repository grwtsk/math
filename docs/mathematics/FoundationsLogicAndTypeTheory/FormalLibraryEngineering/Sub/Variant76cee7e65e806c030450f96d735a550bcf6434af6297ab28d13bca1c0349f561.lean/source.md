# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sub.Variant76cee7e65e806c030450f96d735a550bcf6434af6297ab28d13bca1c0349f561

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4056fdda81ed97aefab8129d0a5843271a66a11` · SHA-256 `51e1be6aaa2fc434d1e5181bfe0f7842abb6c7fd7e5fc3941923da897e788bc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastSub.Variant5a1272c41b4301b25fa776b8bffc452694e81db5bf9aef73b4fbfcd2b765ee95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5a1272c41b4301b25fa776b8bffc452694e81db5bf9aef73b4fbfcd2b765ee95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BlastSub.Variant5a1272c41b4301b25fa776b8bffc452694e81db5bf9aef73b4fbfcd2b765ee95","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5a1272c41b4301b25fa776b8bffc452694e81db5bf9aef73b4fbfcd2b765ee95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/Sub.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Neg


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastSub.Variant5a1272c41b4301b25fa776b8bffc452694e81db5bf9aef73b4fbfcd2b765ee95

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.sub`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastSub (aig : AIG α) (input : AIG.BinaryRefVec aig w) : AIG.RefVecEntry α w :=
  let ⟨lhs, rhs⟩ := input
  let res := blastNeg aig rhs
  let aig := res.aig
  let negRhs := res.vec
  let lhs := lhs.cast <| AIG.LawfulVecOperator.le_size (f := blastNeg) ..

  blastAdd aig ⟨lhs, negRhs⟩

instance : AIG.LawfulVecOperator α AIG.BinaryRefVec blastSub where
  le_size := by
    intros
    simp only [blastSub]
    apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := blastAdd)
    apply AIG.LawfulVecOperator.le_size (f := blastNeg)
  decl_eq := by
    intros
    simp only [blastSub]
    rw [AIG.LawfulVecOperator.decl_eq (f := blastAdd)]
    rw [AIG.LawfulVecOperator.decl_eq (f := blastNeg)]
    apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastNeg)
    assumption


end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
