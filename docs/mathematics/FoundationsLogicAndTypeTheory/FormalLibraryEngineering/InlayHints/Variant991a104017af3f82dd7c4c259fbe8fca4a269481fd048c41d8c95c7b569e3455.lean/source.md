# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InlayHints.Variant991a104017af3f82dd7c4c259fbe8fca4a269481fd048c41d8c95c7b569e3455

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a271a76300910dffe1384287452c33450f27ec60` · SHA-256 `991a104017af3f82dd7c4c259fbe8fca4a269481fd048c41d8c95c7b569e3455`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Marc Huisinga
-/
module

prelude
public import Lean.Meta.Basic

public section

namespace Lean.Elab

open Lean

structure InlayHintLinkLocation where
  module : Name
  range  : Lean.Syntax.Range

structure InlayHintLabelPart where
  value     : String
  tooltip?  : Option String := none
  location? : Option InlayHintLinkLocation := none

inductive InlayHintLabel
  | name (n : String)
  | parts (p : Array InlayHintLabelPart)

inductive InlayHintKind where
  | type
  | parameter

structure InlayHintTextEdit where
  range   : Lean.Syntax.Range
  newText : String
  deriving BEq

structure InlayHintInfo where
  position     : String.Pos.Raw
  label        : InlayHintLabel
  kind?        : Option InlayHintKind := none
  textEdits    : Array InlayHintTextEdit := #[]
  tooltip?     : Option String := none
  paddingLeft  : Bool := false
  paddingRight : Bool := false

structure InlayHint extends InlayHintInfo where
  lctx               : LocalContext
  deferredResolution : InlayHintInfo → MetaM InlayHintInfo := fun i => .pure i
  deriving TypeName

namespace InlayHint

def toCustomInfo (i : InlayHint) : CustomInfo := {
  stx := .missing
  value := .mk i
}

def ofCustomInfo? (c : CustomInfo) : Option InlayHint :=
  c.value.get? InlayHint

def resolveDeferred (i : InlayHint) : MetaM InlayHint := do
  let info := i.toInlayHintInfo
  let info ← i.deferredResolution info
  return { i with toInlayHintInfo := info }

end InlayHint
```
