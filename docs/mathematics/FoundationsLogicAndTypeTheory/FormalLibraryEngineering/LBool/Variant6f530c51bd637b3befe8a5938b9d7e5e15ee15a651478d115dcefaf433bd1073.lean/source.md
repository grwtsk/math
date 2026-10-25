# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LBool.Variant6f530c51bd637b3befe8a5938b9d7e5e15ee15a651478d115dcefaf433bd1073

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a66a6df3c25b6fdd636c0b1dd28294bd0de8b9ec` · SHA-256 `6f530c51bd637b3befe8a5938b9d7e5e15ee15a651478d115dcefaf433bd1073`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.ToString.Basic

public section

open Lean

namespace Lean

inductive LBool where
  | false
  | true
  | undef
  deriving Inhabited, BEq

namespace LBool

def neg : LBool → LBool
  | true  => false
  | false => true
  | undef => undef

def and : LBool → LBool → LBool
  | true,  b  => b
  | a,     _  => a

def toString : LBool → String
  | true  => "true"
  | false => "false"
  | undef => "undef"

instance : ToString LBool := ⟨toString⟩

end LBool

def Bool.toLBool : Bool → LBool
  | true  => LBool.true
  | false => LBool.false

@[inline] def toLBoolM {m : Type → Type} [Monad m] (x : m Bool) : m LBool := do
  let b ← x
  pure b.toLBool

end Lean
```
