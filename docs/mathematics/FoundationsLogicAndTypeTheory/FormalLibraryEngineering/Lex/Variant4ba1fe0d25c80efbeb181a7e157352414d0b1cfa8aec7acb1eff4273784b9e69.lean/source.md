# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lex.Variant4ba1fe0d25c80efbeb181a7e157352414d0b1cfa8aec7acb1eff4273784b9e69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5edc6c3d9bbd0f87878ec4ea13222c5289c2f08` · SHA-256 `4ba1fe0d25c80efbeb181a7e157352414d0b1cfa8aec7acb1eff4273784b9e69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

namespace Prod.Lex

instance [αeqDec : DecidableEq α] {r : α → α → Prop} [rDec : DecidableRel r]
    {s : β → β → Prop} [sDec : DecidableRel s] : DecidableRel (Prod.Lex r s)
  | (a, b), (a', b') =>
    match rDec a a' with
    | isTrue raa' => isTrue $ left b b' raa'
    | isFalse nraa' =>
      match αeqDec a a' with
      | isTrue eq => by
        subst eq
        cases sDec b b' with
        | isTrue sbb' => exact isTrue $ right a sbb'
        | isFalse nsbb' =>
          apply isFalse; intro contra; cases contra <;> contradiction
      | isFalse neqaa' => by
        apply isFalse; intro contra; cases contra <;> contradiction
```
