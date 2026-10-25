# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Literal.Variant9e411e364353447e8b200c9b0d2dc0b892eded968de6eb28ff1a8ee6fdcf687d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05236313864f78d068cb368ac1934f7b85fa3a3f` · SHA-256 `9e411e364353447e8b200c9b0d2dc0b892eded968de6eb28ff1a8ee6fdcf687d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Init.Data.Hashable
public import Init.Data.ToString

@[expose] public section

namespace Std
namespace Sat

/--
CNF literals identified by some type `α`. The `Bool` is the polarity of the literal.
`true` means positive polarity.
-/
abbrev Literal (α : Type u) := α × Bool

namespace Literal

/--
Flip the polarity of `l`.
-/
@[inline, grind =]
def negate (l : Literal α) : Literal α := (l.1, !l.2)

end Literal

end Sat
end Std
```
