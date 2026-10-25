# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantec8ebfa72c4c016b052559c51f1fef63ad081abbb87832116091aebdcdfce57a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c5ad9815c50862ec0f01e49f56cb1b0bc7b564e` · SHA-256 `edd83dc3c96e7a3ee4a18ec963e4acabea3bbd885014969e53dfb5cafc5b62b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssignmentToAIGAssignment.Variant28ba6cf32722bd3f956dc5e03ce1013a097c42a97248e6ef3e3f2e6260ed354c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28ba6cf32722bd3f956dc5e03ce1013a097c42a97248e6ef3e3f2e6260ed354c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AssignmentToAIGAssignment.Variant28ba6cf32722bd3f956dc5e03ce1013a097c42a97248e6ef3e3f2e6260ed354c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"28ba6cf32722bd3f956dc5e03ce1013a097c42a97248e6ef3e3f2e6260ed354c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Lemmas/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.AIG.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssignmentToAIGAssignment.Variant28ba6cf32722bd3f956dc5e03ce1013a097c42a97248e6ef3e3f2e6260ed354c

@[expose] public section

/-!
This module contains basic infrastructure for converting between variable assignments of `BVExpr`
and `AIG`. This is necessary because `BVExpr` needs to use a list and indices into said list instead
of a function due to the way that it is used in `bv_decide`.
-/

namespace Std.Tactic.BVDecide

namespace BVExpr

def Assignment.toAIGAssignment (assign : Assignment) : BVBit → Bool :=
  fun bit => (assign.get bit.var).bv.getLsbD bit.idx

@[simp]
theorem Assignment.toAIGAssignment_apply (assign : Assignment) (bit : BVBit) :
    assign.toAIGAssignment bit = (assign.get bit.var).bv.getLsbD bit.idx := by
  rfl

end BVExpr

end Std.Tactic.BVDecide
```
