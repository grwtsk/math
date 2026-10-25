# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Source.Variant4ae07a328afae9277b4b1bb3f5d086ea00669debb30ef13149bfd2ddbed5fd75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7def7797e495a44c6f65922b4e787c7371158821` · SHA-256 `4ae07a328afae9277b4b1bb3f5d086ea00669debb30ef13149bfd2ddbed5fd75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

import Mathlib.Init

public section

structure Foo where _mkInternal :: x : Nat

-- We can use internal constructors in the module we defined them in
def e : Foo := ⟨4⟩
```
