# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Actions.Variant68f710eb7c0d7464606e6dbf3a708b820e9b41bcf29b90ded5e94079c3cc4721

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `272d1d60c500070ace831844897956d11b81f028` · SHA-256 `68f710eb7c0d7464606e6dbf3a708b820e9b41bcf29b90ded5e94079c3cc4721`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Std.Sat.CNF

@[expose] public section

/-!
This module contains the definition of the LRAT format (https://www.cs.utexas.edu/~marijn/publications/lrat.pdf)
as a type `Action`, that is polymorphic over the variables used in the CNF. The type
`IntAction := Action (Array Int) Nat` is the version that is used by the checker as input and should
be considered the parsing target for LRAT proofs.
-/

namespace Std.Tactic.BVDecide
namespace LRAT

open Std.Sat

/-- `β` is for the type of a clause, `α` is for the type of variables -/
inductive Action (β : Type u) (α : Type v)
  | addEmpty (id : Nat) (rupHints : Array Nat)
  | addRup (id : Nat) (c : β) (rupHints : Array Nat)
  | addRat (id : Nat) (c : β) (pivot : Literal α) (rupHints : Array Nat) (ratHints : Array (Nat × Array (Nat)))
  | del (ids : Array Nat)
deriving Inhabited, BEq, Repr

def Action.toString [ToString β] [ToString α] : Action β α → String
  | .addEmpty id rup => s!"addEmpty (id: {id}) (hints: {rup})"
  | .addRup id c rup => s!"addRup {c} (id : {id}) (hints: {rup})"
  | .addRat id c l rup rat => s!"addRat {c} (id: {id}) (pivot: {l}) (rup hints: {rup}) (rat hints: {rat})"
  | .del ids => s!"del {ids}"

instance [ToString β] [ToString α] : ToString (Action β α) := ⟨Action.toString⟩

/--
`Action` where variables are (positive) `Nat`, clauses are arrays of `Int`, and ids are `Nat`.
This Action type is meant to be a convenient target for parsing LRAT proofs.
-/
abbrev IntAction : Type := Action (Array Int) Nat


end LRAT
end Std.Tactic.BVDecide
```
