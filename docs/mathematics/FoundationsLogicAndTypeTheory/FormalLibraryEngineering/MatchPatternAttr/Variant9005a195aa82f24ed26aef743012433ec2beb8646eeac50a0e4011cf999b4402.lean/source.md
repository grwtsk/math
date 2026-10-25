# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchPatternAttr.Variant9005a195aa82f24ed26aef743012433ec2beb8646eeac50a0e4011cf999b4402

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7e0883c6a4a6c0b48c8a02108de28bb6dd34895` · SHA-256 `9005a195aa82f24ed26aef743012433ec2beb8646eeac50a0e4011cf999b4402`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Attributes

public section

namespace Lean

/--
Instructs the pattern matcher to unfold occurrences of this definition.

By default, only constructors and literals can be used for pattern matching. Using
`@[match_pattern]` allows using other definitions, as long as they eventually reduce to
constructors and literals.

Example:
```
@[match_pattern]
def yellowString : String := "yellow"

def isYellow (color : String) : Bool :=
  match color with
  | yellowString => true
  | _ => false
```
-/
@[builtin_doc]
builtin_initialize matchPatternAttr : TagAttribute ←
  registerTagAttribute `match_pattern "mark that a definition can be used in a pattern (remark: the dependent pattern matching compiler will unfold the definition)"
    (validate := fun declName => do
      withExporting (isExporting := !isPrivateName declName) do
        if !(← getConstInfo declName).isDefinition then
          throwError "invalid `@[match_pattern]` attribute, `{.ofConstName declName}` is not an exposed definition")

def hasMatchPatternAttribute (env : Environment) (n : Name) : Bool :=
  matchPatternAttr.hasTag env n

end Lean
````
