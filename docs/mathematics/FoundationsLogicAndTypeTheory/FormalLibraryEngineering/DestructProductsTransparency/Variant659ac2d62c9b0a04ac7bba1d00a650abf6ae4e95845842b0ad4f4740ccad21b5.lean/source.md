# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DestructProductsTransparency.Variant659ac2d62c9b0a04ac7bba1d00a650abf6ae4e95845842b0ad4f4740ccad21b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e580b4b8d8779b34c83430c649a65b91e7a726a` · SHA-256 `659ac2d62c9b0a04ac7bba1d00a650abf6ae4e95845842b0ad4f4740ccad21b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop safe constructors]
structure Sig (α : Sort u) (β : α → Sort v) : Sort _ where
  fst : α
  snd : β fst

def T α β := α ∧ β

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T α β) : Sig α (λ _ => β) := by
  aesop (config := { terminal := true })

example (h : T α β) : Sig α (λ _ => β) := by
  aesop (config := { destructProductsTransparency := .default })

def U := T

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : U α β) : Sig α (λ _ => β) := by
  aesop (config := { terminal := true })

example (h : U α β) : Sig α (λ _ => β) := by
  aesop (config := { destructProductsTransparency := .default })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : U α β ∧ U γ δ) : Sig α (λ _ => γ) := by
  aesop (config := { terminal := true })

example (h : U α β ∧ U γ δ) : Sig α (λ _ => γ) := by
  aesop (config := { destructProductsTransparency := .default })
```
