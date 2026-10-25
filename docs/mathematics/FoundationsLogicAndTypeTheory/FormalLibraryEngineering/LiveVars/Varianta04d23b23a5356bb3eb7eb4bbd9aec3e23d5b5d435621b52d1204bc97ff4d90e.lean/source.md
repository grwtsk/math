# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LiveVars.Varianta04d23b23a5356bb3eb7eb4bbd9aec3e23d5b5d435621b52d1204bc97ff4d90e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `050fdca292eaa1b039375279759e54d5f9711c17` · SHA-256 `a04d23b23a5356bb3eb7eb4bbd9aec3e23d5b5d435621b52d1204bc97ff4d90e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM
import Lean.Compiler.LCNF.DependsOn

/-!
This file implements an auxiliary algorithm to determine whether a variable is live
(that is, might be used during execution) in a piece of impure LCNF code. This information is
relevant to determine potential reset-reuse pairs. Note that this algorithm assumes the piece of
code it is operating on has already been internalized.

The key difference of this algorithm compared to `dependsOn` is that it also considers non-syntactic
uses.

For example, given a piece of code `B`:
```
let x : = ...;
jmp jp1 x
```
where `jp1` is defined to be:
```
jp jp1 x :=
  let res := f x y
  return res;
```
this algorithm will identify `y` as being live in `B` because it is used through the jump to `jp1`.
-/

namespace Lean.Compiler.LCNF

structure Context where
  /--
  A cache for an `FVarIdSet` consisting of just `targetId`.
  -/
  targetSet : FVarIdSet
  /--
  The variable we are trying to determine for whether it is live.
  -/
  targetId : FVarId

structure State where
  /--
  The set of visited join points so we do not re-visit the same join point from multiple jumps.
  -/
  visitedJps : FVarIdHashSet := {}

abbrev LiveM := ReaderT Context <| StateT State CompilerM

/--
Determine whether `fvarId` is live in `c`. Assumes that `c` and all of its transitively reachable
join-points are internalized.
-/
public partial def Code.isFVarLiveIn (c : Code .impure) (fvarId : FVarId) : CompilerM Bool := do
  go c |>.run { targetSet := { fvarId }, targetId := fvarId } |>.run' {}
where
  go (c : Code .impure) : LiveM Bool := do
    match c with
    | .let decl k => (pure <| decl.dependsOn (← read).targetSet) <||> go k
    | .jp decl k => go decl.value <||> (do markJpVisited decl.fvarId; go k)
    | .uset fvarId _ y k _ | .sset fvarId _ _ y _ k _ =>
      visitVar fvarId <||> visitVar y <||> go k
    | .oset fvarId _ y k _ =>
      visitVar fvarId <||> pure (y.dependsOn (← read).targetSet) <||> go k
    | .cases c => visitVar c.discr <||> c.alts.anyM (go ·.getCode)
    | .jmp fvarId args =>
      (pure <| args.any (·.dependsOn (← read).targetSet)) <||> do
        if (← get).visitedJps.contains fvarId then
          return false
        else
          let some decl ← findFunDecl? fvarId | unreachable!
          markJpVisited fvarId
          go decl.value
    | .return var => visitVar var
    | .unreach .. => return false
    | .inc (fvarId := fvarId) (k := k) .. | .dec (fvarId := fvarId) (k := k) ..
    | .setTag (fvarId := fvarId) (k := k) .. | .del (fvarId := fvarId) (k := k) =>
      visitVar fvarId <||> go k

  @[inline]
  visitVar (x : FVarId) : LiveM Bool :=
    return x == fvarId

  @[inline]
  markJpVisited (jp : FVarId) : LiveM Unit := do
    modify fun s => { s with visitedJps := s.visitedJps.insert jp }

end Lean.Compiler.LCNF
````
