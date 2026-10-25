# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simprocs.Variant003bd13b00090db2f644ec4f9b9b4658eb0ff406cdc0b720501c932dd7884fc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b10907c7232f11f36474faff32966783add8beda` · SHA-256 `003bd13b00090db2f644ec4f9b9b4658eb0ff406cdc0b720501c932dd7884fc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

open Lean Lean.Meta

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def unfoldConst («from» to : Name) : Simp.Simproc := λ e =>
  if e.isConstOf «from» then
    return .done { expr := .const to [] }
  else
    return .continue

@[irreducible] def T₁ := True

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : T₁ := by
  aesop

simproc unfoldT₁ (T₁) := unfoldConst ``T₁ ``True

example : T₁ := by
  aesop

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : T₁ := by
  aesop (config := { useDefaultSimpSet := false })

@[irreducible] def T₂ := True

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : T₂ := by
  aesop

simproc [aesop_builtin] unfoldT₂ (T₂) := unfoldConst ``T₂ ``True

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example : T₂ := by
  aesop (rule_sets := [-builtin])

example : T₂ := by
  aesop
```
