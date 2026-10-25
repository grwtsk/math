# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Substructure.Variant377faa7868a0c3ce77bf6296d9ef8b266a95bf1c3cffd215e11b627d8e3efeb8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b652dc6de28bbd148146b9fd2a86808eef74b957` · SHA-256 `6078dfe494b607f941f78b2d797994194cd6ff47eae511fc910986dd3b918b9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitblast.Variantcef2709d42d3a339704011940e53007e975032b8ec66dd70ea8eee2c601f0f6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cef2709d42d3a339704011940e53007e975032b8ec66dd70ea8eee2c601f0f6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Bitblast.Variantcef2709d42d3a339704011940e53007e975032b8ec66dd70ea8eee2c601f0f6c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"cef2709d42d3a339704011940e53007e975032b8ec66dd70ea8eee2c601f0f6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Substructure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Pred
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitblast.Variantcef2709d42d3a339704011940e53007e975032b8ec66dd70ea8eee2c601f0f6c

@[expose] public section

/-!
This module contains the logic to turn a `BVLogicalExpr` into an `AIG` with maximum subterm sharing,
through the use of a cache that re-uses sub-circuits if possible. Additionally a term level cache
is used to prevent rerunning bitblasting on common bitvector subexpressions.
-/

namespace Std.Tactic.BVDecide

open Std.Sat Std.Sat.AIG

namespace BVLogicalExpr

/--
Turn a `BoolExpr` into an `Entrypoint`.
-/
def bitblast (expr : BVLogicalExpr) : Entrypoint BVBit :=
  go AIG.empty expr .empty |>.result.val
where
  go (aig : AIG BVBit) (expr : BVLogicalExpr) (cache : BVExpr.Cache aig) : Return aig :=
    match expr with
    | .literal var => BVPred.bitblast aig ⟨var, cache⟩
    | .const val =>
      ⟨⟨⟨aig, aig.mkConstCached val⟩, by simp⟩, cache⟩
    | .not expr =>
      let ⟨⟨⟨aig, exprRef⟩, hexpr⟩, cache⟩ := go aig expr cache
      let ret := aig.mkNotCached exprRef
      have := LawfulOperator.le_size (f := mkNotCached) ..
      let cache := cache.cast this
      have := by
        apply LawfulOperator.le_size_of_le_aig_size (f := mkNotCached)
        exact hexpr
      ⟨⟨ret, this⟩, cache⟩
    | .ite discr lhs rhs =>
      let ⟨⟨⟨aig, discrRef⟩, dextend⟩, cache⟩ := go aig discr cache
      let ⟨⟨⟨aig, lhsRef⟩, lextend⟩, cache⟩ := go aig lhs cache
      let ⟨⟨⟨aig, rhsRef⟩, rextend⟩, cache⟩ := go aig rhs cache
      let discrRef := discrRef.cast <| by
        dsimp only at lextend rextend ⊢
        omega
      let lhsRef := lhsRef.cast <| by
        dsimp only at rextend ⊢
        omega

      let input := ⟨discrRef, lhsRef, rhsRef⟩
      let ret := aig.mkIfCached input
      have := LawfulOperator.le_size (f := mkIfCached) ..
      let cache := cache.cast this
      have := by
        apply LawfulOperator.le_size_of_le_aig_size (f := mkIfCached)
        dsimp only at dextend lextend rextend
        omega
      ⟨⟨ret, this⟩, cache⟩
    | .gate g lhs rhs =>
      let ⟨⟨⟨aig, lhsRef⟩, lextend⟩, cache⟩ := go aig lhs cache
      let ⟨⟨⟨aig, rhsRef⟩, rextend⟩, cache⟩ := go aig rhs cache
      let lhsRef := lhsRef.cast <| by
        dsimp only at rextend ⊢
        omega
      let input := ⟨lhsRef, rhsRef⟩
      match g with
      | .and =>
        let ret := aig.mkAndCached input
        have := LawfulOperator.le_size (f := mkAndCached) ..
        let cache := cache.cast this
        have := by
          apply LawfulOperator.le_size_of_le_aig_size (f := mkAndCached)
          dsimp only at lextend rextend
          omega
        ⟨⟨ret, this⟩, cache⟩
      | .xor =>
        let ret := aig.mkXorCached input
        have := LawfulOperator.le_size (f := mkXorCached) ..
        let cache := cache.cast this
        have := by
          apply LawfulOperator.le_size_of_le_aig_size (f := mkXorCached)
          dsimp only at lextend rextend
          omega
        ⟨⟨ret, this⟩, cache⟩
      | .beq =>
        let ret := aig.mkBEqCached input
        have := LawfulOperator.le_size (f := mkBEqCached) ..
        let cache := cache.cast this
        have := by
          apply LawfulOperator.le_size_of_le_aig_size (f := mkBEqCached)
          dsimp only at lextend rextend
          omega
        ⟨⟨ret, this⟩, cache⟩
      | .or =>
        let ret := aig.mkOrCached input
        have := LawfulOperator.le_size (f := mkOrCached) ..
        let cache := cache.cast this
        have := by
          apply LawfulOperator.le_size_of_le_aig_size (f := mkOrCached)
          dsimp only at lextend rextend
          omega
        ⟨⟨ret, this⟩, cache⟩

namespace bitblast

theorem go_le_size (aig : AIG BVBit) (expr : BVLogicalExpr) (cache : BVExpr.Cache aig) :
    aig.decls.size ≤ (go aig expr cache).result.val.aig.decls.size :=
  (go aig expr cache).result.property

theorem go_lt_size_of_lt_aig_size (aig : AIG BVBit) (expr : BVLogicalExpr)
    (cache : BVExpr.Cache aig) (h : x < aig.decls.size) :
    x < (go aig expr cache).result.val.aig.decls.size := by
  apply Nat.lt_of_lt_of_le
  · exact h
  · apply go_le_size

theorem go_decl_eq (idx) (aig : AIG BVBit) (cache : BVExpr.Cache aig) (h : idx < aig.decls.size) (hbounds) :
    (go aig expr cache).result.val.aig.decls[idx]'hbounds = aig.decls[idx] := by
  induction expr generalizing aig with
  | const => simp [go]
  | literal =>
    simp only [go]
    rw [BVPred.bitblast_decl_eq]
  | not expr ih =>
    simp only [go]
    have := go_le_size aig expr cache
    specialize ih aig cache (by omega) (by omega)
    rw [AIG.LawfulOperator.decl_eq (f := mkNotCached)]
    assumption
  | ite discr lhs rhs dih lih rih =>
    simp only [go]
    rw [AIG.LawfulOperator.decl_eq (f := mkIfCached), rih, lih, dih]
    · apply go_lt_size_of_lt_aig_size
      assumption
    · apply go_lt_size_of_lt_aig_size
      apply go_lt_size_of_lt_aig_size
      assumption
    · apply go_lt_size_of_lt_aig_size
      apply go_lt_size_of_lt_aig_size
      apply go_lt_size_of_lt_aig_size
      assumption
  | gate g lhs rhs lih rih =>
    cases g with
    | and =>
      simp only [go]
      rw [AIG.LawfulOperator.decl_eq (f := mkAndCached), rih, lih]
      · apply go_lt_size_of_lt_aig_size
        assumption
      · apply go_lt_size_of_lt_aig_size
        apply go_lt_size_of_lt_aig_size
        assumption
    | xor =>
      simp only [go]
      rw [AIG.LawfulOperator.decl_eq (f := mkXorCached), rih, lih]
      · apply go_lt_size_of_lt_aig_size
        assumption
      · apply go_lt_size_of_lt_aig_size
        apply go_lt_size_of_lt_aig_size
        assumption
    | beq =>
      simp only [go]
      rw [AIG.LawfulOperator.decl_eq (f := mkBEqCached), rih, lih]
      · apply go_lt_size_of_lt_aig_size
        assumption
      · apply go_lt_size_of_lt_aig_size
        apply go_lt_size_of_lt_aig_size
        assumption
    | or =>
      simp only [go]
      rw [AIG.LawfulOperator.decl_eq (f := mkOrCached), rih, lih]
      · apply go_lt_size_of_lt_aig_size
        assumption
      · apply go_lt_size_of_lt_aig_size
        apply go_lt_size_of_lt_aig_size
        assumption

theorem go_isPrefix_aig {aig : AIG BVBit} (cache : BVExpr.Cache aig) :
    IsPrefix aig.decls (go aig expr cache).result.val.aig.decls := by
  apply IsPrefix.of
  · intro idx h
    apply go_decl_eq
  · apply go_le_size

theorem go_denote_mem_prefix (aig : AIG BVBit) (cache : BVExpr.Cache aig) (hstart) :
    ⟦
      (go aig expr cache).result.val.aig,
      ⟨start, inv, go_lt_size_of_lt_aig_size (h := hstart) ..⟩,
      assign
    ⟧
      =
    ⟦aig, ⟨start, inv, hstart⟩, assign⟧ := by
  apply denote.eq_of_isPrefix (entry := ⟨aig, start, inv, hstart⟩)
  apply go_isPrefix_aig

end bitblast
end BVLogicalExpr

end Std.Tactic.BVDecide
```
