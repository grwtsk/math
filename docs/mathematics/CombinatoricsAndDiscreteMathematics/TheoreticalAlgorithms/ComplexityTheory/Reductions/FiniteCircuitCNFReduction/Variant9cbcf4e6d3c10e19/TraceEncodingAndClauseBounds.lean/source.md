# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexityTheory.Reductions.FiniteCircuitCNFReduction.Variant9cbcf4e6d3c10e19.TraceEncodingAndClauseBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fcfc859995630dcb82e29fba64135e13770270ca` · SHA-256 `dc8946b25ffb09cd7dc2515f7baba3bd4d9fc27b2cc17b736731a8d843a82dae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
TraceEncoding and ClauseBounds
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9cbcf4e6d3c10e19ca1590633b0d1be6186be089e53ddf524b5750ae76e4e78a
Organized SHA-256: 127012393d2a1a0f352e6d6a97784daeb9c178281629d0d3267215337c1a5d71
PMD: 510.7.120.010.020 reductions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Every Gate case and exact clause list is preserved. encodeGate correctness is the full conditional equation iff, encodeFrom keeps its recursive wire-index convention. Circuit retains both gates and intrinsically bounded outputs; WellFormed is an explicit separate predicate, not synthesized by a constructor. Clause count is ≤4*gateCount+outputCount; no polynomial algorithm-family assumption is proved here. -/

import Mathlib.Data.Fintype.Pi
import Lean.Elab.Tactic.Omega

import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19.GateTseitinEquivalence

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

/-! ## Straight-line circuits -/

/-- Encode gates whose output wires are `next`, `next + 1`, ... -/
def encodeFrom : Nat → List Gate → CNF
  | _, [] => []
  | next, gate :: gates =>
      encodeGate next gate ++ encodeFrom (next + 1) gates

/-- Declarative trace predicate for a sequence of gates. -/
def ValidFrom (σ : Assignment) : Nat → List Gate → Prop
  | _, [] => True
  | next, gate :: gates =>
      σ next = Gate.eval σ gate ∧ ValidFrom σ (next + 1) gates

/-- Acyclicity condition for a gate sequence. -/
def WellFormedFrom : Nat → List Gate → Prop
  | _, [] => True
  | next, gate :: gates =>
      gate.InputsBelow next ∧ WellFormedFrom (next + 1) gates

/-- Correctness of the Tseitin translation for a complete gate sequence. -/
theorem encodeFrom_correct (σ : Assignment) (next : Nat) (gates : List Gate) :
    CNF.Holds σ (encodeFrom next gates) ↔ ValidFrom σ next gates := by
  induction gates generalizing next with
  | nil => simp [encodeFrom, ValidFrom]
  | cons gate gates ih =>
      simp [encodeFrom, ValidFrom, encodeGate_correct, ih]

/-- Exact gate-clause count. -/
theorem encodeFrom_length (next : Nat) (gates : List Gate) :
    (encodeFrom next gates).length = (gates.map Gate.clauseCount).sum := by
  induction gates generalizing next with
  | nil => simp [encodeFrom]
  | cons gate gates ih =>
      simp [encodeFrom, ih]

/-- The gate encoding has at most four clauses per gate. -/
theorem encodeFrom_length_le_four_mul (next : Nat) (gates : List Gate) :
    (encodeFrom next gates).length ≤ 4 * gates.length := by
  induction gates generalizing next with
  | nil => simp [encodeFrom]
  | cons gate gates ih =>
      simp only [encodeFrom, List.length_append, encodeGate_length,
        List.length_cons, Nat.mul_add]
      have hgate := Gate.clauseCount_le_four gate
      have hrest := ih (next := next + 1)
      omega

/--
A Boolean circuit with `n` inputs and `m` outputs.

The dependent output type ensures that every designated output refers to one of
`n + gates.length` allocated input/gate wires.
-/
structure Circuit (n m : Nat) where
  gates : List Gate
  outputs : Fin m → Fin (n + gates.length)

namespace Circuit

/-- All gate inputs refer strictly backwards, so the circuit is feed-forward. -/
def WellFormed (circuit : Circuit n m) : Prop :=
  WellFormedFrom n circuit.gates

/-- A total assignment is a valid execution trace of the circuit. -/
def ValidTrace (circuit : Circuit n m) (σ : Assignment) : Prop :=
  ValidFrom σ n circuit.gates

/-- Read the designated circuit output wires. -/
def readOutput (circuit : Circuit n m) (σ : Assignment) : Bits m :=
  fun i => σ (circuit.outputs i).val

/-- Unit clauses fixing every output bit to a target vector. -/
def targetCNF (circuit : Circuit n m) (target : Bits m) : CNF :=
  List.ofFn fun i => [Literal.forBit (circuit.outputs i).val (target i)]

/-- The output-unit clauses are exactly output equality. -/
theorem targetCNF_correct (circuit : Circuit n m) (σ : Assignment) (target : Bits m) :
    CNF.Holds σ (circuit.targetCNF target) ↔ circuit.readOutput σ = target := by
  unfold targetCNF
  rw [CNF.holds_ofFn]
  constructor
  · intro h
    funext i
    have hi := h i
    simpa [Clause.Holds, readOutput] using hi
  · intro h i
    have hi := congrFun h i
    simpa [Clause.Holds, readOutput] using hi

/-- The final SAT instance: gate constraints plus fixed target outputs. -/
def toCNF (circuit : Circuit n m) (target : Bits m) : CNF :=
  encodeFrom n circuit.gates ++ circuit.targetCNF target

/-- Semantic correctness of the complete circuit-to-SAT transformation. -/
theorem toCNF_correct (circuit : Circuit n m) (σ : Assignment) (target : Bits m) :
    CNF.Holds σ (circuit.toCNF target) ↔
      circuit.ValidTrace σ ∧ circuit.readOutput σ = target := by
  rw [toCNF, CNF.holds_append, encodeFrom_correct, targetCNF_correct]
  rfl

/-- The target contributes exactly one unit clause per output bit. -/
@[simp]
theorem targetCNF_length (circuit : Circuit n m) (target : Bits m) :
    (circuit.targetCNF target).length = m := by
  simp [targetCNF]

/-- Linear clause bound for the complete Tseitin instance. -/
theorem toCNF_length_le (circuit : Circuit n m) (target : Bits m) :
    (circuit.toCNF target).length ≤ 4 * circuit.gates.length + m := by
  rw [toCNF, List.length_append, targetCNF_length]
  exact Nat.add_le_add_right
    (encodeFrom_length_le_four_mul n circuit.gates) m

end Circuit

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19
```
