# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Length.Variantf949c872b69bac9089113434dbab3262b951cfb4631fbd46c839ab7ce00c825e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c470bc03076809e6479c8115ca8d2c7696e46b1b` · SHA-256 `f949c872b69bac9089113434dbab3262b951cfb4631fbd46c839ab7ce00c825e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Init.Data.Repr

public section

/-!
# Body.Length

This module defines the `Length` type, that represents the Content-Length or Transfer-Encoding
of an HTTP request or response.
-/

namespace Std.Http.Body

set_option linter.all true

/--
Size of the body of a response or request.
-/
inductive Length
  /--
  Indicates that the HTTP message body uses **chunked transfer encoding**.
  -/
  | chunked

  /--
  Indicates that the HTTP message body has a **fixed, known length**, as specified by the
  `Content-Length` header.
  -/
  | fixed (n : Nat)
deriving Repr, BEq

namespace Length

/--
Checks if the `Length` is chunked.
-/
@[inline]
def isChunked : Length → Bool
  | .chunked => true
  | _ => false

/--
Checks if the `Length` is a fixed size.
-/
@[inline]
def isFixed : Length → Bool
  | .fixed _ => true
  | _ => false

end Length

end Std.Http.Body
```
