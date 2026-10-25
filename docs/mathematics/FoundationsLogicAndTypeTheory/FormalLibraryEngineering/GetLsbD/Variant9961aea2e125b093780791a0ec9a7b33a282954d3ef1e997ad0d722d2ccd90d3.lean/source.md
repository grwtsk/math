# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLsbD.Variant9961aea2e125b093780791a0ec9a7b33a282954d3ef1e997ad0d722d2ccd90d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3069ff40e4223dc262c2e84f7b2fa2ccc6cfbabc` · SHA-256 `a6a7eeae33a9b2e03cdd928f57c670e0cdea7a85ec21a7fd2a03601aae2a9c5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLsbDTarget.Variant27d1a62f360b5f1ddfe1e74aad50cac0d24f1a846f5d094c1cafebbc2e42bee2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27d1a62f360b5f1ddfe1e74aad50cac0d24f1a846f5d094c1cafebbc2e42bee2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GetLsbDTarget.Variant27d1a62f360b5f1ddfe1e74aad50cac0d24f1a846f5d094c1cafebbc2e42bee2","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"27d1a62f360b5f1ddfe1e74aad50cac0d24f1a846f5d094c1cafebbc2e42bee2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/GetLsbD.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.AIG.RefVec


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLsbDTarget.Variant27d1a62f360b5f1ddfe1e74aad50cac0d24f1a846f5d094c1cafebbc2e42bee2

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.getLsbD`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVPred

variable [Hashable α] [DecidableEq α]

structure GetLsbDTarget (aig : AIG α) where
  {w : Nat}
  vec : AIG.RefVec aig w
  idx : Nat

def blastGetLsbD (aig : AIG α) (target : GetLsbDTarget aig) : AIG.Ref aig :=
  if h : target.idx < target.w then
    target.vec.get target.idx h
  else
    aig.mkConstCached false

end BVPred

end Std.Tactic.BVDecide
```
