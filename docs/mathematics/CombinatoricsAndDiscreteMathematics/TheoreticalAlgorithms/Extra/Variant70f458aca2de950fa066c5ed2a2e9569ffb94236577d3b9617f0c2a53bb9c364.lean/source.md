# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Extra.Variant70f458aca2de950fa066c5ed2a2e9569ffb94236577d3b9617f0c2a53bb9c364

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f679a7100db6cec9671a9e7dcaa0307c284bec2` · SHA-256 `70f458aca2de950fa066c5ed2a2e9569ffb94236577d3b9617f0c2a53bb9c364`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Init.Data.String.Defs
public import Init.Data.Int.Repr

public section

/--
Converts a list into a string, using `ToString.toString` to convert its elements.

The resulting string resembles list literal syntax, with the elements separated by `", "` and
enclosed in square brackets.

The resulting string may not be valid Lean syntax, because there's no such expectation for
`ToString` instances.

Examples:
* `[1, 2, 3].toString = "[1, 2, 3]"`
* `["cat", "dog"].toString = "[cat, dog]"`
* `["cat", "dog", ""].toString = "[cat, dog, ]"`
-/
protected def List.toString [ToString α] : List α → String
  | [] => "[]"
  | [x] => "[" ++ toString x ++ "]"
  | x::xs => String.push (xs.foldl (fun l r => l ++ ", " ++ toString r) ("[" ++ (toString x))) ']'

instance {α : Type u} [ToString α] : ToString (List α) :=
  ⟨List.toString⟩

instance [ToString α] : ToString (Array α) where
  toString xs := "#" ++ (toString xs.toList)

instance : ToString ByteArray := ⟨fun bs => bs.toList.toString⟩

instance : ToString Int where
  toString := Int.repr
```
