# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Append.Variant63854b16b58be35db367e95b12ff2f8652d4e09ad29f529979e8d5a25efe667b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10d6549512c336f0a1432a670d3c0cec248bd9c7` · SHA-256 `e361c84c9c8cc1bd7ad13a8fefb2782df0c9235a9ca286cc4132e8377ebf54d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AppendTarget.Variantcb880b8fddada6fd54fc3f04cc44eef1d9fab595660fe2db386309627f142854","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb880b8fddada6fd54fc3f04cc44eef1d9fab595660fe2db386309627f142854","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AppendTarget.Variantcb880b8fddada6fd54fc3f04cc44eef1d9fab595660fe2db386309627f142854","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"cb880b8fddada6fd54fc3f04cc44eef1d9fab595660fe2db386309627f142854","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/Append.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Basic
public import Std.Sat.AIG.LawfulVecOperator
import Init.Data.Nat.Order
import Init.Data.Order.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AppendTarget.Variantcb880b8fddada6fd54fc3f04cc44eef1d9fab595660fe2db386309627f142854

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.append`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

structure AppendTarget (aig : AIG α) (combined : Nat) where
  {lw : Nat}
  {rw : Nat}
  lhs : AIG.RefVec aig lw
  rhs : AIG.RefVec aig rw
  h : combined = rw + lw

def blastAppend (aig : AIG α) (target : AppendTarget aig newWidth) :
    AIG.RefVecEntry α newWidth :=
  let ⟨lhs, rhs, h⟩ := target
  let combined := rhs.append lhs
  ⟨aig, h ▸ combined⟩

instance : AIG.LawfulVecOperator α AppendTarget blastAppend where
  le_size := by simp [blastAppend]
  decl_eq := by simp [blastAppend]

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
