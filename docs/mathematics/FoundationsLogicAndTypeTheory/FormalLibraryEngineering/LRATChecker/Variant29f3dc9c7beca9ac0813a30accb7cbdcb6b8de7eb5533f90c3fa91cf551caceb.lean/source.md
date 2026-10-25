# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LRATChecker.Variant29f3dc9c7beca9ac0813a30accb7cbdcb6b8de7eb5533f90c3fa91cf551caceb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8b208026f7910dc3590223076a5892c18a0064c` · SHA-256 `29f3dc9c7beca9ac0813a30accb7cbdcb6b8de7eb5533f90c3fa91cf551caceb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Actions
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Class

@[expose] public section

namespace Std.Tactic.BVDecide
namespace LRAT
namespace Internal

inductive Result
  | success
  | outOfProof
  | rupFailure
deriving Inhabited, DecidableEq

instance : ToString Result where
  toString := fun
    | .success => "success"
    | .outOfProof => "out of proof"
    | .rupFailure => "rup failure"

open Formula

def lratChecker [DecidableEq α] [Clause α β] [Entails α σ] [Formula α β σ] (f : σ)
    (prf : List (Action β α)) :
    Result :=
  match prf with
  | [] => .outOfProof
  | .addEmpty _ rupHints :: _ =>
    let (_, checkSuccess) := performRupAdd f Clause.empty rupHints
    if checkSuccess then
      .success
    else
      .rupFailure
  | .addRup _ c rupHints :: restPrf =>
    let (f, checkSuccess) := performRupAdd f c rupHints
    if checkSuccess then
      lratChecker f restPrf
    else
      .rupFailure
  | .addRat _ c pivot rupHints ratHints :: restPrf =>
    let (f, checkSuccess) := performRatAdd f c pivot rupHints ratHints
    if checkSuccess then
      lratChecker f restPrf
    else
      .rupFailure
  | .del ids :: restPrf => lratChecker (delete f ids) restPrf

end Internal
end LRAT
end Std.Tactic.BVDecide
```
