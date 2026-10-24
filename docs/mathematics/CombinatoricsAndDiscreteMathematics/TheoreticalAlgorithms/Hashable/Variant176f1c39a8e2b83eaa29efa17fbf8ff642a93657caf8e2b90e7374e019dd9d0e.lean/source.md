# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hashable.Variant176f1c39a8e2b83eaa29efa17fbf8ff642a93657caf8e2b90e7374e019dd9d0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a7474a2ebcdedaeffde4b0fdde062df7ec65e52` · SHA-256 `176f1c39a8e2b83eaa29efa17fbf8ff642a93657caf8e2b90e7374e019dd9d0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia Markus Himmel
-/
module

prelude
public import Init.Data.String.Slice
public import Init.Data.LawfulHashable
import all Init.Data.String.Slice
import Init.Data.String.Lemmas.Slice

namespace String

public theorem hash_eq {s : String} : hash s = String.hash s := rfl

namespace Slice

public theorem hash_eq {s : String.Slice} : hash s = String.hash s.copy := (rfl)

public instance : LawfulHashable String.Slice where
  hash_eq a b hab := by simp [hash_eq, beq_eq_true_iff.1 hab]

end String.Slice
```
