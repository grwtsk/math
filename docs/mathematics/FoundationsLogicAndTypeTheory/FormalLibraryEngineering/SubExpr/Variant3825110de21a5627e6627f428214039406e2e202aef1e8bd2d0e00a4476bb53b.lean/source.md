# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SubExpr.Variant3825110de21a5627e6627f428214039406e2e202aef1e8bd2d0e00a4476bb53b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de1a6ac60c4b2019b2129a4ab8b03dfafbe14b9c` · SHA-256 `12e34b1b38bbd2c024592193c0ae8e7ff362fb26b2d656c34131a9d275e70d82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HoleIterator.Variantd85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HoleIterator.Variantd85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/PrettyPrinter/Delaborator/SubExpr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Daniel Selsam, Wojciech Nawrocki
-/
module

prelude
public import Lean.SubExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HoleIterator.Variantd85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f

public section

/-!
# Subexpr utilities for delaborator.
This file defines utilities for `MetaM` computations to traverse subexpressions of an expression
in sync with the `Nat` "position" values that refer to them.
-/

namespace Lean.PrettyPrinter.Delaborator

abbrev OptionsPerPos := Std.TreeMap SubExpr.Pos Options

def OptionsPerPos.insertAt (optionsPerPos : OptionsPerPos) (pos : SubExpr.Pos) (name : Name) (value : DataValue) : OptionsPerPos :=
  let opts := optionsPerPos.get? pos |>.getD {}
  optionsPerPos.insert pos <| opts.set name value

/-- Merges two collections of options, where the second overrides the first. -/
def OptionsPerPos.merge : OptionsPerPos → OptionsPerPos → OptionsPerPos :=
  Std.TreeMap.mergeWith (fun _ => Options.mergeBy (fun _ _ dv => dv))

namespace SubExpr

open Lean.SubExpr

variable {α : Type} [Inhabited α]
variable {m : Type → Type} [Monad m]

section Descend

variable [MonadReaderOf SubExpr m] [MonadWithReaderOf SubExpr m]
variable [MonadLiftT MetaM m] [MonadControlT MetaM m]
variable [MonadLiftT IO m]

def getExpr : m Expr := return (← readThe SubExpr).expr
def getPos  : m Pos  := return (← readThe SubExpr).pos

def descend (child : Expr) (childIdx : Nat) (x : m α) : m α :=
  withTheReader SubExpr (fun cfg => { cfg with expr := child, pos := cfg.pos.push childIdx }) x

def withAppFn   (x : m α) : m α := do descend (← getExpr).appFn!  0 x
def withAppArg  (x : m α) : m α := do descend (← getExpr).appArg! 1 x

def withType (x : m α) : m α := do
  descend (← Meta.inferType (← getExpr)) Pos.typeCoord x -- phantom positions for types

/--
Uses `xa` to compute the fold across the arguments of an application,
where `xf` provides the initial value and is evaluated in the context of the head of the application.
-/
partial def withAppFnArgs (xf : m α) (xa : α → m α) : m α := do
  if (← getExpr).isApp then
    let acc ← withAppFn (withAppFnArgs xf xa)
    withAppArg (xa acc)
  else xf

/--
Uses `xa` to compute the fold across up to `maxArgs` outermost arguments of an application,
where `xf` provides the initial value and is evaluated in the context of the application minus
the arguments being folded across.
-/
def withBoundedAppFnArgs (maxArgs : Nat) (xf : m α) (xa : α → m α) : m α := do
  match maxArgs, (← getExpr) with
  | maxArgs' + 1, .app .. =>
    let acc ← withAppFn (withBoundedAppFnArgs maxArgs' xf xa)
    withAppArg (xa acc)
  | _, _ => xf

/--
Runs `xf` in the context of `Lean.Expr.getBoundedAppFn maxArgs`.
This is equivalent to `withBoundedAppFnArgs maxArgs xf pure`.
-/
def withBoundedAppFn (maxArgs : Nat) (xf : m α) : m α := do
  let e ← getExpr
  let numArgs := min maxArgs e.getAppNumArgs
  let newPos := (← getPos).pushNaryFn numArgs
  withTheReader SubExpr (fun cfg => { cfg with expr := e.getBoundedAppFn numArgs, pos := newPos }) xf

def withBindingDomain (x : m α) : m α := do descend (← getExpr).bindingDomain! 0 x

/--
Assumes the `SubExpr` is a lambda or forall.
1. Creates a local declaration for this binder using the name `n`.
2. Evaluates `v` using the fvar for the local declaration.
3. Enters the binding body, and evaluates `x` using this result.
-/
def withBindingBody' (n : Name) (v : Expr → m β) (x : β → m α) : m α := do
  let e ← getExpr
  Meta.withLocalDecl n e.binderInfo e.bindingDomain! fun fvar => do
    let b ← v fvar
    descend (e.bindingBody!.instantiate1 fvar) 1 (x b)

/--
Assumes the `SubExpr` is a lambda or forall.
Creates a local declaration for this binder using the name `n`, enters the binding body, and evaluates `x`.
-/
def withBindingBody (n : Name) (x : m α) : m α :=
  withBindingBody' n (fun _ => pure ()) (fun _ => x)

def withProj (x : m α) : m α := do
  let Expr.proj _ _ e ← getExpr | unreachable!
  descend e 0 x

def withMDataExpr (x : m α) : m α := do
  let Expr.mdata _ e ← getExpr | unreachable!
  withTheReader SubExpr (fun ctx => { ctx with expr := e }) x

def withLetVarType (x : m α) : m α := do
  let Expr.letE _ t _ _ _ ← getExpr | unreachable!
  descend t 0 x

def withLetValue (x : m α) : m α := do
  let Expr.letE _ _ v _ _ ← getExpr | unreachable!
  descend v 1 x

def withLetBody (x : m α) : m α := do
  let Expr.letE n t v b nondep ← getExpr | unreachable!
  Meta.withLetDecl n t v (nondep := nondep) fun fvar =>
    let b := b.instantiate1 fvar
    descend b 2 x

def withNaryFn (x : m α) : m α := do
  let e ← getExpr
  let newPos := (← getPos).pushNaryFn e.getAppNumArgs
  withTheReader SubExpr (fun cfg => { cfg with expr := e.getAppFn, pos := newPos }) x

def withNaryArg (argIdx : Nat) (x : m α) : m α := do
  let e ← getExpr
  let args := e.getAppArgs
  let newPos := (← getPos).pushNaryArg args.size argIdx
  withTheReader SubExpr (fun cfg => { cfg with expr := args[argIdx]!, pos := newPos }) x

end Descend

structure HoleIterator where
  curr : Nat := 2
  top  : Nat := Pos.maxChildren
  deriving Inhabited

section Hole

variable {α : Type} [Inhabited α]
variable {m : Type → Type} [Monad m]
variable [MonadStateOf HoleIterator m]

def HoleIterator.toPos (iter : HoleIterator) : Pos :=
  iter.curr

def HoleIterator.next (iter : HoleIterator) : HoleIterator :=
  if (iter.curr+1) == iter.top then
    ⟨2*iter.top, Pos.maxChildren*iter.top⟩
  else ⟨iter.curr+1, iter.top⟩

/-- The positioning scheme guarantees that there will be an infinite number of extra positions
which are never used by `Expr`s. The `HoleIterator` always points at the next such "hole".
We use these to attach additional `Elab.Info`.

Note: these positions are incompatible with `Lean.SubExpr.Pos.push` since the iterator
will eventually yield every child of every returned position. -/
def nextExtraPos : m Pos := do
  let iter ← getThe HoleIterator
  let pos := iter.toPos
  modifyThe HoleIterator HoleIterator.next
  return pos

end Hole
end SubExpr

end Lean.PrettyPrinter.Delaborator
```
