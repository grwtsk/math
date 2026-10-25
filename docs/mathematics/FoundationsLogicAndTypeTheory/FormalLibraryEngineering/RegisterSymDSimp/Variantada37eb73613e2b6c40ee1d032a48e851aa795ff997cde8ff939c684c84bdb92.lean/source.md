# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RegisterSymDSimp.Variantada37eb73613e2b6c40ee1d032a48e851aa795ff997cde8ff939c684c84bdb92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c828cc7ab63bc2c4b8ee63e7b2ae044749430179` · SHA-256 `31803de358324a25810c68372c28fe75cee7c5362dd11fff246a0333d13e5aec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ValidateOptionDSimprocSyntax.Variantd0b985b2b7a01b4deb6bd9d76aec2a4a9c248a5a1a55c33c52316428f67c0a82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0b985b2b7a01b4deb6bd9d76aec2a4a9c248a5a1a55c33c52316428f67c0a82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ValidateOptionDSimprocSyntax.Variantd0b985b2b7a01b4deb6bd9d76aec2a4a9c248a5a1a55c33c52316428f67c0a82","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d0b985b2b7a01b4deb6bd9d76aec2a4a9c248a5a1a55c33c52316428f67c0a82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/RegisterSymDSimp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Init.Sym.DSimp.DSimprocDSL
import Lean.Meta.Sym.DSimp.Variant
import Lean.Elab.Tactic.Grind.DSimprocDSL
import Lean.Elab.Tactic.Grind.WithGrindTacticM

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ValidateOptionDSimprocSyntax.Variantd0b985b2b7a01b4deb6bd9d76aec2a4a9c248a5a1a55c33c52316428f67c0a82

namespace Lean.Elab.Command
open Meta Sym.DSimp

def validateOptionDSimprocSyntax (proc? : Option Syntax) : CommandElabM Unit := do
  let some proc := proc? | return ()
  discard <| withGrindTacticM <| Tactic.Grind.elabSymDSimproc proc

@[builtin_command_elab Lean.Parser.Command.registerSymDSimp]
def elabRegisterSymDSimp : CommandElab := fun stx => do
  let id := stx[1]
  let name := id.getId
  -- Check for duplicate variant
  if (getSymDSimpVariant? (← getEnv) name).isSome then
    throwErrorAt id "Sym.dsimp variant `{name}` is already registered"
  let fields := stx[3].getArgs
  let mut pre? : Option Syntax := none
  let mut post? : Option Syntax := none
  let mut maxSteps? : Option Nat := none
  for field in fields do
    match field with
    | `(sym_dsimp_field| maxSteps := $val:num) =>
      unless maxSteps?.isNone do throwErrorAt field "duplicate `maxSteps` field"
      maxSteps? := some val.getNat
    | `(sym_dsimp_field| pre := $proc) =>
      unless pre?.isNone do throwErrorAt field "duplicate `pre` field"
      pre? := some proc
    | `(sym_dsimp_field| post := $proc) =>
      unless post?.isNone do throwErrorAt field "duplicate `post` field"
      post? := some proc
    | _ => throwErrorAt field "unexpected field"
  -- Validate pre/post by elaborating them
  validateOptionDSimprocSyntax pre?
  validateOptionDSimprocSyntax post?
  let config := { maxSteps := maxSteps?.getD 100_000 }
  let variant : SymDSimpVariant := { pre?, post?, config }
  modifyEnv fun env => symDSimpVariantExtension.addEntry env { name, variant }

end Lean.Elab.Command
```
