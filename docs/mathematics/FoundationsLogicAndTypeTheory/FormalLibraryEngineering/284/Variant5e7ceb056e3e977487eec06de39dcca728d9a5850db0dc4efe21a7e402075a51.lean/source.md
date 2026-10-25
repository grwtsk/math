# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.284.Variant5e7ceb056e3e977487eec06de39dcca728d9a5850db0dc4efe21a7e402075a51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb32d42f31d89f1303c745aa9afd72e9aec3977c` · SHA-256 `5e7ceb056e3e977487eec06de39dcca728d9a5850db0dc4efe21a7e402075a51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Artie Khovanov, Jannis Limperg
-/

-- Test case for #284. Tests the handling of forward rule premises whose only
-- reverse dependencies are instances.
-- Thanks to Artie Khovanov for this test case.

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

class Base (S : Prop) : Prop where
  is_true : S

theorem foo [inst : Base S] : S :=
  inst.is_true

example [Base S] : S := by
  aesop (add safe forward foo)

class Extend S extends Base S

example [Extend S] : S := by
  aesop (add safe forward foo)
```
