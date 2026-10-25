# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Translate.Variant04ec57ac6909c15e13475ca57eb7045a0d8b33c0589ef26f9937647502a10910

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de0c02b10f75159f05d4854ee961af44a009ecc1` · SHA-256 `04ec57ac6909c15e13475ca57eb7045a0d8b33c0589ef26f9937647502a10910`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Lang
public import Lake.Config.Package
import Lean.PrettyPrinter
import Lake.CLI.Translate.Toml
import Lake.CLI.Translate.Lean
import Lake.Load.Lean.Elab

namespace Lake
open Toml Lean System PrettyPrinter

partial def descopeSyntax : Syntax → Syntax
| .ident info rawVal val preresolved =>
  .ident info rawVal val.eraseMacroScopes preresolved
| .node info k args => .node info k <| args.map descopeSyntax
| stx => stx

def descopeTSyntax (stx : TSyntax k) : TSyntax k :=
  ⟨descopeSyntax stx.raw⟩

public def Package.mkConfigString (pkg : Package) (lang : ConfigLang) : LogIO String := do
  match lang with
  | .toml => pure <| ppTable pkg.mkTomlConfig
  | .lean => do
    let env ← importModulesUsingCache #[`Lake] {} 1024
    let pp := ppModule <| descopeTSyntax <| pkg.mkLeanConfig
    match (← pp.toIO {fileName := "", fileMap := default} {env} |>.toBaseIO) with
    | .ok (fmt, _) => pure <| (toString fmt).trimAscii.copy ++ "\n"
    | .error ex =>
      error s!"(internal) failed to pretty print Lean configuration: {ex.toString}"
```
