# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Init.Variant984d91a83e2e563a8363fb9421fa8a29378e4332bf18e68647e5d700fdef940c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2983f373e5dc2ea623ff89797d6daf333fe6f8a0` · SHA-256 `984d91a83e2e563a8363fb9421fa8a29378e4332bf18e68647e5d700fdef940c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Mathport.Rename
import Std.Data.Rat

#align_import data.rat.init from "leanprover-community/mathlib"@"f340f229b1f461aa1c8ee11e0a172d0a3b301a4a"

/-!
# Notation for the rational numbers -/

namespace Rat

@[inherit_doc] notation "ℚ" => Rat

#align rat.denom Rat.den
```
