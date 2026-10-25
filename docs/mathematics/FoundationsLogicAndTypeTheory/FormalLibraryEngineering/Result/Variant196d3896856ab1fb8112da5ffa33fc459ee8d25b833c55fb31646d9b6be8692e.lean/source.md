# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Result.Variant196d3896856ab1fb8112da5ffa33fc459ee8d25b833c55fb31646d9b6be8692e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6d56ad205424d7a5f6367d4328ed073330582fe` · SHA-256 `196d3896856ab1fb8112da5ffa33fc459ee8d25b833c55fb31646d9b6be8692e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.DSimp.DSimpM
namespace Lean.Meta.Sym.DSimp

public def Result.markAsDone : Result → Result
  | .rfl _    => .rfl true
  | .step e _ => .step e true

public def Result.getResultExpr : Expr → Result → Expr
  | e, .rfl _    => e
  | _, .step e _ => e

end Lean.Meta.Sym.DSimp
```
