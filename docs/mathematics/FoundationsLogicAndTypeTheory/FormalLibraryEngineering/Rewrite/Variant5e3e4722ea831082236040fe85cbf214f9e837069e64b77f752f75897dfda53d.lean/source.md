# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variant5e3e4722ea831082236040fe85cbf214f9e837069e64b77f752f75897dfda53d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54cf9505498da625c226ccd8f454cee20ee67d6c` · SHA-256 `fbb36968fbb0af554d5bd08c131d7732da6f433451f0165599e6369443a7ca1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variant5a4ee797864c58cb5e40ef58796f06dae9e1c0e7c846473d7561980fa18ec1fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5a4ee797864c58cb5e40ef58796f06dae9e1c0e7c846473d7561980fa18ec1fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Rewrite.Variant5a4ee797864c58cb5e40ef58796f06dae9e1c0e7c846473d7561980fa18ec1fd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5a4ee797864c58cb5e40ef58796f06dae9e1c0e7c846473d7561980fa18ec1fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Conv/Rewrite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Tactic.Rewrite
public import Lean.Elab.Tactic.Conv.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variant5a4ee797864c58cb5e40ef58796f06dae9e1c0e7c846473d7561980fa18ec1fd

public section

namespace Lean.Elab.Tactic.Conv
open Meta

@[builtin_tactic Lean.Parser.Tactic.Conv.rewrite] def evalRewrite : Tactic := fun stx => do
  let config ← Tactic.elabRewriteConfig stx[1]
  withRWRulesSeq stx[0] stx[2] fun symm term => withMainContext do
    let r ← Term.withSynthesize do
      elabRewrite (← getMainGoal) (← getLhs) term symm (config := config)
    let r ← finishElabRewrite r
    updateLhs r.eNew r.eqProof
    replaceMainGoal ((← getMainGoal) :: r.mvarIds)

end Lean.Elab.Tactic.Conv
```
