# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPWithUniv.Variantd881f3fcf0964258b0cc835bd91affc0d18b01335f783afb8657049d1408b592

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8ab6d21522db516c3623dc5354c802121e3f07b` · SHA-256 `d881f3fcf0964258b0cc835bd91affc0d18b01335f783afb8657049d1408b592`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Mathlib.Init

/-!
# Attribute to pretty-print universe level parameters by default

This module contains the `pp_with_univ` attribute, which enables pretty-printing
of universe parameters for the associated declaration.  This is helpful for definitions like
`Ordinal`, where the universe levels are both relevant and not deducible from the arguments.
-/

namespace Mathlib.PPWithUniv

open Lean Parser PrettyPrinter Delaborator SubExpr Elab Command

/--
Delaborator that prints the current application with universe parameters on the head symbol,
unless `pp.universes` is explicitly set to `false`.
-/
def delabWithUniv : Delab :=
  whenPPOption (·.get pp.universes.name true) <|
  let enablePPUnivOnHead subExpr :=
    let expr := subExpr.expr
    let expr := mkAppN (expr.getAppFn.setOption pp.universes.name true) expr.getAppArgs
    { subExpr with expr }
  withTheReader SubExpr enablePPUnivOnHead delabApp

/--
`attribute [pp_with_univ] Ordinal` instructs the pretty-printer to
print `Ordinal.{u}` with universe parameters by default
(unless `pp.universes` is explicitly set to `false`).
-/
syntax (name := ppWithUnivAttr) "pp_with_univ" : attr

initialize registerBuiltinAttribute {
  name := `ppWithUnivAttr
  descr := ""
  applicationTime := .afterCompilation
  add := fun src ref kind => match ref with
  | `(attr| pp_with_univ) => do
    liftCommandElabM <| withRef ref do
      let attr ← Elab.elabAttr <| ← `(Term.attrInstance| delab $(mkIdent <| `app ++ src))
      liftTermElabM <| Term.applyAttributes ``delabWithUniv #[{attr with kind}]
  | _ => throwUnsupportedSyntax }

end PPWithUniv

end Mathlib
```
