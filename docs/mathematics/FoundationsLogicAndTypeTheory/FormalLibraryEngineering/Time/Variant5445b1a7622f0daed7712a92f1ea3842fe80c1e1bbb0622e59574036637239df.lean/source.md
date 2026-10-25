# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Time.Variant5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca353988a974db7f476285186933f5b2a44bd845` · SHA-256 `5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

prelude
public import Lean.Elab.Command

public section

/-!
# Defines `#time` command.

Time the elaboration of a command, and print the result (in milliseconds).
-/

namespace Lean.Elab.Time

open Command

@[builtin_command_elab Lean.Parser.timeCmd] def elabTimeCmd : CommandElab
  | `(#time%$tk $stx:command) => do
    let start ← IO.monoMsNow
    elabCommand stx
    logInfoAt tk m!"time: {(← IO.monoMsNow) - start}ms"
  | _ => throwUnsupportedSyntax

end Lean.Elab.Time
```
