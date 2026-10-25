# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19.GateTseitinEquivalence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e0866a9d1248e7cdad68db226a44b98952c7c49` · SHA-256 `d79c7d3e32d9db9dfc2fc5d6400e2ee072244373a613cc2b4a271cc3bf3417db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
GateTseitinEquivalence
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a
Organized SHA-256: 127012393d2a1a0f352e6d6a97784daeb9c178281629d0d3267215337c1a5d71
PMD: 510.0.020.010.050 satisfiability (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Every Gate case and exact clause list is preserved. encodeGate correctness is the full conditional equation iff, encodeFrom keeps its recursive wire-index convention. Circuit retains both gates and intrinsically bounded outputs; WellFormed is an explicit separate predicate, not synthesized by a constructor. Clause count is ≤4*gateCount+outputCount; no polynomial algorithm-family assumption is proved here. -/

import Mathlib.Data.Fintype.Pi
import Lean.Elab.Tactic.Omega

import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19.InputAndCNFSemantics

/-!
# Deterministic fixed-width computations reduce to SAT

This module formalizes two related statements.

1. **Finite-domain reduction.** Every function
   `Bits n → Bits m` has a CNF formula whose satisfying assignments are exactly
   the inputs mapped to a fixed target.  This construction enumerates the finite
   input domain, so its size may be exponential in `n`.

2. **Circuit/Tseitin reduction.** Given a verified feed-forward Boolean circuit,
   each gate is translated to a constant number of CNF clauses.  The resulting
   formula is satisfiable exactly when the represented algorithm has a preimage
   of the target.  The clause count is at most four times the number of gates,
   plus one unit clause per output bit.

Consequently, a family of deterministic algorithms having polynomial-size
Boolean circuits (in particular, a polynomial-time computation after a standard
bit-blasting/unrolling compilation) has a polynomial-size many-one reduction to
SAT.

For a bijection `H : Bits n → Bits n`, the target formula has exactly one input
projection.  It need not have a unique assignment over an ambient, unbounded
variable namespace, because variables not occurring in the formula are irrelevant.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19

/-! ## Exact Tseitin clauses for primitive gates -/

/-- Primitive gates used by the straight-line circuit language. -/
inductive Gate where
  | const (value : Bool)
  | copy (a : Nat)
  | neg (a : Nat)
  | conj (a b : Nat)
  | disj (a b : Nat)
  | xor (a b : Nat)
  deriving DecidableEq, Repr

namespace Gate

/-- Evaluate a gate from the values currently assigned to its input wires. -/
def eval (σ : Assignment) : Gate → Bool
  | .const value => value
  | .copy a => σ a
  | .neg a => !(σ a)
  | .conj a b => σ a && σ b
  | .disj a b => σ a || σ b
  | .xor a b => σ a != σ b

/-- Number of clauses emitted by the exact Tseitin encoding of a gate. -/
def clauseCount : Gate → Nat
  | .const _ => 1
  | .copy _ => 2
  | .neg _ => 2
  | .conj _ _ => 3
  | .disj _ _ => 3
  | .xor _ _ => 4

/-- Input-variable references occurring in a gate. -/
def inputs : Gate → List Nat
  | .const _ => []
  | .copy a => [a]
  | .neg a => [a]
  | .conj a b => [a, b]
  | .disj a b => [a, b]
  | .xor a b => [a, b]

/-- The gate only refers to wires allocated before `next`. -/
def InputsBelow (gate : Gate) (next : Nat) : Prop :=
  ∀ wire ∈ gate.inputs, wire < next

@[simp]
theorem clauseCount_le_four (gate : Gate) : gate.clauseCount ≤ 4 := by
  cases gate <;> simp [Gate.clauseCount]

end Gate

/--
Exact CNF clauses for the equation `out = Gate.eval σ gate`.

The encodings use implications in both directions, not merely an
one-directional equisatisfiable approximation.
-/
def encodeGate (out : Nat) : Gate → CNF
  | .const value =>
      [[Literal.forBit out value]]
  | .copy a =>
      [[.neg a, .pos out],
       [.pos a, .neg out]]
  | .neg a =>
      [[.pos a, .pos out],
       [.neg a, .neg out]]
  | .conj a b =>
      [[.neg a, .neg b, .pos out],
       [.pos a, .neg out],
       [.pos b, .neg out]]
  | .disj a b =>
      [[.pos a, .pos b, .neg out],
       [.neg a, .pos out],
       [.neg b, .pos out]]
  | .xor a b =>
      [[.neg a, .neg b, .neg out],
       [.pos a, .pos b, .neg out],
       [.pos a, .neg b, .pos out],
       [.neg a, .pos b, .pos out]]

@[simp]
theorem encodeGate_length (out : Nat) (gate : Gate) :
    (encodeGate out gate).length = gate.clauseCount := by
  cases gate <;> rfl

/-- Each primitive gate CNF is equivalent to its defining Boolean equation. -/
theorem encodeGate_correct (σ : Assignment) (out : Nat) (gate : Gate) :
    CNF.Holds σ (encodeGate out gate) ↔ σ out = Gate.eval σ gate := by
  cases gate with
  | const value =>
      cases value <;>
        cases hout : σ out <;>
        simp [encodeGate, Gate.eval, Clause.Holds, Literal.Holds,
          Literal.forBit, hout]
  | copy a =>
      cases ha : σ a <;>
        cases hout : σ out <;>
        simp [encodeGate, Gate.eval, Clause.Holds, Literal.Holds, ha, hout]
  | neg a =>
      cases ha : σ a <;>
        cases hout : σ out <;>
        simp [encodeGate, Gate.eval, Clause.Holds, Literal.Holds, ha, hout]
  | conj a b =>
      cases ha : σ a <;>
        cases hb : σ b <;>
        cases hout : σ out <;>
        simp [encodeGate, Gate.eval, Clause.Holds, Literal.Holds, ha, hb, hout]
  | disj a b =>
      cases ha : σ a <;>
        cases hb : σ b <;>
        cases hout : σ out <;>
        simp [encodeGate, Gate.eval, Clause.Holds, Literal.Holds, ha, hb, hout]
  | xor a b =>
      cases ha : σ a <;>
        cases hb : σ b <;>
        cases hout : σ out <;>
        simp [encodeGate, Gate.eval, Clause.Holds, Literal.Holds, ha, hb, hout]

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19
```
