# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GenInjective.Variant27d8689e6691bafedbd03285bf4867f4d87f8e77d85d604da372dd2ffde8b48c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fec5ad51d0637c9ca88aff709c1a012cdd48e23` · SHA-256 `27d8689e6691bafedbd03285bf4867f4d87f8e77d85d604da372dd2ffde8b48c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Command
import Lean.Meta.Injective
import Lean.Meta.Constructions.CtorIdx

namespace Lean.Elab.Command

@[builtin_command_elab genInjectiveTheorems] def elabGenInjectiveTheorems : CommandElab := fun stx => do
  liftTermElabM do
    let declName ← realizeGlobalConstNoOverloadWithInfo stx[1]
    mkCtorIdx declName
    Meta.mkInjectiveTheorems declName

end Lean.Elab.Command
```
