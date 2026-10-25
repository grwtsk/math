# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RotateRight.Variant7ab46a3f0a63b6cc188c157c70be344ca074708fc41e0eef20a3271b575bca87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2019def8de606667060c03e2eb092b4a1124111c` · SHA-256 `e45e77b5a18817debce1c033afd9fcee80b628cfc0e2b03356761db3693d8207`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastRotateRight.Variantc7c6adc7972815d693dc3f91a593c2dd0be0a4e2fe955836f9d0a779ccc8d970","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7c6adc7972815d693dc3f91a593c2dd0be0a4e2fe955836f9d0a779ccc8d970","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BlastRotateRight.Variantc7c6adc7972815d693dc3f91a593c2dd0be0a4e2fe955836f9d0a779ccc8d970","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c7c6adc7972815d693dc3f91a593c2dd0be0a4e2fe955836f9d0a779ccc8d970","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/RotateRight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastRotateRight.Variantc7c6adc7972815d693dc3f91a593c2dd0be0a4e2fe955836f9d0a779ccc8d970

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.rotateRight`. Note that only
rotating with a known rotation distance is supported because `rotateRight` takes a `Nat` as distance.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastRotateRight (aig : AIG α) (target : AIG.ShiftTarget aig w) :
    AIG.RefVecEntry α w :=
  let ⟨input, distance⟩ := target
  ⟨aig, go input distance 0 (by omega) (.emptyWithCapacity w)⟩
where
  go {aig : AIG α} (input : AIG.RefVec aig w) (distance : Nat) (curr : Nat) (hcurr : curr ≤ w)
      (s : AIG.RefVec aig curr) :
      AIG.RefVec aig w :=
  if hcurr1 : curr < w then
    if hcurr2 : curr < w - distance % w then
      let ref := input.get ((distance % w) + curr) (by omega)
      let s := s.push ref
      go input distance (curr + 1) (by omega) s
    else
      let ref := input.get (curr - (w - (distance % w))) (by omega)
      let s := s.push ref
      go input distance (curr + 1) (by omega) s
  else
    have hcurr : curr = w := by omega
    hcurr ▸ s
termination_by w - curr

instance : AIG.LawfulVecOperator α AIG.ShiftTarget blastRotateRight where
  le_size := by
    intros
    unfold blastRotateRight
    dsimp only
    omega
  decl_eq := by
    intros
    unfold blastRotateRight
    dsimp only; rfl

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
