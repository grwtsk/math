# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Version.Variantb25c9928ba2bdeb4b5076701841680128df066e149cacd94429114259f89571d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87cd4238219aeeb882850b8f42a8e62ae95168f7` · SHA-256 `b25c9928ba2bdeb4b5076701841680128df066e149cacd94429114259f89571d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
import Init.Data.ToString
public import Init.Data.String.Basic

public section

/-!
# Version

This module defines `Version`, the set of HTTP protocol versions modeled by this library.

Reference: https://httpwg.org/specs/rfc9110.html#protocol.version
-/

namespace Std.Http

set_option linter.all true

/--
HTTP protocol versions modeled by this library.

Reference: https://httpwg.org/specs/rfc9110.html#protocol.version
-/
inductive Version
  /--
  `HTTP/1.0`
  -/
  | v10

  /--
  `HTTP/1.1`
  -/
  | v11

  /--
  `HTTP/2.0`
  -/
  | v20

  /--
  `HTTP/3.0`
  -/
  | v30
deriving Repr, Inhabited, BEq, DecidableEq

namespace Version

/--
Converts a pair of `Nat` to the corresponding `Version`.
-/
def ofNumber? : Nat → Nat → Option Version
  | 1, 0 => some .v10
  | 1, 1 => some .v11
  | 2, 0 => some .v20
  | 3, 0 => some .v30
  | _, _ => none

/--
Converts `String` to the corresponding `Version`.
-/
def ofString? : String → Option Version
  | "HTTP/1.0" => some .v10
  | "HTTP/1.1" => some .v11
  | "HTTP/2.0" => some .v20
  | "HTTP/3.0" => some .v30
  | _ => none

/--
Converts `String` to the corresponding `Version`, panics if invalid.
-/
def ofString! (s : String) : Version :=
  match ofString? s with
  | some v => v
  | none => panic! s!"invalid HTTP version: {s.quote}"

/--
Converts a `Version` to its corresponding major and minor numbers as a pair.
-/
def toNumber : Version → (Nat × Nat)
  | .v10 => (1, 0)
  | .v11 => (1, 1)
  | .v20 => (2, 0)
  | .v30 => (3, 0)

instance : ToString Version where
  toString
    | .v10 => "HTTP/1.0"
    | .v11 => "HTTP/1.1"
    | .v20 => "HTTP/2.0"
    | .v30 => "HTTP/3.0"

end Std.Http.Version
```
