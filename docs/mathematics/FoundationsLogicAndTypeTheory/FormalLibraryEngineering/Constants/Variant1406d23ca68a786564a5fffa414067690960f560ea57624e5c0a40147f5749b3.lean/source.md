# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Constants.Variant1406d23ca68a786564a5fffa414067690960f560ea57624e5c0a40147f5749b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e975ca3448fa745bb9e93b75935fc2b5fe86db35` · SHA-256 `1406d23ca68a786564a5fffa414067690960f560ea57624e5c0a40147f5749b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Percent

public section

namespace Aesop

def unificationGoalPenalty : Percent :=
  ⟨0.8⟩

def postponedSafeRuleSuccessProbability : Percent :=
  ⟨0.9⟩

end Aesop
```
