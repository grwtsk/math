# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedSyntax.Variant3f8b0289d51924cce1cbbae10757f3e63e914a5919eb0d44d30c3d28dd572001

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de395f459707e77bdb26f692bdfc6b450403b05f` · SHA-256 `1430e29caa9668f1c198994e97c2a8df8227ee20fc88ca72344e4a634d671553`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SyntaxDeprecationEntry.Variant06c9e19af63614869d559c2888d7152173556a9f8b622cc66159760b9cf45e24","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06c9e19af63614869d559c2888d7152173556a9f8b622cc66159760b9cf45e24","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SyntaxDeprecationEntry.Variant06c9e19af63614869d559c2888d7152173556a9f8b622cc66159760b9cf45e24","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"06c9e19af63614869d559c2888d7152173556a9f8b622cc66159760b9cf45e24","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/DeprecatedSyntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Lean.MonadEnv
public import Lean.Linter.Init
public import Lean.Elab.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SyntaxDeprecationEntry.Variant06c9e19af63614869d559c2888d7152173556a9f8b622cc66159760b9cf45e24

public section

namespace Lean.Linter

register_builtin_option linter.deprecated.syntax : Bool := {
  defValue := true
  descr := "if true, generate warnings when deprecated syntax is used"
}

end Lean.Linter

namespace Lean.Elab

/-- Entry recording that a syntax kind has been deprecated. -/
structure SyntaxDeprecationEntry where
  /-- The syntax node kind that is deprecated. -/
  kind : SyntaxNodeKind
  /-- Optional deprecation message. -/
  text? : Option String := none
  /-- Optional version or date at which the syntax was deprecated. -/
  since? : Option String := none

builtin_initialize deprecatedSyntaxExt :
    SimplePersistentEnvExtension SyntaxDeprecationEntry (NameMap SyntaxDeprecationEntry) ←
  registerSimplePersistentEnvExtension {
    addImportedFn := mkStateFromImportedEntries (fun m e => m.insert e.kind e) {}
    addEntryFn := fun m e => m.insert e.kind e
  }

/--
Check whether `stx` is a deprecated syntax kind, and if so, emit a warning.

If `macroStack` is non-empty, the warning is attributed to the macro call site rather than the
syntax itself.
-/
def checkDeprecatedSyntax [Monad m] [MonadEnv m] [MonadLog m] [MonadOptions m]
    [AddMessageContext m] [MonadRef m] (stx : Syntax) (macroStack : MacroStack) : m Unit := do
  let env ← getEnv
  let kind := stx.getKind
  if let some entry := (deprecatedSyntaxExt.getState env).find? kind then
    let extraMsg := match entry.text? with
      | some text => m!": {text}"
      | none => m!""
    match macroStack with
    | { before := macroStx, .. } :: { before := callerStx, .. } :: _ =>
      let expandedFrom :=
        if callerStx.getKind != macroStx.getKind then
          m!" (expanded from '{callerStx.getKind}')"
        else m!""
      Linter.logLintIf Linter.linter.deprecated.syntax macroStx
        m!"macro '{macroStx.getKind}'{expandedFrom} produces deprecated syntax '{kind}'{extraMsg}"
    | { before := macroStx, .. } :: [] =>
      Linter.logLintIf Linter.linter.deprecated.syntax macroStx
        m!"macro '{macroStx.getKind}' produces deprecated syntax '{kind}'{extraMsg}"
    | [] =>
      Linter.logLintIf Linter.linter.deprecated.syntax stx
        m!"syntax '{kind}' has been deprecated{extraMsg}"

end Lean.Elab
```
