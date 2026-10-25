# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimpM.Variantf2bebedd99365e7e950486c59235e0fb32461cd4ab5a2c08967408bde5b7b381

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7187ba01ec7c227fada3ca6a2d82124db3de19e` · SHA-256 `f2bebedd99365e7e950486c59235e0fb32461cd4ab5a2c08967408bde5b7b381`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.SymM
import Lean.Meta.Sym.ExprPtr
public section
namespace Lean.Meta.Sym.DSimp

/-!
# Definitional Simplifier for SymM

`DSimp` mirrors `Sym.Simp` but does **not** produce proof terms. Every rewrite must hold
by definitional equality, so the kernel checks `e ≡ e'` at the use site and we only need
to return the simplified expression.
-/

/-- Configuration options for the definitional simplifier. -/
structure Config where
  /-- Maximum number of steps that can be performed by the simplifier. -/
  maxSteps : Nat := 100_000
  deriving Inhabited

/--
The result of definitionally simplifying an expression `e`.

The `done` flag controls whether simplification should continue after this result:
- `done = false` (default): Continue with subsequent simplification steps. If a
  `pre`/`post` method returns `.step e' false`, `dsimp` recurses on `e'`.
- `done = true`: Stop processing, return this result as final.

Unlike `Sym.Simp.Result`, this carries no proof term and no `contextDependent` flag.
-/
inductive Result where
  /-- No change. If `done = true`, skip remaining simplification steps for this term. -/
  | rfl  (done : Bool := false)
  /-- Simplified to `e'`. If `done = true`, skip recursive simplification of `e'`. -/
  | step (e' : Expr) (done : Bool := false)
  deriving Inhabited

private opaque MethodsRefPointed : NonemptyType.{0}
def MethodsRef : Type := MethodsRefPointed.type
instance : Nonempty MethodsRef := by exact MethodsRefPointed.property

/-- Read-only context for the definitional simplifier. -/
structure Context where
  /-- Simplifier configuration options. -/
  config : Config := {}

/-- Cache mapping expressions (by pointer equality) to their simplified results. -/
abbrev Cache := PHashMap ExprPtr Result

/-- Mutable state for the definitional simplifier. -/
structure State where
  /-- Number of steps performed so far. -/
  numSteps : Nat := 0
  /-- Cache for simplification results. Survives across binder entry. -/
  cache : Cache := {}

/-- Monad for the definitional simplifier, layered on top of `SymM`. -/
abbrev DSimpM := ReaderT MethodsRef $ ReaderT Context StateRefT State SymM

instance : Inhabited (DSimpM α) where
  default := throwError "<default>"

abbrev DSimproc := Expr → DSimpM Result

structure Methods where
  pre  : DSimproc := fun _ => return .rfl
  post : DSimproc := fun _ => return .rfl
  deriving Inhabited

unsafe def Methods.toMethodsRefImpl (m : Methods) : MethodsRef :=
  unsafeCast m

@[implemented_by Methods.toMethodsRefImpl]
opaque Methods.toMethodsRef (m : Methods) : MethodsRef

unsafe abbrev MethodsRef.toMethodsImpl (m : MethodsRef) : Methods :=
  unsafeCast m

@[implemented_by MethodsRef.toMethodsImpl]
opaque MethodsRef.toMethods (m : MethodsRef) : Methods

def getMethods : DSimpM Methods :=
  return MethodsRef.toMethods (← read)

/-- Runs a `DSimpM` computation with the given methods, configuration, and state.
The `cache` and `numSteps` from `s` are preserved (cache entries persist across
invocations because results are not context-dependent). -/
def DSimpM.run (x : DSimpM α) (methods : Methods := {}) (config : Config := {})
    (s : State := {}) : SymM (α × State) := do
  x methods.toMethodsRef { config } |>.run { s with numSteps := 0 }

/-- Runs a `DSimpM` computation with the given methods and configuration. -/
def DSimpM.run' (x : DSimpM α) (methods : Methods := {}) (config : Config := {}) : SymM α := do
  x methods.toMethodsRef { config } |>.run' {}

set_option compiler.ignoreBorrowAnnotation true in
@[extern "lean_sym_dsimp"] -- Forward declaration
opaque dsimp : DSimproc

def getConfig : DSimpM Config :=
  return (← readThe Context).config

abbrev pre : DSimproc := fun e => do
  (← getMethods).pre e

abbrev post : DSimproc := fun e => do
  (← getMethods).post e

end DSimp

abbrev dsimp (e : Expr) (methods : DSimp.Methods := {}) (config : DSimp.Config := {})
    : SymM Expr := do
  match (← DSimp.DSimpM.run' (DSimp.dsimp e) methods config) with
  | .rfl _     => return e
  | .step e' _ => return e'

end Lean.Meta.Sym
```
