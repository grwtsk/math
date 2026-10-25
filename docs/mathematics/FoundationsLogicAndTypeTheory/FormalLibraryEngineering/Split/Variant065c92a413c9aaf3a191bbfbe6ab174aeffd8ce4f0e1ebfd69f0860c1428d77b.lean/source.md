# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Split.Variant065c92a413c9aaf3a191bbfbe6ab174aeffd8ce4f0e1ebfd69f0860c1428d77b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90263e4e5da09f9933d1e7571c9bfc65a1c6d461` · SHA-256 `2e6e3a8e7f0be9039ecbee345844506e100894951904299ffe30bb2fac620b67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variant312b9167d64314540b13da100ff2f18907a3b53fc0dd9e69b82f31f8a7c90fc2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"312b9167d64314540b13da100ff2f18907a3b53fc0dd9e69b82f31f8a7c90fc2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attribute.Variant312b9167d64314540b13da100ff2f18907a3b53fc0dd9e69b82f31f8a7c90fc2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"312b9167d64314540b13da100ff2f18907a3b53fc0dd9e69b82f31f8a7c90fc2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/BuiltinRules/Split.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variant312b9167d64314540b13da100ff2f18907a3b53fc0dd9e69b82f31f8a7c90fc2

public section

open Lean
open Lean.Meta

namespace Aesop.BuiltinRules

@[aesop (rule_sets := [builtin]) safe 100]
meta def splitTarget : RuleTac := RuleTac.ofSingleRuleTac λ input => do
  let (some goals, steps) ← splitTargetS? input.goal |>.run | throwError
    "nothing to split in target"
  let goals ← goals.mapM (mvarIdToSubgoal input.goal ·)
  return (goals, steps, none)

meta partial def splitHypothesesCore (goal : MVarId) :
    ScriptM (Option (Array MVarId)) :=
  withIncRecDepth do
  let some goals ← splitFirstHypothesisS? goal
    | return none
  let mut subgoals := #[]
  for g in goals do
    if let some subgoals' ← splitHypothesesCore g then
      subgoals := subgoals ++ subgoals'
    else
      subgoals := subgoals.push g
  return subgoals

@[aesop (rule_sets := [builtin]) safe 1000]
meta def splitHypotheses : RuleTac := RuleTac.ofSingleRuleTac λ input => do
  let (some goals, steps) ← splitHypothesesCore input.goal |>.run
    | throwError "no splittable hypothesis found"
  let goals ← goals.mapM (mvarIdToSubgoal input.goal ·)
  return (goals, steps, none)

end Aesop.BuiltinRules
```
