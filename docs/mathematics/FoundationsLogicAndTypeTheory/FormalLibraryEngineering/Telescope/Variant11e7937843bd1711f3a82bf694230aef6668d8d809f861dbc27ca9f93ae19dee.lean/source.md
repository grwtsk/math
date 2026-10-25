# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Telescope.Variant11e7937843bd1711f3a82bf694230aef6668d8d809f861dbc27ca9f93ae19dee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `629b14bc0d474e46fe4256872818c03a5c1ca80a` · SHA-256 `11e7937843bd1711f3a82bf694230aef6668d8d809f861dbc27ca9f93ae19dee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.SimpM
import Lean.Meta.Sym.Simp.Have
import Lean.Meta.Sym.Simp.Forall
namespace Lean.Meta.Sym.Simp
/--
Simplify telescope binders (`have`-expression values, and arrow hypotheses)
but not the final body. This simproc is useful to simplify target before
introducing.
-/
public partial def simpTelescope : Simproc := fun e => do
  match e with
  | .letE .. =>
    simpLet' (simpLambda' simpTelescope) e
  | .forallE .. =>
    simpForall' (simpArrow := simpArrowTelescope simpTelescope) (simpBody := simpLambda' simpTelescope) e
  | _ => return .rfl

end Lean.Meta.Sym.Simp
```
