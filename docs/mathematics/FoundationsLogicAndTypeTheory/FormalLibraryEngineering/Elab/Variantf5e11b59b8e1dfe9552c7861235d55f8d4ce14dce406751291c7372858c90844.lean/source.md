# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Elab.Variantf5e11b59b8e1dfe9552c7861235d55f8d4ce14dce406751291c7372858c90844

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e24be2a214c90b055e3d4036595916ab9cdc1d0f` · SHA-256 `f5e11b59b8e1dfe9552c7861235d55f8d4ce14dce406751291c7372858c90844`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2022 E.W.Ayers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: E.W.Ayers, Wojciech Nawrocki
-/
module

prelude
public import Lean.Data.Json.FromToJson
public meta import Lean.Syntax

public section

/-!
# JSON-like syntax for Lean.

Now you can write

```lean
open Lean.Json

#eval json% {
  hello : "world",
  cheese : ["edam", "cheddar", {kind : "spicy", rank : 100.2}],
  lemonCount : 100e30,
  isCool : true,
  isBug : null,
  lookACalc: $(23 + 54 * 2)
}
```
-/

namespace Lean.Json

/-- Json syntactic category -/
declare_syntax_cat json (behavior := symbol)
/-- Json null value syntax. -/
syntax "null" : json
/-- Json true value syntax. -/
syntax "true" : json
/-- Json false value syntax. -/
syntax "false" : json
/-- Json string syntax. -/
syntax str : json
/-- Json number negation syntax for ordinary numbers. -/
syntax "-"? num : json
/-- Json number negation syntax for scientific numbers. -/
syntax "-"? scientific : json
/-- Json array syntax. -/
syntax "[" json,* "]" : json
/-- Json identifier syntax. -/
syntax jsonIdent := ident <|> str
/-- Json key/value syntax. -/
syntax jsonField := jsonIdent ": " json
/-- Json object syntax. -/
syntax "{" jsonField,* "}" : json
/-- Allows to use Json syntax in a Lean file. -/
syntax "json% " json : term


macro_rules
  | `(json% null)           => `(Lean.Json.null)
  | `(json% true)           => `(Lean.Json.bool Bool.true)
  | `(json% false)          => `(Lean.Json.bool Bool.false)
  | `(json% $n:str)         => `(Lean.Json.str $n)
  | `(json% $n:num)         => `(Lean.Json.num $n)
  | `(json% $n:scientific)  => `(Lean.Json.num $n)
  | `(json% -$n:num)        => `(Lean.Json.num (-$n))
  | `(json% -$n:scientific) => `(Lean.Json.num (-$n))
  | `(json% [$[$xs],*])     => `(Lean.Json.arr #[$[json% $xs],*])
  | `(json% {$[$ks:jsonIdent : $vs:json],*}) => do
    let ks : Array (TSyntax `term) ← ks.mapM fun
      | `(jsonIdent| $k:ident) => pure (k.getId |> toString |> quote)
      | `(jsonIdent| $k:str)   => pure k
      | _                     => Macro.throwUnsupported
    `(Lean.Json.mkObj [$[($ks, json% $vs)],*])
  | `(json% $stx)           =>
    if stx.raw.isAntiquot then
      let stx := ⟨stx.raw.getAntiquotTerm⟩
      `(Lean.toJson $stx)
    else
      Macro.throwUnsupported

end Lean.Json
````
