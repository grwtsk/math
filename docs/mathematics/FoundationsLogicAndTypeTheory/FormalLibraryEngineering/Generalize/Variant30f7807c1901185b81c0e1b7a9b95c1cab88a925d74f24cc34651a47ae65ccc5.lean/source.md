# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Generalize.Variant30f7807c1901185b81c0e1b7a9b95c1cab88a925d74f24cc34651a47ae65ccc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a73ee2d63b4154f84a13ed249c434f3a3945284c` · SHA-256 `e263b427526692e322af9844f04cc130e89cb9ba8c036bea712d8eda1d7d922b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Generalize.Variant5f321dc0a9e8ed1ee30260bf5bbe09eed58f064a4fc5ef628c28ffaa16d3b70b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f321dc0a9e8ed1ee30260bf5bbe09eed58f064a4fc5ef628c28ffaa16d3b70b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Generalize.Variant5f321dc0a9e8ed1ee30260bf5bbe09eed58f064a4fc5ef628c28ffaa16d3b70b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5f321dc0a9e8ed1ee30260bf5bbe09eed58f064a4fc5ef628c28ffaa16d3b70b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Generalize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Meta.Tactic.Generalize
public import Lean.Elab.Binders
public import Lean.Elab.Tactic.Location


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Generalize.Variant5f321dc0a9e8ed1ee30260bf5bbe09eed58f064a4fc5ef628c28ffaa16d3b70b

public section

namespace Lean.Elab.Tactic
open Meta

@[builtin_tactic Lean.Parser.Tactic.generalize] def evalGeneralize : Tactic := fun stx =>
  withMainContext do
    let mut xIdents := #[]
    let mut hIdents := #[]
    let mut args := #[]
    for arg in stx[1].getSepArgs do
      let hName? ← if arg[0].isNone then
        pure none
      else
        hIdents := hIdents.push arg[0][0]
        pure (some arg[0][0].getId)
      let expr ← elabTerm arg[1] none
      xIdents := xIdents.push arg[3]
      args := args.push { hName?, expr, xName? := arg[3].getId : GeneralizeArg }
    let hyps ← match expandOptLocation stx[2] with
    | .targets hyps _ => getFVarIds hyps
    | .wildcard => pure ((← getLocalHyps).map (·.fvarId!))
    let mvarId ← getMainGoal
    mvarId.withContext do
      let (_, newVars, mvarId) ← mvarId.generalizeHyp args hyps
      mvarId.withContext do
        for v in newVars, id in xIdents ++ hIdents do
          Term.addLocalVarInfo id (.fvar v)
        replaceMainGoal [mvarId]

end Lean.Elab.Tactic
```
