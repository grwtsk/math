# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Anchor.Variant7eb2d505c5b6ef5c0642c7029cf91d83f658f6040bf02c9998952d9446a51a34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `289118ae4b9437e099fb45fe5203a88cc62414bf` · SHA-256 `7eb2d505c5b6ef5c0642c7029cf91d83f658f6040bf02c9998952d9446a51a34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
namespace Lean.Elab.Tactic.Grind
open Meta Lean.Meta.Grind

public def elabAnchorRef (anchor : TSyntax `hexnum) : CoreM AnchorRef := do
  let numDigits := anchor.getHexNumSize
  let val := anchor.getHexNumVal
  if val >= UInt64.size then
    throwError "invalid anchor, value is too big"
  let anchorPrefix := val.toUInt64
  return { numDigits, anchorPrefix }

end Lean.Elab.Tactic.Grind
```
