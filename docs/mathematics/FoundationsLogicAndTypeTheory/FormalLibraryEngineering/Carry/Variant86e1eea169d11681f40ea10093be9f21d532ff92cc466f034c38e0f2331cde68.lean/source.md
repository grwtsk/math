# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Carry.Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `014887a64b20432580b1f1966bd10cdea254dc59` · SHA-256 `a06c239a86078799866ca1e2cb95183505fbf00d166720ff34894efe7672df96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OverflowInput.Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OverflowInput.Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Carry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Add
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OverflowInput.Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb

@[expose] public section

/-!
This module contains the implementation of a circuit to determine whether a certain addition would
overflow. This is provided separately from the addition circuit for two reasons:
1. Determining whether an overflow will occur does not require to build a full ripple carry adder.
2. Other operations such as unsigned less than may be implemented in terms of overflow detection.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

structure OverflowInput (aig : AIG α) where
  w : Nat
  vec : AIG.BinaryRefVec aig w
  cin : AIG.Ref aig

def mkOverflowBit (aig : AIG α) (input : OverflowInput aig) : AIG.Entrypoint α :=
  let ⟨_, ⟨lhs, rhs⟩, cin⟩ := input
  go aig lhs rhs 0 cin
where
  go {w : Nat} (aig : AIG α) (lhs rhs : AIG.RefVec aig w) (curr : Nat)
      (cin : AIG.Ref aig) :
      AIG.Entrypoint α :=
    if hidx : curr < w then
      let lin := lhs.get curr hidx
      let rin := rhs.get curr hidx
      let res := mkFullAdderCarry aig ⟨lin, rin, cin⟩
      have := AIG.LawfulOperator.le_size (f := mkFullAdderCarry) ..
      let aig := res.aig
      let carryRef := res.ref
      let lhs := lhs.cast this
      let rhs := rhs.cast this
      go aig lhs rhs (curr + 1) carryRef
    else
      ⟨aig, cin⟩
  termination_by w - curr

namespace mkOverflowBit

theorem go_le_size {aig : AIG α} {cin} {lhs rhs : AIG.RefVec aig w} :
    aig.decls.size ≤ (go aig lhs rhs curr cin).aig.decls.size := by
  unfold go
  dsimp only
  split
  · refine Nat.le_trans ?_ (by apply go_le_size)
    apply AIG.LawfulOperator.le_size (f := mkFullAdderCarry)
  · dsimp only
    omega
termination_by w - curr

theorem go_decl_eq {aig : AIG α} {cin} {lhs rhs : AIG.RefVec aig w} :
    ∀ (idx : Nat) (h1) (h2),
        (go aig lhs rhs curr cin).aig.decls[idx]'h2 = aig.decls[idx]'h1 := by
  generalize hgo : go aig lhs rhs curr cin = res
  unfold go at hgo
  dsimp only at hgo
  split at hgo
  · rw [← hgo]
    intros
    rw [go_decl_eq]
    rw [AIG.LawfulOperator.decl_eq (f := mkFullAdderCarry)]
    apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := mkFullAdderCarry)
    assumption
  · simp [← hgo]
termination_by w - curr

instance : AIG.LawfulOperator α OverflowInput mkOverflowBit where
  le_size := by
    intros
    simp only [mkOverflowBit]
    apply go_le_size
  decl_eq := by
    intros
    simp only [mkOverflowBit]
    rw [go_decl_eq]

end mkOverflowBit

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
