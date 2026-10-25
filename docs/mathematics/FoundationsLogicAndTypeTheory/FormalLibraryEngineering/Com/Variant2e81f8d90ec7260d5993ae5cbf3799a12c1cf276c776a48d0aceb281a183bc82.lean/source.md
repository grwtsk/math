# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Com.Variant2e81f8d90ec7260d5993ae5cbf3799a12c1cf276c776a48d0aceb281a183bc82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8c99f7dcf16a30815ca284ff51f6bf84d42cb1c` · SHA-256 `2e81f8d90ec7260d5993ae5cbf3799a12c1cf276c776a48d0aceb281a183bc82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
import Aesop

set_option aesop.check.all false
-- With this option, the test becomes unbearably slow.

abbrev State := String → Int

inductive Com where
| Skip : Com
| Seq : Com → Com → Com

declare_syntax_cat com

syntax "SKIP" : com
syntax com ";" com : com
syntax "(" com ")" : com
syntax term : com

syntax "[Com|" com "]" : term

macro_rules
| `([Com| SKIP]) => `(Com.Skip)
| `([Com| $x ; $y]) => `(Com.Seq [Com| $x] [Com| $y])
| `([Com| ( $x:com )]) => `([Com| $x])
| `([Com| $x:term ]) => `($x)

@[aesop safe [constructors, -100 cases (index := [hyp BigStep Com.Skip _ _, hyp BigStep [Com| _;_] _ _])]]
inductive BigStep : Com → State → State → Prop where
| Skip : BigStep Com.Skip s s
| Seq (h1 : BigStep c₁ s t) (h2 : BigStep c₂ t u) : BigStep [Com| c₁;c₂] s u

theorem seq_assoc :
    BigStep [Com| (c1;c2);c3] s s' ↔ BigStep [Com| c1;c2;c3] s s' := by
  aesop
```
