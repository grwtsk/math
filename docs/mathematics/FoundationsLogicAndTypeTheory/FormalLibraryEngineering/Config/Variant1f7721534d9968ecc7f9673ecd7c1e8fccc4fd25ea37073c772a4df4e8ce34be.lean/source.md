# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant1f7721534d9968ecc7f9673ecd7c1e8fccc4fd25ea37073c772a4df4e8ce34be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6117c673ceabaf06da02ab4914f0f4fbd2f23f95` · SHA-256 `1f7721534d9968ecc7f9673ecd7c1e8fccc4fd25ea37073c772a4df4e8ce34be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Elab.Term
import Lake.DSL.Extensions
import Lake.DSL.Syntax
import Lake.Util.Name

namespace Lake.DSL
open Lean Elab Term

@[builtin_term_elab nameConst]
def elabNameConst : TermElab := fun stx expectedType? => do
  let env ← getEnv
  unless env.contains packageDeclName do
    throwError "`__name__` can only be used after the `package` declaration"
  let ⟨idx, name⟩ := nameExt.getState env
  let name := match name with
    | .anonymous => (mkIdent <| packageDeclName.str "origName")
    | name => Name.quoteFrom stx name
  let exp := Syntax.mkCApp ``Name.num #[name, quote idx]
  withMacroExpansion stx exp <| elabTerm exp expectedType?

/--
A dummy default constant for `__dir__` to make it type check
outside Lakefile elaboration (e.g., when editing).
-/
public opaque dummyDir : System.FilePath

@[builtin_term_elab dirConst]
def elabDirConst : TermElab := fun stx expectedType? => do
  let exp :=
    if let some dir := dirExt.getState (← getEnv) then
      let str := Syntax.mkStrLit dir.toString (SourceInfo.fromRef stx)
      Syntax.mkApp (mkCIdentFrom stx ``System.FilePath.mk) #[str]
    else
      -- `id` app forces Lean to show macro's doc rather than the constant's
      Syntax.mkApp (mkCIdentFrom stx ``id) #[mkCIdentFrom stx ``dummyDir]
  withMacroExpansion stx exp <| elabTerm exp expectedType?

/--
A dummy default constant for `get_config` to make it type check
outside Lakefile elaboration (e.g., when editing).
-/
public opaque dummyGetConfig? : Name → Option String

@[builtin_term_elab getConfig]
def elabGetConfig : TermElab := fun stx expectedType? => do
  tryPostponeIfNoneOrMVar expectedType?
  match stx with
  | `(getConfig| get_config? $key) => do
    let exp : Term ← show TermElabM Term from do
      if let some opts := optsExt.getState (← getEnv) then
        if let some val := opts.find? key.getId then
          `(some $(Syntax.mkStrLit val <| SourceInfo.fromRef (← getRef)))
        else
          -- Make sure `none` is properly typed
          `((none : Option String))
      else
        return Syntax.mkApp (mkCIdentFrom stx ``dummyGetConfig?) #[quote key.getId]
    withMacroExpansion stx exp <| elabTerm exp expectedType?
  | _ => throwUnsupportedSyntax
```
