# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant6ff29416c29f841c808ef25d3fffe648924cb2b8da7e927ec2d49946268c70f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d969d314835252092eaae766e73e83796d69801` · SHA-256 `48903ea9566fdd3ab0ca126c70bb0d859d411e4726b939e4d1cf0aa00a2b7e67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variant602292051351aa87744fcfc90cca86c718428576fad89d3f1df7aa317afb3641","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"602292051351aa87744fcfc90cca86c718428576fad89d3f1df7aa317afb3641","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attribute.Variant602292051351aa87744fcfc90cca86c718428576fad89d3f1df7aa317afb3641","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"602292051351aa87744fcfc90cca86c718428576fad89d3f1df7aa317afb3641","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/BuiltinRules/Ext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variant602292051351aa87744fcfc90cca86c718428576fad89d3f1df7aa317afb3641

public section

namespace Aesop.BuiltinRules

open Lean Lean.Meta

meta def extCore (goal : MVarId) : ScriptM (Option (Array MVarId)) :=
  saturate1 goal λ goal => do
    let r ← straightLineExtS goal
    if r.depth == 0 then
      return none
    else
      return r.goals.map (·.1)

@[aesop 80% tactic (index := [target _ = _]) (rule_sets := [builtin])]
meta def ext : RuleTac := RuleTac.ofSingleRuleTac λ input => do
  let (some goals, steps) ← extCore input.goal |>.run
    | throwError "found no applicable ext lemma"
  let goals ← goals.mapM (mvarIdToSubgoal (parentMVarId := input.goal) ·)
  return (goals, steps, none)

end Aesop.BuiltinRules
```
