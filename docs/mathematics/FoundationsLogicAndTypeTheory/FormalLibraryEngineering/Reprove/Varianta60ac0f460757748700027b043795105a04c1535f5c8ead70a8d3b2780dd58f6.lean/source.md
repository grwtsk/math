# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reprove.Varianta60ac0f460757748700027b043795105a04c1535f5c8ead70a8d3b2780dd58f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40b09ce6e372c6811e5aa8e596c26d40474d7e6f` · SHA-256 `60b60c3af46d14afd706602654385d8d5d55b9ac9b7245a734bd5d2d0c97da0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantcf8df7f83eeb5f82e767d2d7e79e327a27cbd816c79d75fdabcce9c761b6ac2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf8df7f83eeb5f82e767d2d7e79e327a27cbd816c79d75fdabcce9c761b6ac2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantcf8df7f83eeb5f82e767d2d7e79e327a27cbd816c79d75fdabcce9c761b6ac2b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cf8df7f83eeb5f82e767d2d7e79e327a27cbd816c79d75fdabcce9c761b6ac2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/Reprove.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public meta import Lean.Elab.Command
public import Init.Notation
import Lean.Exception

/-!
# The `reprove` command

This command reproves a list of declarations with a given tactic sequence.
It is useful for testing tactics.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantcf8df7f83eeb5f82e767d2d7e79e327a27cbd816c79d75fdabcce9c761b6ac2b

public section

namespace Lean.Elab.Command

open Meta

/-- Reproving a declaration with a given tactic sequence -/
meta def reproveDecl (declName : Name) (tacticSeq : TSyntax `Lean.Parser.Tactic.tacticSeq) : CommandElabM Unit := do
  let some info := (← getEnv).find? declName
    | throwError "unknown declaration '{declName}'"

  let uniqueName ← liftCoreM <| mkFreshUserName `reprove_example

  let value ← liftTermElabM do
    Term.withDeclName uniqueName do
      let goal ← mkFreshExprMVar info.type
      let goalMVar := goal.mvarId!
      let _goals ← Tactic.run goalMVar do
        Tactic.evalTactic tacticSeq
      instantiateMVars goal

  let decl := Declaration.defnDecl {
    name := uniqueName
    type := info.type
    value := value
    levelParams := info.levelParams
    hints := ReducibilityHints.opaque
    safety := DefinitionSafety.safe
  }

  liftCoreM <| addAndCompile decl

/--
Reproves a list of declarations with a given tactic sequence.

```lean
reprove theorem1 theorem2 theorem3 by simp
```
-/
syntax (name := reprove) "reprove " ident+ " by " tacticSeq : command

@[command_elab «reprove»]
meta def elabReprove : CommandElab := fun stx => do
  let identStxs := stx[1].getArgs
  let tacticSeq : TSyntax `Lean.Parser.Tactic.tacticSeq := ⟨stx[3]⟩
  for identStx in identStxs do
    let declName ← liftCoreM <| realizeGlobalConstNoOverloadWithInfo identStx
    reproveDecl declName tacticSeq

end Lean.Elab.Command
````
