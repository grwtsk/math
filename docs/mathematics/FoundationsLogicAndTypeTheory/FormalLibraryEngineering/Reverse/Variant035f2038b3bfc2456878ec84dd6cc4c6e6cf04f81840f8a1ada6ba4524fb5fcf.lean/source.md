# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reverse.Variant035f2038b3bfc2456878ec84dd6cc4c6e6cf04f81840f8a1ada6ba4524fb5fcf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d37ff47791b06fabc81afae6f2aad511f1064a8` · SHA-256 `9b5646518a01e35715f35b667cceadb7b41f6ec6d31cdf3e5a8a0715bb392fb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastReverse.Variant4ebfb881fa0bbcb6a6cc7069d57ad6b930ba419bbf1e1fac108143b80a5be2ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ebfb881fa0bbcb6a6cc7069d57ad6b930ba419bbf1e1fac108143b80a5be2ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BlastReverse.Variant4ebfb881fa0bbcb6a6cc7069d57ad6b930ba419bbf1e1fac108143b80a5be2ba","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4ebfb881fa0bbcb6a6cc7069d57ad6b930ba419bbf1e1fac108143b80a5be2ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/Reverse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Basic
public import Std.Sat.AIG.LawfulVecOperator
import Init.Data.Nat.Order
import Init.Data.Order.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastReverse.Variant4ebfb881fa0bbcb6a6cc7069d57ad6b930ba419bbf1e1fac108143b80a5be2ba

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.reverse`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

def blastReverse (aig : AIG α) (s : AIG.RefVec aig w) : AIG.RefVecEntry α w :=
  let ⟨refs, hrefs⟩ := s
  ⟨aig, ⟨refs.reverse, by simp [hrefs]⟩⟩

instance : AIG.LawfulVecOperator α AIG.RefVec blastReverse where
  le_size := by simp [blastReverse]
  decl_eq := by simp [blastReverse]

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
