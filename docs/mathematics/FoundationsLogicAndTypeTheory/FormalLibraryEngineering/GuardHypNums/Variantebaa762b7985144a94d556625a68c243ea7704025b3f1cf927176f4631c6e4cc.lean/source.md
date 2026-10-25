# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardHypNums.Variantebaa762b7985144a94d556625a68c243ea7704025b3f1cf927176f4631c6e4cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfe69a76967aed882c376d6026b519d8a663ba87` · SHA-256 `395009dba8d4e23bc330b96e1c26ca1242a6ae6fc56d4b628dd2c31bd3d69bf2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant519a6b04b5e67a5af74f9dd9df9df55542640c6a85437907bf4e50dc461f9b97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"519a6b04b5e67a5af74f9dd9df9df55542640c6a85437907bf4e50dc461f9b97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variant519a6b04b5e67a5af74f9dd9df9df55542640c6a85437907bf4e50dc461f9b97","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"519a6b04b5e67a5af74f9dd9df9df55542640c6a85437907bf4e50dc461f9b97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/GuardHypNums.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic

/-!
A tactic stub file for the `guard_hyp_nums` tactic.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant519a6b04b5e67a5af74f9dd9df9df55542640c6a85437907bf4e50dc461f9b97

open Lean Meta Elab Tactic

/--
`guard_hyp_nums n` succeeds if there are exactly `n` hypotheses and fails otherwise.

Note that, depending on what options are set, some hypotheses in the local context might
not be printed in the goal view. This tactic computes the total number of hypotheses,
not the number of visible hypotheses.
-/
elab (name := guardHypNums) "guard_hyp_nums " n:num : tactic => do
  let numHyps := (← getLCtx).size
  guard (numHyps = n.getNat) <|>
    throwError "expected {n.getNat} hypotheses but found {numHyps}"
```
