# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variantaf8817a8dd70fda1e0c37969e6e1b763d060283e6e7bd2dbd0e1ae0cfcad6f3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `696c7107ccc0a5e58ff162fc084be7015b0604c1` · SHA-256 `5b22689068da9e756cef7d53f9b8c113dee926975f200b7aaf2c3061596c36eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunTactic.Variant1ac7d4f8e42a7fad023c15264b7b633f0797f0f553c0c46b8ef4892c80c09a29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ac7d4f8e42a7fad023c15264b7b633f0797f0f553c0c46b8ef4892c80c09a29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RunTactic.Variant1ac7d4f8e42a7fad023c15264b7b633f0797f0f553c0c46b8ef4892c80c09a29","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1ac7d4f8e42a7fad023c15264b7b633f0797f0f553c0c46b8ef4892c80c09a29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Meta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.SyntheticMVars


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunTactic.Variant1ac7d4f8e42a7fad023c15264b7b633f0797f0f553c0c46b8ef4892c80c09a29

public section

namespace Lean.Elab
open Term

/-- Apply the give tactic code to `mvarId` in `MetaM`. -/
def runTactic (mvarId : MVarId) (tacticCode : Syntax) (ctx : Context := {}) (s : State := {}) : MetaM (List MVarId × State) := do
  instantiateMVarDeclMVars mvarId
  let go : TermElabM (List MVarId) :=
    withSynthesize do Tactic.run mvarId (Tactic.evalTactic tacticCode *> Tactic.pruneSolvedGoals)
  go.run ctx s

end Lean.Elab
```
