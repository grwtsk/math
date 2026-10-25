# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant83b3e13dff2350a4743ccce88224fe70d8b8329653300f7208201339fcee1396

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad9c76a7eba417d4efa574f6bbc98d28c0e04dd3` · SHA-256 `ed40be3ef518f4a97922b1dd990e6a3efd7fd9213d0026310411edca531267c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunRuleTac.Variant2476339216f379c2cde0fde4b885e9e3b4e5ecbdb41bc07e7fc8e62c470a2e46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2476339216f379c2cde0fde4b885e9e3b4e5ecbdb41bc07e7fc8e62c470a2e46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RunRuleTac.Variant2476339216f379c2cde0fde4b885e9e3b4e5ecbdb41bc07e7fc8e62c470a2e46","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2476339216f379c2cde0fde4b885e9e3b4e5ecbdb41bc07e7fc8e62c470a2e46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Search/Expansion/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleTac.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunRuleTac.Variant2476339216f379c2cde0fde4b885e9e3b4e5ecbdb41bc07e7fc8e62c470a2e46

public section

open Lean
open Lean.Meta

namespace Aesop

def runRuleTac (tac : RuleTac) (ruleName : RuleName)
    (preState : Meta.SavedState) (input : RuleTacInput) :
    BaseM (Except Exception RuleTacOutput) := do
  let result ←
    try
      Except.ok <$> runInMetaState preState do tac input
    catch e =>
      return .error e
  if ← Check.rules.isEnabled then
    if let .ok ruleOutput := result then
      ruleOutput.applications.forM λ rapp => do
        if let (some err) ← rapp.check input then
          throwError "{Check.rules.name}: while applying rule {ruleName}: {err}"
  return result

end Aesop
```
