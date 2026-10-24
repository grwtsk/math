# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NameResolution.Variant774432521c0ebb868ba94050b9ca48529e28d796aebd203b26143e2afc9499bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c785a43a6db645e162ed63ba05c65217f5e2511` · SHA-256 `774432521c0ebb868ba94050b9ca48529e28d796aebd203b26143e2afc9499bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
import Aesop

set_option aesop.check.all true

-- When parsing the names of declarations for local rules, Aesop should take the
-- currently opened namespaces into account.

example : List α := by
  aesop (add safe List.nil)

namespace List

example : List α := by
  aesop (add safe List.nil)

example : List α := by
  aesop (add safe nil)

end List
```
