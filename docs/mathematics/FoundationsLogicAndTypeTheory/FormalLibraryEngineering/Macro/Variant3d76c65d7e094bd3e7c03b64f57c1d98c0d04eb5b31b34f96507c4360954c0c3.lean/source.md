# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Macro.Variant3d76c65d7e094bd3e7c03b64f57c1d98c0d04eb5b31b34f96507c4360954c0c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81742bc77fffcd333acd6051f0cba3bb3715a6e1` · SHA-256 `3d76c65d7e094bd3e7c03b64f57c1d98c0d04eb5b31b34f96507c4360954c0c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.MacroArgUtil

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
