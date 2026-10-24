# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Char.Variant0e75ae85634186de7b5648cd5fcecee488d5215d942909dd9ea1abf745d5d008

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a125a6fc36756b30ea0372bc43fe0ea432a468e7` · SHA-256 `0e75ae85634186de7b5648cd5fcecee488d5215d942909dd9ea1abf745d5d008`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving, Markus Himmel
-/
module

prelude
public import Init.Data.String.Pattern.Pred

set_option doc.verso true

/-!
This module defines the necessary instances to register {name}`Char` with the pattern framework.
-/

public section

namespace String.Slice.Pattern

namespace Char

instance {c : Char} : ForwardPattern c where
  skipPrefixOfNonempty? s h := ForwardPattern.skipPrefixOfNonempty? (· == c) s h
  skipPrefix? s := ForwardPattern.skipPrefix? (· == c) s
  startsWith s := ForwardPattern.startsWith (· == c) s

instance {c : Char} : StrictForwardPattern c where
  ne_startPos h q := StrictForwardPattern.ne_startPos (pat := (· == c)) h q

instance {c : Char} : LawfulForwardPattern c where
  skipPrefixOfNonempty?_eq h := LawfulForwardPattern.skipPrefixOfNonempty?_eq (pat := (· == c)) h
  startsWith_eq s := LawfulForwardPattern.startsWith_eq (pat := (· == c)) s

instance {c : Char} : ToForwardSearcher c (ToForwardSearcher.DefaultForwardSearcher (· == c)) where
  toSearcher s := ToForwardSearcher.toSearcher (· == c) s

instance {c : Char} : BackwardPattern c where
  skipSuffixOfNonempty? s h := BackwardPattern.skipSuffixOfNonempty? (· == c) s h
  skipSuffix? s := BackwardPattern.skipSuffix? (· == c) s
  endsWith s := BackwardPattern.endsWith (· == c) s

instance {c : Char} : StrictBackwardPattern c where
  ne_endPos h q := StrictBackwardPattern.ne_endPos (pat := (· == c)) h q

instance {c : Char} : LawfulBackwardPattern c where
  skipSuffixOfNonempty?_eq h := LawfulBackwardPattern.skipSuffixOfNonempty?_eq (pat := (· == c)) h
  endsWith_eq s := LawfulBackwardPattern.endsWith_eq (pat := (· == c)) s

instance {c : Char} : ToBackwardSearcher c (ToBackwardSearcher.DefaultBackwardSearcher (· == c)) where
  toSearcher s := ToBackwardSearcher.toSearcher (· == c) s

end Char

end String.Slice.Pattern
```
