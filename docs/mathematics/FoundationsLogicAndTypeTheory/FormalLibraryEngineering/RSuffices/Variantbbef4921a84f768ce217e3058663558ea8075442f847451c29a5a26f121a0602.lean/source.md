# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RSuffices.Variantbbef4921a84f768ce217e3058663558ea8075442f847451c29a5a26f121a0602

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef0156c6581e31c5006638b1d83c7decb775b880` · SHA-256 `bbef4921a84f768ce217e3058663558ea8075442f847451c29a5a26f121a0602`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
import Mathlib.Tactic.Basic

/-!
# `rsuffices` tactic

The `rsuffices` tactic is an alternative version of `suffices`, that allows the usage
of any syntax that would be valid in an `obtain` block. This tactic just calls `obtain`
on the expression, and then `rotate_left`.
-/

namespace Mathlib.Tactic

/--
The `rsuffices` tactic is an alternative version of `suffices`, that allows the usage
of any syntax that would be valid in an `obtain` block. This tactic just calls `obtain`
on the expression, and then `rotate_left`.
-/
syntax (name := rsuffices) "rsuffices"
  (ppSpace Lean.Parser.Tactic.rcasesPatMed)? (" : " term)? (" := " term,+)? : tactic

macro_rules
| `(tactic| rsuffices $[$pred]? $[: $foo]? $[:= $bar]?) =>
`(tactic | (obtain $[$pred]? $[: $foo]? $[:= $bar]?; rotate_left))

end Mathlib.Tactic
```
