# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GenInjective.Variant47bfb6f755201ce9365b2845b4dab656d56090b5c0daa39603f68963344345ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abedddf4604d8e722d33475a7b3c4a181c6a349f` · SHA-256 `e2eb862843e5fb2d257b1b2ddb1f7e037151b697624a282ee2339a0e56eb0d83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant27d8689e6691bafedbd03285bf4867f4d87f8e77d85d604da372dd2ffde8b48c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27d8689e6691bafedbd03285bf4867f4d87f8e77d85d604da372dd2ffde8b48c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant27d8689e6691bafedbd03285bf4867f4d87f8e77d85d604da372dd2ffde8b48c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"27d8689e6691bafedbd03285bf4867f4d87f8e77d85d604da372dd2ffde8b48c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/GenInjective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Command
import Lean.Meta.Injective
import Lean.Meta.Constructions.CtorIdx


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant27d8689e6691bafedbd03285bf4867f4d87f8e77d85d604da372dd2ffde8b48c

namespace Lean.Elab.Command

@[builtin_command_elab genInjectiveTheorems] def elabGenInjectiveTheorems : CommandElab := fun stx => do
  liftTermElabM do
    let declName ← realizeGlobalConstNoOverloadWithInfo stx[1]
    mkCtorIdx declName
    Meta.mkInjectiveTheorems declName

end Lean.Elab.Command
```
