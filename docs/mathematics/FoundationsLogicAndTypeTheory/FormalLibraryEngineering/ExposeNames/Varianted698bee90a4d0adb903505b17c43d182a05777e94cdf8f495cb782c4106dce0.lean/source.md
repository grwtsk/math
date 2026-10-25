# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExposeNames.Varianted698bee90a4d0adb903505b17c43d182a05777e94cdf8f495cb782c4106dce0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `010181d66bab1a07ab17a2efed55955ee1b87267` · SHA-256 `ed698bee90a4d0adb903505b17c43d182a05777e94cdf8f495cb782c4106dce0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.ExposeNames
public import Lean.Elab.Tactic.Basic

public section

namespace Lean.Elab.Tactic

@[builtin_tactic Lean.Parser.Tactic.exposeNames] def evalExposeNames : Tactic := fun _ =>
  liftMetaTactic1 fun mvarId => mvarId.exposeNames

end Lean.Elab.Tactic
```
