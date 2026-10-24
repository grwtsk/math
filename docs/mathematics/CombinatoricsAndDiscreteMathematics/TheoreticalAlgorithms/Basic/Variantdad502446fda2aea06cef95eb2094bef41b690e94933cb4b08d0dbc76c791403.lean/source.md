# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantdad502446fda2aea06cef95eb2094bef41b690e94933cb4b08d0dbc76c791403

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c51e5614ec30e0c4ddde80388fd51043e9eb1fc` · SHA-256 `dad502446fda2aea06cef95eb2094bef41b690e94933cb4b08d0dbc76c791403`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Tree.Variadic

namespace Surface

universe u

/-!
Cambridge-style variadic flow trees for prime-indexed heat-flow constructions.

The grammar is intentionally symbolic.  It records algebraic, topological,
cohomological, symmetry, and sieve structure without importing analytic or
algebraic-geometry libraries.

The intended reading is:

* prime-indexed arithmetic data are represented as variadic prefix trees;
* heat-flow exponential nodes explicitly record their base;
* binary actions carry heat-residue status, usually `pending`;
* homology, a prismatic attention tag, symmetry groups, and sieves are attached as
  first-class attention tags;
* examples can build a BSD-motivated symbolic flow pipeline from point counting
  modulo `p` to Euler products, logarithmic scaling, and L-function continuation.
-/

/-- Attention channels carried by symbolic flow nodes. -/
inductive Flow.Tag where
  | homology
  | prismaticTag
  | symmetryGroup
  | sieve
  | heatResidue
  | lFunction
  | eulerProduct
  | pointCounting
deriving Repr

/-- Heat-residue status attached to an analytic action. -/
inductive Flow.ResidueStatus where
  | pending
  | realized
  | blocked
deriving Repr

/-- Metadata carried by heat-sensitive symbolic actions. -/
structure Flow.HeatResidue where
  status : Flow.ResidueStatus
  attentions : List Flow.Tag
deriving Repr

/-- A pending heat residue with explicit attention tags. -/
def Flow.HeatResidue.pending
    (attentions : List Flow.Tag) :
    Flow.HeatResidue where
  status := .pending
  attentions := attentions

/-- A realized heat residue with explicit attention tags. -/
def Flow.HeatResidue.realized
    (attentions : List Flow.Tag) :
    Flow.HeatResidue where
  status := .realized
  attentions := attentions

/-- Binary actions used inside symbolic flow expressions. -/
inductive Flow.BinaryAction where
  | add
  | sub
  | mul
  | div
  | pow
  | eq
  | proportional
  | compose
  | apply
  | localFactor
  | frobeniusTrace
  | heatKernel
  | analyticContinuation
  | orderOfVanishing
  | symmetryActs
  | sieveFilters
  | boundary
deriving Repr, DecidableEq

/-- Variadic Cambridge-style prefix operations. -/
inductive Flow.VariadicOp where
  | sum
  | product
  | chain
  | log
  | cos
  | pointCountingBatch
  | pointCountModulo (p : Nat)
  | productPrimesLE (bound : Nat)
  | eulerProduct (bound : Nat)
  | logScaling (rank : Nat)
  | lFunction
  | homology
  | prismaticTag
  | symmetryGroup
  | sieve
  | topologicalPerspective
  | rankAtOne (rank : Nat)
deriving Repr, DecidableEq

/--
A symbolic flow tree.

This is a Cambridge-style variadic Polish tree: the operator precedes a list of
arguments.  Binary actions are separated out when left/right structure matters,
and exponential nodes explicitly retain the base.
-/
inductive Flow.Expression (α : Type u) : Type u where
  | atom : α → Flow.Expression α
  | nat : Nat → Flow.Expression α
  | int : Int → Flow.Expression α
  | symbol : String → Flow.Expression α
  | variadic :
      Flow.VariadicOp →
      List (Flow.Expression α) →
      Flow.Expression α
  | expBase :
      (base : Flow.Expression α) →
      (exponent : Flow.Expression α) →
      Flow.HeatResidue →
      Flow.Expression α
  | binaryAction :
      Flow.BinaryAction →
      Flow.Expression α →
      Flow.Expression α →
      Flow.HeatResidue →
      Flow.Expression α
  | attend :
      Flow.Tag →
      Flow.Expression α →
      Flow.Expression α
deriving Repr

/-- A compact token stream for Cambridge-style flow notation. -/
inductive Flow.Token (α : Type u) : Type u where
  | atom : α → Flow.Token α
  | nat : Nat → Flow.Token α
  | int : Int → Flow.Token α
  | symbol : String → Flow.Token α
  | beginVariadic : Flow.VariadicOp → Flow.Token α
  | beginExp : Flow.HeatResidue → Flow.Token α
  | beginAction :
      Flow.BinaryAction →
      Flow.HeatResidue →
      Flow.Token α
  | beginAttention : Flow.Tag → Flow.Token α
  | endNode : Flow.Token α
deriving Repr

mutual

/-- Serialize a symbolic flow tree into Cambridge-style variadic Polish tokens. -/
def Flow.Expression.toCambridgeTokens :
    Flow.Expression α → List (Flow.Token α)
  | .atom a => [.atom a]
  | .nat n => [.nat n]
  | .int z => [.int z]
  | .symbol s => [.symbol s]
  | .variadic op args =>
      [.beginVariadic op] ++
        Flow.Expression.toCambridgeTokensList args ++
        [.endNode]
  | .expBase base exponent residue =>
      [.beginExp residue] ++
        Flow.Expression.toCambridgeTokens base ++
        Flow.Expression.toCambridgeTokens exponent ++
        [.endNode]
  | .binaryAction action lhs rhs residue =>
      [.beginAction action residue] ++
        Flow.Expression.toCambridgeTokens lhs ++
        Flow.Expression.toCambridgeTokens rhs ++
        [.endNode]
  | .attend tag t =>
      [.beginAttention tag] ++
        Flow.Expression.toCambridgeTokens t ++
        [.endNode]

/-- Serialize a list of symbolic flow trees into Cambridge-style tokens. -/
def Flow.Expression.toCambridgeTokensList :
    List (Flow.Expression α) → List (Flow.Token α)
  | [] => []
  | t :: ts =>
      Flow.Expression.toCambridgeTokens t ++
        Flow.Expression.toCambridgeTokensList ts

end

/-- Wrap a tree in a sequence of attention tags. -/
def Flow.Expression.attendMany :
    List Flow.Tag →
    Flow.Expression α →
    Flow.Expression α
  | [], t => t
  | tag :: tags, t =>
      .attend tag (Flow.Expression.attendMany tags t)

/-- A pending binary action constructor. -/
def Flow.Expression.pendingBinaryAction
    (action : Flow.BinaryAction)
    (lhs rhs : Flow.Expression α)
    (attentions : List Flow.Tag) :
    Flow.Expression α :=
  .binaryAction action lhs rhs
    (Flow.HeatResidue.pending attentions)

/-- Extract the recorded base of an exponential node, if present. -/
def Flow.Expression.expBaseBase? :
    Flow.Expression α → Option (Flow.Expression α)
  | .expBase base _ _ => some base
  | _ => none

/-- Extract the residue status of a binary action node, if present. -/
def Flow.Expression.binaryActionStatus? :
    Flow.Expression α → Option Flow.ResidueStatus
  | .binaryAction _ _ _ residue => some residue.status
  | _ => none

/-- The base of an exponential is structurally recorded. -/
theorem Flow.Expression.expBase_records_base
    (base exponent : Flow.Expression α)
    (residue : Flow.HeatResidue) :
    Flow.Expression.expBaseBase?
      (.expBase base exponent residue) = some base :=
  rfl

/-- Pending binary actions expose pending heat-residue status. -/
theorem Flow.Expression.pendingBinaryAction_status
    (action : Flow.BinaryAction)
    (lhs rhs : Flow.Expression α)
    (attentions : List Flow.Tag) :
    Flow.Expression.binaryActionStatus?
      (Flow.Expression.pendingBinaryAction action lhs rhs attentions) =
        some .pending :=
  rfl

/-- Variadic product helper. -/
def Flow.Expression.product
    (args : List (Flow.Expression α)) :
    Flow.Expression α :=
  .variadic .product args

/-- Variadic sum helper. -/
def Flow.Expression.sum
    (args : List (Flow.Expression α)) :
    Flow.Expression α :=
  .variadic .sum args

/-- Variadic chain helper. -/
def Flow.Expression.chain
    (args : List (Flow.Expression α)) :
    Flow.Expression α :=
  .variadic .chain args

/-- Unary logarithm encoded as a variadic prefix node. -/
def Flow.Expression.log
    (arg : Flow.Expression α) :
    Flow.Expression α :=
  .variadic .log [arg]

/-- Unary cosine encoded as a variadic prefix node. -/
def Flow.Expression.cos
    (arg : Flow.Expression α) :
    Flow.Expression α :=
  .variadic .cos [arg]

end Surface
```
