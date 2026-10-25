# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lang.Variante6ef4fbd7e71a3e3f61138ab0ac75a088236c2025f283284dbf7e8f5dfa306be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f01fa0ea05bec413b75851d70a8ffb3bc25c28e3` · SHA-256 `e6ef4fbd7e71a3e3f61138ab0ac75a088236c2025f283284dbf7e8f5dfa306be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Data.ToString.Basic

namespace Lake

/-- Lake configuration language identifier. -/
public inductive ConfigLang
| lean | toml
deriving Repr, DecidableEq

/-- Lake's default configuration language. -/
public abbrev ConfigLang.default : ConfigLang := .toml

public instance : Inhabited ConfigLang := ⟨.default⟩

public def ConfigLang.ofString? : String → Option ConfigLang
| "lean" => some .lean
| "toml" => some .toml
| _ => none

public def ConfigLang.fileExtension : ConfigLang → String
| .lean => "lean"
| .toml => "toml"

public instance : ToString ConfigLang := ⟨ConfigLang.fileExtension⟩
```
