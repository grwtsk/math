# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant5cfcf463774a3af42a0c8617855c5dd163edba979e47fd42af877ce50aacf191

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0cbcb978bd0a8b89dec5dc4a27b2f38ad7fdce1` · SHA-256 `44a2244d93f0a0250ed7b09a624da4d502d4abf2e788a8ce695136ba8c942012`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyCleanWfTactic.Varianta79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ApplyCleanWfTactic.Varianta79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/WF/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Lean.Elab.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyCleanWfTactic.Varianta79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a

public section

namespace Lean.Elab.WF

register_builtin_option debug.rawDecreasingByGoal : Bool := {
  defValue := false
  descr    := "Shows the raw `decreasing_by` goal including internal implementation detail \
               instead of cleaning it up with the `clean_wf` tactic. Can be enabled for debugging \
               purposes. Please report an issue if you have to use this option for other reasons."
}

open Lean Elab Tactic

def applyCleanWfTactic : TacticM Unit := do
  unless debug.rawDecreasingByGoal.get (← getOptions) do
    Tactic.evalTactic (← `(tactic| all_goals clean_wf))

end Lean.Elab.WF
```
