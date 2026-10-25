# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalRuleIdentErrorChecking.Variantb69d8e0305444b03992e5cdd1071d164d55204a552c9691900995caeb60e0502

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a964a0279ec9282d0cdad48fb09d752b895d280` · SHA-256 `b69d8e0305444b03992e5cdd1071d164d55204a552c9691900995caeb60e0502`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

/--
error: duplicate rule 'Nat.add_assoc'; rule 'bar' was already given.
Use [<term>,...] to give multiple rules.
-/
#guard_msgs in
@[aesop norm simp Nat.add_assoc]
theorem bar : True := trivial
```
