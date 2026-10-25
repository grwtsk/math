# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Persistence1.Variantd053ad83b3acd53fc3387a0656cc71196fab31ed15a41d55f2eb53592499efcb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be1a98cf82d178c42efcfb39ba382018a2185786` · SHA-256 `d053ad83b3acd53fc3387a0656cc71196fab31ed15a41d55f2eb53592499efcb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import AesopTest.Persistence0

set_option aesop.check.all true

namespace Aesop

@[aesop 50% constructors (rule_sets := [test_persistence1])]
inductive NatOrBool where
  | ofNat (n : Nat)
  | ofBool (b : Bool)

example (b : Bool) : NatOrBool := by
  aesop (rule_sets := [test_persistence1])

end Aesop
```
