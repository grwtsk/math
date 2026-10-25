# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FloatRecApp.Variant7301397e6b8893d1ad358d36476295284ec6c572b122687c4a3588cec25635b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22b4b8b62b959c563273279179a7752605d099e5` · SHA-256 `7301397e6b8893d1ad358d36476295284ec6c572b122687c4a3588cec25635b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Transform
public import Lean.Elab.RecAppSyntax

public section

namespace Lean.Elab.WF
open Meta

/--
Preprocesses the expressions to improve the effectiveness of `wfRecursion`.

* Floats out the RecApp markers.
  Example:
  ```
  def f : Nat → Nat
    | 0 => 1
    | i+1 => (f x) i
  ```

Unlike `Lean.Elab.Structural.preprocess`, do _not_ beta-reduce, as it could
remove `let_fun`-lambdas that contain explicit termination proofs.
(Note(kmill): this last statement no longer affects `let_fun`/`have`.)
-/
def floatRecApp (e : Expr) : CoreM Expr :=
  Core.transform e
    (post := fun e => do
      if e.isApp && e.getAppFn.isMData then
        let .mdata m f := e.getAppFn | unreachable!
        if m.isRecApp then
          return .done (.mdata m (f.beta e.getAppArgs))
      return .continue)

end Lean.Elab.WF
````
