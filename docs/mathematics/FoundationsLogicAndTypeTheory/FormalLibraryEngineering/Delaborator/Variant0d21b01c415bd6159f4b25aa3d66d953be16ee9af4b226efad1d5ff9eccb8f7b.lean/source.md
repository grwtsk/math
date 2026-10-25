# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delaborator.Variant0d21b01c415bd6159f4b25aa3d66d953be16ee9af4b226efad1d5ff9eccb8f7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d93b361ddf4bbc44d2209edd628fb7db7d02b5c` · SHA-256 `ac6ba0b62d854f1ab0c10d89772fb3c36c865120d4ce3bc05f20fef925b024aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanPrettyPrinterDelaboratorWithOverApp.Variant3ad547d976b570bd227eee13ed03e5e62792c62b2e9d243b01716f219d6ca071","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ad547d976b570bd227eee13ed03e5e62792c62b2e9d243b01716f219d6ca071","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanPrettyPrinterDelaboratorWithOverApp.Variant3ad547d976b570bd227eee13ed03e5e62792c62b2e9d243b01716f219d6ca071","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3ad547d976b570bd227eee13ed03e5e62792c62b2e9d243b01716f219d6ca071","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Delaborator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kyle Miller
-/
import Lean.PrettyPrinter


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanPrettyPrinterDelaboratorWithOverApp.Variant3ad547d976b570bd227eee13ed03e5e62792c62b2e9d243b01716f219d6ca071

open Lean PrettyPrinter Delaborator SubExpr

/--
This is similar to `withAppFnArgs` but it handles construction of an "over-application".
For example, suppose we want to implement a delaborator for applications of `f : Foo A → A`
like `f x` as `F[x]`, but because `A` is a type variable we might encounter a term of the form
`@f (A → B) x y` which has an additional argument `y`.

Most of the built in delaborators will deliberately fail on such an example, resulting in
delaborated syntax `f x y`, but this combinator can be used if we want to display `F[x] y`
instead.

* `arity`: the expected number of arguments to `f`.
  The combinator will fail if fewer than this number of arguments are passed
* `x`: constructs data corresponding to the main application (`f x` in the example)
-/
def Lean.PrettyPrinter.Delaborator.withOverApp (arity : Nat) (x : Delab) : Delab := do
  let n := (← getExpr).getAppNumArgs
  guard (n ≥ arity)
  let kinds ← getParamKinds
  let rec
  /-- Inner loop of `withOverApp`. -/
  loop : Nat → DelabM (Term × Array Term)
  | 0 => return (← x, #[])
  | n+1 => do
    let mut (fnStx, args) ← withAppFn (loop n)
    if kinds.get? (n + arity) |>.all (·.bInfo.isExplicit) then
      args := args.push (← withAppArg delab)
    pure (fnStx, args)
  let (fnStx, argStxs) ← loop (n - arity)
  return Syntax.mkApp fnStx argStxs

/-- Pretty print a const expression using `delabConst` and generate terminfo.
This function avoids inserting `@` if the constant is for a function whose first
argument is implicit, which is what the default `toMessageData` for `Expr` does.
Panics if `e` is not a constant. -/
def Lean.ppConst (e : Expr) : MessageData :=
  if e.isConst then
    .ofPPFormat {
      pp := fun
        | some ctx => ctx.runMetaM <| withOptions (pp.tagAppFns.set · true) <|
          -- The pp.tagAppFns option causes the `delabConst` function to annotate
          -- the constant with terminfo, which is necessary for seeing the type on mouse hover.
          PrettyPrinter.ppExprWithInfos (delab := delabConst) e
        | none => return f!"{e}"
    }
  else
    panic! "not a constant"
```
