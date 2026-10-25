# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19.InputAndCNFSemantics

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `434eedf84c2c50606d2db1a9771529806a814b53` · SHA-256 `7857f066cee133fb8bbaee443085442ce7857eb169ade0fe2813baef49679198`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Input and CNFSemantics
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


/- Assignment remains Nat→Bool; Bits n remains Fin n→Bool. Literal/Clause/CNF meanings retain Boolean equality, existential clause membership and universal clause membership, including empty-clause and empty-CNF conventions. Complete deriving and simp attributes are exact. -/

import Mathlib.Data.Fintype.Pi
import Lean.Elab.Tactic.Omega

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

/-- An `n`-bit vector, represented extensionally. -/
abbrev Bits (n : Nat) := Fin n → Bool

/-- A Boolean assignment over a countable variable namespace. -/
abbrev Assignment := Nat → Bool

/-- Read the first `n` SAT variables as an `n`-bit input. -/
def readInput {n : Nat} (σ : Assignment) : Bits n :=
  fun i => σ i.val

/-- Extend an `n`-bit input to a total SAT assignment. -/
def inputAssignment {n : Nat} (x : Bits n) : Assignment :=
  fun v => if h : v < n then x ⟨v, h⟩ else false

@[simp]
theorem readInput_inputAssignment {n : Nat} (x : Bits n) :
    readInput (inputAssignment x) = x := by
  funext i
  simp [readInput, inputAssignment, i.isLt]

/-! ## CNF syntax and semantics -/

/-- A positive or negative Boolean literal. -/
inductive Literal where
  | pos (var : Nat)
  | neg (var : Nat)
  deriving DecidableEq, Repr

namespace Literal

/-- Propositional semantics of a literal. -/
def Holds (σ : Assignment) : Literal → Prop
  | .pos v => σ v = true
  | .neg v => σ v = false

/-- A unit literal asserting that variable `v` equals bit `b`. -/
def forBit (v : Nat) : Bool → Literal
  | false => .neg v
  | true => .pos v

/-- A literal that is true exactly when variable `v` differs from bit `b`. -/
def blocking (v : Nat) : Bool → Literal
  | false => .pos v
  | true => .neg v

@[simp]
theorem holds_forBit (σ : Assignment) (v : Nat) (b : Bool) :
    Holds σ (forBit v b) ↔ σ v = b := by
  cases b <;> simp [forBit, Holds]

@[simp]
theorem holds_blocking (σ : Assignment) (v : Nat) (b : Bool) :
    Holds σ (blocking v b) ↔ σ v ≠ b := by
  cases b <;> cases h : σ v <;> simp [blocking, Holds, h]

end Literal

/-- A disjunction of literals. -/
abbrev Clause := List Literal

/-- A conjunction of clauses. -/
abbrev CNF := List Clause

namespace Clause

/-- A clause is true when at least one of its literals is true. -/
def Holds (σ : Assignment) (clause : Clause) : Prop :=
  ∃ literal ∈ clause, Literal.Holds σ literal

@[simp]
theorem holds_nil (σ : Assignment) : ¬ Holds σ [] := by
  simp [Holds]

@[simp]
theorem holds_cons (σ : Assignment) (literal : Literal) (clause : Clause) :
    Holds σ (literal :: clause) ↔ Literal.Holds σ literal ∨ Holds σ clause := by
  simp [Holds]

@[simp]
theorem holds_singleton (σ : Assignment) (literal : Literal) :
    Holds σ [literal] ↔ Literal.Holds σ literal := by
  simp [Holds]

end Clause

namespace CNF

/-- Every clause in the CNF is true. -/
def Holds (σ : Assignment) (formula : CNF) : Prop :=
  ∀ clause ∈ formula, Clause.Holds σ clause

/-- A CNF formula has at least one satisfying assignment. -/
def Satisfiable (formula : CNF) : Prop :=
  ∃ σ, Holds σ formula

@[simp]
theorem holds_nil (σ : Assignment) : Holds σ [] := by
  simp [Holds]

@[simp]
theorem holds_cons (σ : Assignment) (clause : Clause) (formula : CNF) :
    Holds σ (clause :: formula) ↔ Clause.Holds σ clause ∧ Holds σ formula := by
  simp [Holds]

@[simp]
theorem holds_append (σ : Assignment) (left right : CNF) :
    Holds σ (left ++ right) ↔ Holds σ left ∧ Holds σ right := by
  constructor
  · intro h
    constructor
    · intro clause hclause
      exact h clause (List.mem_append_left right hclause)
    · intro clause hclause
      exact h clause (List.mem_append_right left hclause)
  · rintro ⟨hleft, hright⟩ clause hclause
    rw [List.mem_append] at hclause
    exact hclause.elim (hleft clause) (hright clause)

/-- Pointwise characterization of a CNF generated by `List.ofFn`. -/
theorem holds_ofFn {n : Nat} (σ : Assignment) (f : Fin n → Clause) :
    Holds σ (List.ofFn f) ↔ ∀ i, Clause.Holds σ (f i) := by
  constructor
  · intro h i
    exact h (f i) (List.mem_ofFn.mpr ⟨i, rfl⟩)
  · intro h clause hmem
    obtain ⟨i, rfl⟩ := List.mem_ofFn.mp hmem
    exact h i

end CNF

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19
```
