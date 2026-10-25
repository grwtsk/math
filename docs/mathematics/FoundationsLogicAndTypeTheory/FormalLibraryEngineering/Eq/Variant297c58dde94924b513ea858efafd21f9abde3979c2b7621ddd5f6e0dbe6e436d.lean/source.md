# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eq.Variant297c58dde94924b513ea858efafd21f9abde3979c2b7621ddd5f6e0dbe6e436d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd8c9289005bfa4c393812a9bed9f56af426aa69` · SHA-256 `e0ec40d3288d83fa11a4b271a0b9d9e563ccd4674713788f7c42a7fdba7699be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkEq.Variante5da70a35aebeeb386402a65e491bca7053a5bfdd6c6688c22c6a70536974f5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5da70a35aebeeb386402a65e491bca7053a5bfdd6c6688c22c6a70536974f5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MkEq.Variante5da70a35aebeeb386402a65e491bca7053a5bfdd6c6688c22c6a70536974f5e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e5da70a35aebeeb386402a65e491bca7053a5bfdd6c6688c22c6a70536974f5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/Eq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.AIG.RefVecOperator


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkEq.Variante5da70a35aebeeb386402a65e491bca7053a5bfdd6c6688c22c6a70536974f5e

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec` equality.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVPred

variable [Hashable α] [DecidableEq α]

def mkEq (aig : AIG α) (pair : AIG.BinaryRefVec aig w) : AIG.Entrypoint α :=
  let res := AIG.RefVec.zip aig pair AIG.mkBEqCached
  let aig := res.aig
  let bits := res.vec
  AIG.RefVec.fold aig bits AIG.mkAndCached

instance {w : Nat} : AIG.LawfulOperator α (AIG.BinaryRefVec · w) mkEq where
  le_size := by
    intros
    simp only [mkEq]
    apply AIG.RefVec.fold_le_size_of_le_aig_size
    apply AIG.RefVec.zip_le_size
  decl_eq := by
    intros
    simp only [mkEq]
    rw [AIG.RefVec.fold_decl_eq]
    rw [AIG.RefVec.zip_decl_eq]
    apply AIG.RefVec.zip_lt_size_of_lt_aig_size
    assumption

end BVPred

end Std.Tactic.BVDecide
```
