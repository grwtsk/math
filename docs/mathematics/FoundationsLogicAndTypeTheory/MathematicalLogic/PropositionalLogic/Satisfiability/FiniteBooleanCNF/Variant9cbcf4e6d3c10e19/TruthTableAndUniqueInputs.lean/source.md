# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19.TruthTableAndUniqueInputs

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66edecbc6c9e2b786a280e22bbe2cb628c2a77fb` · SHA-256 `cd557cffdc692bbf48d44cd764cccf51c0d9b7dc4c70b98dc5287e3f9803a5d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
TruthTable and UniqueInputs
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


/- Truth-table CNF enumerates all finite inputs whose outputs differ, noncomputably and potentially exponentially. The last three bijective results assert unique input projections, NOT unique unrestricted Nat-indexed SAT assignments or internal-wire uniqueness. No general efficient inversion, P=NP, solver or operational pipeline is supplied. -/

import Mathlib.Data.Fintype.Pi
import Lean.Elab.Tactic.Omega

import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexityTheory.Reductions.FiniteCircuitCNFReduction.Variant9cbcf4e6d3c10e19.SuppliedImplementationReduction

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

/-! ## Every function on a fixed finite domain has a SAT encoding -/

/--
A clause false on exactly one `n`-bit input and true on every other input.
-/
def blockingClause {n : Nat} (blocked : Bits n) : Clause :=
  List.ofFn fun i => Literal.blocking i.val (blocked i)

/-- Correctness of a blocking clause. -/
theorem blockingClause_correct
    {n : Nat} (σ : Assignment) (blocked : Bits n) :
    Clause.Holds σ (blockingClause blocked) ↔ readInput σ ≠ blocked := by
  constructor
  · rintro ⟨literal, hmem, hliteral⟩ heq
    obtain ⟨i, rfl⟩ := List.mem_ofFn.mp hmem
    have hdiff : σ i.val ≠ blocked i :=
      (Literal.holds_blocking σ i.val (blocked i)).mp hliteral
    apply hdiff
    have hi := congrFun heq i
    simpa [readInput] using hi
  · intro hne
    have hexists : ∃ i, readInput σ i ≠ blocked i := by
      by_contra hnone
      apply hne
      funext i
      by_contra hi
      exact hnone ⟨i, hi⟩
    obtain ⟨i, hi⟩ := hexists
    refine ⟨Literal.blocking i.val (blocked i), ?_, ?_⟩
    · exact List.mem_ofFn.mpr ⟨i, rfl⟩
    · apply (Literal.holds_blocking σ i.val (blocked i)).mpr
      simpa [readInput] using hi

/--
Truth-table CNF for the predicate `algorithm input = target`.

For every non-preimage input, one blocking clause excludes exactly that input.
This proves finite representability for *every* fixed-width deterministic
function, but the construction can contain `2^n` clauses.
-/
noncomputable def truthTableCNF
    {n m : Nat}
    (algorithm : Bits n → Bits m)
    (target : Bits m) : CNF := by
  classical
  exact
    ((Finset.univ.filter fun input => algorithm input ≠ target).toList.map
      blockingClause)

/-- Exact semantics of the universal finite-domain encoding. -/
theorem truthTableCNF_correct
    {n m : Nat}
    (algorithm : Bits n → Bits m)
    (target : Bits m)
    (σ : Assignment) :
    CNF.Holds σ (truthTableCNF algorithm target) ↔
      algorithm (readInput σ) = target := by
  classical
  constructor
  · intro hformula
    by_contra hbad
    have hfilter :
        readInput σ ∈ Finset.univ.filter
          (fun input => algorithm input ≠ target) := by
      simp [hbad]
    have hlist :
        readInput σ ∈
          (Finset.univ.filter
            (fun input => algorithm input ≠ target)).toList := by
      simpa using hfilter
    have hclause :
        blockingClause (n := n) (readInput σ) ∈
          truthTableCNF algorithm target := by
      unfold truthTableCNF
      exact List.mem_map.mpr ⟨readInput σ, hlist, rfl⟩
    have hblocked := hformula _ hclause
    exact (blockingClause_correct σ (readInput σ)).mp hblocked rfl
  · intro hgood clause hclause
    unfold truthTableCNF at hclause
    obtain ⟨blocked, hblockedList, rfl⟩ := List.mem_map.mp hclause
    apply (blockingClause_correct σ blocked).mpr
    intro heq
    have hblockedFilter :
        blocked ∈ Finset.univ.filter
          (fun input => algorithm input ≠ target) := by
      simpa using hblockedList
    have hneq : algorithm blocked ≠ target :=
      (Finset.mem_filter.mp hblockedFilter).2
    apply hneq
    rw [← heq]
    exact hgood

/--
Every deterministic function on a fixed finite bit-vector domain reduces
extensionally to SAT.

This theorem makes no polynomial-size claim; use the circuit theorem above for
an efficient reduction.
-/
theorem every_fixed_width_function_reduces_to_sat
    {n m : Nat}
    (algorithm : Bits n → Bits m)
    (target : Bits m) :
    CNF.Satisfiable (truthTableCNF algorithm target) ↔
      ∃ input, algorithm input = target := by
  constructor
  · rintro ⟨σ, hσ⟩
    exact ⟨readInput σ,
      (truthTableCNF_correct algorithm target σ).mp hσ⟩
  · rintro ⟨input, hinput⟩
    refine ⟨inputAssignment input, ?_⟩
    apply (truthTableCNF_correct algorithm target
      (inputAssignment input)).mpr
    simpa using hinput

/-! ## Bijective functions have one SAT input projection -/

/-- A bijection has exactly one preimage for every target. -/
theorem bijective_has_unique_preimage
    {n : Nat}
    (hash : Bits n → Bits n)
    (hbijective : Function.Bijective hash)
    (target : Bits n) :
    ∃! input, hash input = target := by
  obtain ⟨input, hinput⟩ := hbijective.2 target
  refine ⟨input, hinput, ?_⟩
  intro other hother
  exact hbijective.1 (hother.trans hinput.symm)

/--
For a verified circuit implementing a bijection, the target SAT formula has a
unique projection onto the input variables.
-/
theorem bijective_circuit_has_unique_sat_input
    {n : Nat}
    (circuit : Circuit n n)
    (hash : Bits n → Bits n)
    (hcorrect : circuit.Implements hash)
    (hbijective : Function.Bijective hash)
    (target : Bits n) :
    ∃! input, circuit.InputWitness target input := by
  obtain ⟨input, hinput, hunique⟩ :=
    bijective_has_unique_preimage hash hbijective target
  refine ⟨input,
    (circuit.inputWitness_iff_preimage hash hcorrect target input).mpr hinput,
    ?_⟩
  intro other hother
  apply hunique other
  exact (circuit.inputWitness_iff_preimage
    hash hcorrect target other).mp hother

/-- The same unique-input result for the universal fixed-domain encoding. -/
theorem bijective_truthTable_has_unique_sat_input
    {n : Nat}
    (hash : Bits n → Bits n)
    (hbijective : Function.Bijective hash)
    (target : Bits n) :
    ∃! input : Bits n,
      ∃ σ, CNF.Holds σ (truthTableCNF hash target) ∧
        readInput (n := n) σ = input := by
  obtain ⟨input, hinput, hunique⟩ :=
    bijective_has_unique_preimage hash hbijective target
  have hsatisfiable : CNF.Satisfiable (truthTableCNF hash target) :=
    (every_fixed_width_function_reduces_to_sat hash target).mpr
      ⟨input, hinput⟩
  obtain ⟨σ, hσ⟩ := hsatisfiable
  refine ⟨readInput σ, ⟨σ, hσ, rfl⟩, ?_⟩
  intro other hother
  obtain ⟨τ, hτ, hread⟩ := hother
  have hσpre : hash (readInput σ) = target :=
    (truthTableCNF_correct hash target σ).mp hσ
  have hτpre : hash (readInput τ) = target :=
    (truthTableCNF_correct hash target τ).mp hτ
  calc
    other = readInput τ := hread.symm
    _ = readInput σ := hbijective.1 (hτpre.trans hσpre.symm)

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19
```
