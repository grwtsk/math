# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ult.Variantadc09d9fbb2096f08bce0f2bc179d4939af012c7066055f1d0d13d546687b7a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `422b6ef141d4d49cf3c12df8fe07294e4811623f` · SHA-256 `d746fb711a8c61705a797298fb0aeacf84fddd3208bfc4911ebe98458e6fdcc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkUlt.Variant7de57c73ecf7f24a39affd9f398271b6387606b3f61316b97ed014150519da82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7de57c73ecf7f24a39affd9f398271b6387606b3f61316b97ed014150519da82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MkUlt.Variant7de57c73ecf7f24a39affd9f398271b6387606b3f61316b97ed014150519da82","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7de57c73ecf7f24a39affd9f398271b6387606b3f61316b97ed014150519da82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/Ult.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Carry
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Not


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkUlt.Variant7de57c73ecf7f24a39affd9f398271b6387606b3f61316b97ed014150519da82

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.ult`. The implementation
makes use of the reduction provided by `BitVec.ult_eq_not_carry`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVPred

variable [Hashable α] [DecidableEq α]

def mkUlt (aig : AIG α) (pair : AIG.BinaryRefVec aig w) : AIG.Entrypoint α :=
  let ⟨lhsRefs, rhsRefs⟩ := pair
  let res := BVExpr.bitblast.blastNot aig rhsRefs
  let aig := res.aig
  let rhsNotRefs := res.vec
  let trueRef := aig.mkConstCached true
  let aig := res.aig
  let lhsRefs := lhsRefs.cast <| by
    apply AIG.LawfulVecOperator.le_size (f := BVExpr.bitblast.blastNot)
  let res := BVExpr.bitblast.mkOverflowBit aig ⟨_, ⟨lhsRefs, rhsNotRefs⟩, trueRef⟩
  let aig := res.aig
  let overflowRef := res.ref
  aig.mkNotCached overflowRef

instance {w : Nat} : AIG.LawfulOperator α (AIG.BinaryRefVec · w) mkUlt where
  le_size := by
    intros
    simp only [mkUlt]
    apply AIG.LawfulOperator.le_size_of_le_aig_size (f := AIG.mkNotCached)
    apply AIG.LawfulOperator.le_size_of_le_aig_size (f := BVExpr.bitblast.mkOverflowBit)
    apply AIG.LawfulVecOperator.le_size (f := BVExpr.bitblast.blastNot)
  decl_eq := by
    intros
    simp only [mkUlt]
    rw [AIG.LawfulOperator.decl_eq (f := AIG.mkNotCached)]
    rw [AIG.LawfulOperator.decl_eq (f := BVExpr.bitblast.mkOverflowBit)]
    rw [AIG.LawfulVecOperator.decl_eq (f := BVExpr.bitblast.blastNot)]
    · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := BVExpr.bitblast.blastNot)
      assumption
    · apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := BVExpr.bitblast.mkOverflowBit)
      apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := BVExpr.bitblast.blastNot)
      assumption

end BVPred

end Std.Tactic.BVDecide
```
