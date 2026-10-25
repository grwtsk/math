# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Refs.Variantf39d26348f4e11c8328b4b51c926133b2d25f1867ba1e014675baf7ad4b1d920

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2550dbf3a5856809db36d94756e3e46b253b5a32` · SHA-256 `f39d26348f4e11c8328b4b51c926133b2d25f1867ba1e014675baf7ad4b1d920`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Marc Huisinga
-/
module

prelude
import Init.Prelude

public def LeanServerTestRefsTest0 := Nat

public def Lean.Server.Test.LeanServerTestRefsTest0' := Nat

namespace Lean.Server.Test.Refs

public def Test1 := Nat
public def Test2 := Test1
public def Test3 := Test1
public def Test4 := Test2
public def Test5 := Test2

public inductive Test6
  | mk
public def test7 : Test6 := .mk
public def test8 : Test6 := .mk
public def test9 := test7
public def test10 := test9
```
