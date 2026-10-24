-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BVVar.Variant2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BVVar.Variant2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Var.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BVVar.Variant2a6090c1ac912fcb32d5f0b32fa702a34783d5283c708b9d5a4148364c96daae

@[expose] public section

/-!
This module contains the implementation of a bitblaster for symbolic `BitVec` values.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

structure BVVar (width : Nat) where
  ident : Nat

def blastVar (aig : AIG BVBit) (var : BVVar w) : AIG.RefVecEntry BVBit w :=
  go aig w var.ident 0 (.emptyWithCapacity w) (by omega)
where
  go (aig : AIG BVBit) (w : Nat) (a : Nat) (curr : Nat) (s : AIG.RefVec aig curr)
    (hcurr : curr ≤ w) :
    AIG.RefVecEntry BVBit w :=
  if hcurr : curr < w then
    let res := aig.mkAtomCached ⟨a, ⟨curr, hcurr⟩⟩
    let aig := res.aig
    let bitRef := res.ref
    let s := s.cast <| AIG.LawfulOperator.le_size (f := AIG.mkAtomCached) ..
    let s := s.push bitRef
    go aig w a (curr + 1) s (by omega)
  else
    have hcurr : curr = w := by omega
    ⟨aig, hcurr ▸ s⟩
  termination_by w - curr

theorem blastVar.go_le_size {aig : AIG BVBit} (curr : Nat) (s : AIG.RefVec aig curr) (a : Nat)
    (hcurr : curr ≤ w) :
    aig.decls.size ≤ (go aig w a curr s hcurr).aig.decls.size := by
  unfold go
  split
  · dsimp only
    refine Nat.le_trans ?_ (by apply go_le_size)
    apply AIG.LawfulOperator.le_size (f := AIG.mkAtomCached)
  · simp
termination_by w - curr

theorem blastVar.go_decl_eq {aig : AIG BVBit} (curr : Nat) (s : AIG.RefVec aig curr) (a : Nat)
    (hcurr : curr ≤ w) :
    ∀ (idx : Nat) (h1) (h2), (go aig w a curr s hcurr).aig.decls[idx]'h2 = aig.decls[idx]'h1 := by
  generalize hgo : go aig w a curr s hcurr = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    rw [← hgo]
    intro curr h1 h2
    rw [blastVar.go_decl_eq]
    rw [AIG.LawfulOperator.decl_eq (f := AIG.mkAtomCached)]
    apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := AIG.mkAtomCached)
    assumption
  · dsimp only at hgo
    rw [← hgo]
    intros
    simp
termination_by w - curr

instance : AIG.LawfulVecOperator BVBit (fun _ w => BVVar w) blastVar where
  le_size := by
    intros
    unfold blastVar
    apply blastVar.go_le_size
  decl_eq := by
    intros
    unfold blastVar
    apply blastVar.go_decl_eq

end bitblast
end BVExpr

end Std.Tactic.BVDecide
