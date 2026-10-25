# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocess.Variant3178bfdd4925a8f9d56e56ee12565d784abea7b23f9839fee5f0707474d1d83b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b87c699714447bc67d67dd8c80bd088a89e5ce44` · SHA-256 `2ae4a7e2a54f85dbdcf0c36a63a40ea2ed1bd20e08a2e1a063a7bcde0d305965`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocess.Variantdc3c0227bea44873acdb1bee024043a5fd699812232e355a08f67654f4f7905c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc3c0227bea44873acdb1bee024043a5fd699812232e355a08f67654f4f7905c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Preprocess.Variantdc3c0227bea44873acdb1bee024043a5fd699812232e355a08f67654f4f7905c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dc3c0227bea44873acdb1bee024043a5fd699812232e355a08f67654f4f7905c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RuleTac/Preprocess.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleTac.Basic
public import Aesop.Script.SpecificTactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocess.Variantdc3c0227bea44873acdb1bee024043a5fd699812232e355a08f67654f4f7905c

public section

open Lean Lean.Meta

namespace Aesop.RuleTac

/--
This `RuleTac` is applied once to the root goal, before any other rules are
tried.
-/
def preprocess : RuleTac := RuleTac.ofSingleRuleTac λ input => do
  let ((mvarId, _), steps) ← renameInaccessibleFVarsS input.goal |>.run
  let diff := {
    oldGoal := input.goal
    newGoal := mvarId
    addedFVars := ∅
    removedFVars := ∅
    targetChanged := false
  }
  return (#[{ diff }], steps, none)

end Aesop.RuleTac
```
