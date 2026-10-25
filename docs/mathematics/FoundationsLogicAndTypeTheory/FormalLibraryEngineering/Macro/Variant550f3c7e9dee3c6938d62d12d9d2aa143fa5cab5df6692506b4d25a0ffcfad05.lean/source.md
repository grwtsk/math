# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Macro.Variant550f3c7e9dee3c6938d62d12d9d2aa143fa5cab5df6692506b4d25a0ffcfad05

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f0ec125bd1bec06e2d52759840508a1fa596b50` · SHA-256 `1963ef28100267ddfc879f22946f3318f260576b86be24f3c71a496da179990c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MacroArgUtil.Variant3d76c65d7e094bd3e7c03b64f57c1d98c0d04eb5b31b34f96507c4360954c0c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d76c65d7e094bd3e7c03b64f57c1d98c0d04eb5b31b34f96507c4360954c0c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MacroArgUtil.Variant3d76c65d7e094bd3e7c03b64f57c1d98c0d04eb5b31b34f96507c4360954c0c3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3d76c65d7e094bd3e7c03b64f57c1d98c0d04eb5b31b34f96507c4360954c0c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Macro.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.MacroArgUtil


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MacroArgUtil.Variant3d76c65d7e094bd3e7c03b64f57c1d98c0d04eb5b31b34f96507c4360954c0c3

public section

namespace Lean.Elab.Command
open Lean.Syntax
open Lean.Parser.Term hiding macroArg
open Lean.Parser.Command

@[builtin_command_elab Lean.Parser.Command.macro] def elabMacro : CommandElab
  | `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind
      macro%$tk$[:$prec?]? $[(name := $name?)]? $[(priority := $prio?)]? $args:macroArg* : $cat => $rhs) =>
    -- exclude command prefix from synthetic position used for e.g. jumping to the macro definition
    withRef (mkNullNode #[tk, rhs]) do
      let prio  ← liftMacroM <| evalOptPrio prio?
      let (stxParts, patArgs) := (← args.mapM expandMacroArg).unzip
      let kind ← elabSyntax (← `($[$doc?:docComment]? $[@[$attrs?,*]]? $attrKind:attrKind
        syntax$[:$prec?]?
          $[(name := $name?)]?
          (priority := $(quote prio):num)
          $[$stxParts]* : $cat))
      let pat := ⟨mkNode kind patArgs⟩
      let rhs := rhs.raw
      -- Elide `scoped` for `macro_rules`; this allows for using scoped macros in unscoped macros
      -- for back-compat and unlike with `local`, there would be no benefit to enforcing `scoped`.
      let mut rulesKind := attrKind
      if rulesKind matches `(attrKind| scoped) then
        rulesKind ← `(attrKind| )
      let macroRulesCmd ← if rhs.getArgs.size == 1 then
        -- `rhs` is a `term`
        let rhs := ⟨rhs[0]⟩
        `($[$doc?:docComment]? $rulesKind:attrKind macro_rules | `($pat) => Functor.map (@TSyntax.raw $(quote cat.getId.eraseMacroScopes)) $rhs)
      else
        -- TODO(gabriel): remove after bootstrap
        -- `rhs` is of the form `` `( $body ) ``
        let rhsBody := ⟨rhs[1]⟩
        `($[$doc?:docComment]? $rulesKind:attrKind macro_rules | `($pat) => `($rhsBody))
      elabCommand macroRulesCmd
  | _ => throwUnsupportedSyntax

end Lean.Elab.Command
```
