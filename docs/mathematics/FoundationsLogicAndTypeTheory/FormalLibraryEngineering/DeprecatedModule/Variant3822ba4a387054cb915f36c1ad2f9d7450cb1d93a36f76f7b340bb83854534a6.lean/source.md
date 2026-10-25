# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedModule.Variant3822ba4a387054cb915f36c1ad2f9d7450cb1d93a36f76f7b340bb83854534a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afb1dd22f912ba95153be24f061df089011ffe85` · SHA-256 `3822ba4a387054cb915f36c1ad2f9d7450cb1d93a36f76f7b340bb83854534a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Lean.Compiler.ModPkgExt

public section

namespace Lean

structure DeprecatedModuleEntry where
  message? : Option String := none
  since? : Option String := none
  deriving Inhabited

register_builtin_option linter.deprecated.module : Bool := {
  defValue := true
  descr := "if true, generate warnings when importing deprecated modules"
}

builtin_initialize deprecatedModuleExt : ModuleEnvExtension <| Option DeprecatedModuleEntry ←
  registerModuleEnvExtension <| pure none

namespace Environment

def getDeprecatedModuleByIdx? (env : Environment) (idx : ModuleIdx) : Option DeprecatedModuleEntry :=
  deprecatedModuleExt.getStateByIdx? env idx |>.join

def setDeprecatedModule (entry : Option DeprecatedModuleEntry) (env : Environment) : Environment :=
  deprecatedModuleExt.setState env entry

end Environment

def formatDeprecatedModuleWarning (env : Environment) (idx : ModuleIdx) (modName : Name)
    (entry : DeprecatedModuleEntry) : String :=
  let msg := entry.message?.getD ""
  let replacements := env.header.moduleData[idx.toNat]!.imports.filter fun imp =>
    imp.module != `Init
  let lines := replacements.foldl (init := "") fun acc imp =>
    acc ++ s!"import {imp.module}\n"
  s!"{msg}\n\
    '{modName}' has been deprecated: please replace this import by\n\n\
    {lines}"

end Lean
```
