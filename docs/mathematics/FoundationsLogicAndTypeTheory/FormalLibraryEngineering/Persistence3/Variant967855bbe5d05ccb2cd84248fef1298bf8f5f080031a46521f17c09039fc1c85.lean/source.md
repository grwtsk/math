# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Persistence3.Variant967855bbe5d05ccb2cd84248fef1298bf8f5f080031a46521f17c09039fc1c85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2706e018d4d98887d9261b2155a1fccfed019d4e` · SHA-256 `967855bbe5d05ccb2cd84248fef1298bf8f5f080031a46521f17c09039fc1c85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import AesopTest.Persistence1
import AesopTest.Persistence2

set_option aesop.check.all true

namespace Aesop

@[aesop 50% (rule_sets := [test_persistence2])]
def test (b : Bool) : NatOrBool := by
  aesop (rule_sets := [test_persistence1])

end Aesop
```
