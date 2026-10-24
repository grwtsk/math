# Complete source: GRWTSK.Algebra.GroupTheory.Perm.Variant5b5d91fd91378aa1eccc6514ad781d342cafbd80b0e7fab5b72d1cc7ba0de549

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72aaf2dee0de92d1a5753cc94997ba035c839fef` · SHA-256 `5b5d91fd91378aa1eccc6514ad781d342cafbd80b0e7fab5b72d1cc7ba0de549`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

import Mathlib.GroupTheory.Perm.Cycle.Concrete
import Mathlib.Tactic.DeriveFintype

open Equiv

#guard with_decl_name% ex₁ unsafe (reprStr (1 : Perm (Fin 4))) == "1"
#guard with_decl_name% ex₂ unsafe (reprStr (c[0, 1] : Perm (Fin 4))) == "c[0, 1]"
#guard with_decl_name% ex₃
  unsafe (reprStr (c[0, 1] * c[2, 3] : Perm (Fin 4))) == "c[0, 1] * c[2, 3]"
#guard with_decl_name% ex₄
  unsafe (reprPrec (c[0, 1] * c[2, 3] : Perm (Fin 4)) 70).pretty == "(c[0, 1] * c[2, 3])"
#guard with_decl_name% ex₅
  unsafe (reprPrec (c[0, 1] * c[1, 2] : Perm (Fin 4)) 70).pretty == "c[0, 1, 2]"
```
