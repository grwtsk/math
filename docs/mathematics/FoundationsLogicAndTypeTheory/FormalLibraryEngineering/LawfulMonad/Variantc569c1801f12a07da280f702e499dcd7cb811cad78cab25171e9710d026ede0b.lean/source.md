# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulMonad.Variantc569c1801f12a07da280f702e499dcd7cb811cad78cab25171e9710d026ede0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `221b9c885292a3373b0223b0ea302fb2a194fef0` · SHA-256 `c569c1801f12a07da280f702e499dcd7cb811cad78cab25171e9710d026ede0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Lean.Elab.Command
import all Init.System.ST

@[expose] public section

/-!
# Construct `LawfulMonad` instances for the Lean monad stack.
-/

open Lean Elab Term Tactic Command

instance : LawfulMonad (ST σ) := .mk' _
  (id_map := fun x => rfl)
  (pure_bind := fun x f => rfl)
  (bind_assoc := fun f g x => rfl)

instance  : LawfulMonad (EST ε σ) := .mk' _
  (id_map := fun x => funext fun v => by dsimp [Functor.map, EST.bind]; cases x v <;> rfl)
  (pure_bind := fun x f => rfl)
  (bind_assoc := fun f g x => funext fun v => by dsimp [Bind.bind, EST.bind]; cases f v <;> rfl)

instance : LawfulMonad (EIO ε) := inferInstanceAs <| LawfulMonad (EST _ _)
instance : LawfulMonad BaseIO := inferInstanceAs <| LawfulMonad (ST _)
instance : LawfulMonad IO := inferInstanceAs <| LawfulMonad (EIO _)

instance : LawfulMonad CoreM :=
  inferInstanceAs <| LawfulMonad (ReaderT _ <| StateRefT' _ _ (EIO Exception))
instance : LawfulMonad MetaM :=
  inferInstanceAs <| LawfulMonad (ReaderT _ <| StateRefT' _ _ CoreM)
instance : LawfulMonad TermElabM :=
  inferInstanceAs <| LawfulMonad (ReaderT _ <| StateRefT' _ _ MetaM)
instance : LawfulMonad TacticM :=
  inferInstanceAs <| LawfulMonad (ReaderT _ $ StateRefT' _ _ $ TermElabM)
instance : LawfulMonad CommandElabM :=
  inferInstanceAs <| LawfulMonad (ReaderT _ $ StateRefT' _ _ $ EIO _)
```
