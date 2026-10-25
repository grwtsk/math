# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransparencyMode.Variante26c8d01b9182e126bbdf01134e327aa85446219694aeeb61ad6161696cc9b69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8455a1f302cce812d7503f550867e9c543a959c8` · SHA-256 `e26c8d01b9182e126bbdf01134e327aa85446219694aeeb61ad6161696cc9b69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.UInt.Basic
public import Init.MetaTypes

public section
namespace Lean.Meta

namespace TransparencyMode

def hash : TransparencyMode → UInt64
  | all       => 7
  | default   => 11
  | reducible => 13
  | instances => 17
  | implicit  => 23
  | none      => 19

instance : Hashable TransparencyMode := ⟨hash⟩

protected def toString : TransparencyMode → String
  | all       => "all"
  | default   => "default"
  | reducible => "reducible"
  | instances => "instances"
  | implicit  => "implicit"
  | none      => "none"

instance : ToString TransparencyMode := ⟨TransparencyMode.toString⟩

def lt : TransparencyMode → TransparencyMode → Bool
  | _,         none      => false
  | none,      _         => true
  | _,         reducible => false
  | reducible, _         => true
  | _,         instances => false
  | instances, _         => true
  | _,         implicit  => false
  | implicit,  _         => true
  | default,   all       => true
  | _,         _         => false

end TransparencyMode

example (a b c : TransparencyMode) : a.lt b → b.lt c → a.lt c := by
  cases a <;> cases b <;> cases c <;> simp [TransparencyMode.lt]

example (a : TransparencyMode) : ¬ a.lt a := by
  cases a <;> simp [TransparencyMode.lt]

example (a b : TransparencyMode) : a.lt b → ¬ b.lt a := by
  cases a <;> cases b <;> simp [TransparencyMode.lt]

example : TransparencyMode.lt .none .reducible := rfl
example : TransparencyMode.lt .reducible .instances := rfl
example : TransparencyMode.lt .instances .implicit := rfl
example : TransparencyMode.lt .implicit .default := rfl
example : TransparencyMode.lt .default .all := rfl

end Lean.Meta
```
