# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SmallPrime.Variant38f222b005d9654d2040661bb05c81edfb4ddd61907a23058b0885c853840ef9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c99f7dfd560b59b106d64a2bbaacf2126f13ba46` · SHA-256 `38f222b005d9654d2040661bb05c81edfb4ddd61907a23058b0885c853840ef9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2025 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/

import PrimeCert.Meta.PrimeCert

/-! # The `small` certificate method

Looks up a pre-existing `PrimeCert.prime_<n>` declaration (from `SmallPrimes.lean`),
e.g. `PrimeCert.prime_31`. Used as a base case in certificate ladders.
-/

open Lean Meta Elab Qq

namespace PrimeCert.Meta

/-- Syntax for the `small` method: just a numeric literal `n`.
Looks up the declaration `PrimeCert.prime_<n>` in the environment.

```lean
-- In a prime_cert% call:
prime_cert% [small {2; 3; 5; 7}, ...]
-- Each number must have a corresponding `PrimeCert.prime_<n>` theorem.
```
-/
syntax small_spec := num

def mkSmallProof : PrimeCertMethod ``small_spec := fun stx _ ↦ match stx with
  | `(small_spec| $n:num) => do
    have n := n.getNat
    have name : Name := (`PrimeCert).str s!"prime_{n}"
    return ⟨n, mkNatLit n, mkConst name⟩
  | _ => throwUnsupportedSyntax

@[prime_cert small] def PrimeCertExt.small : PrimeCertExt where
  syntaxName := ``small_spec
  methodName := ``mkSmallProof

end PrimeCert.Meta
````
