/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Existing Mathlib and GRWTSK definitions retain upstream licenses. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler

set_option autoImplicit false
noncomputable section

/-!
# Terminal vertices and finite admissible sampling

A finite strict rank-increasing directed graph has a terminal vertex.
Consequently its original edges cannot supply the everywhere-outgoing
probability rows required by `Sampler` on a nonempty state type.

The explicit sink-loop completion below gives a stochastic kernel, while
preserving a *proof-visible disjunction* between real source edges and
artificial terminal stays. Neither an artificial stay nor a completed
Markov path proves a geometric boundary return or null holonomy.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteRankSamplerBoundary

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler

universe u

variable {V : Type u} [Fintype V]

/-- A finite nonempty strict rank-increasing graph has a sink.
The proof uses an actual vertex of maximal declared rank. -/
theorem exists_terminal_of_strict_rank [Nonempty V]
    (rank : V → ℕ) (edge : EdgeRelation V)
    (hstep : ∀ i j, edge i j → rank i < rank j) :
    ∃ i : V, ∀ j : V, ¬ edge i j := by
  have hu : (Finset.univ : Finset V).Nonempty := Finset.univ_nonempty
  obtain ⟨i, _, hmax⟩ :=
    Finset.exists_max_image (Finset.univ : Finset V) rank hu
  refine ⟨i, ?_⟩
  intro j hj
  exact (not_lt_of_ge (hmax j (Finset.mem_univ j))) (hstep i j hj)

/-- Therefore no everywhere-outgoing sampler can use only edges of a finite
strictly increasing descent graph. This obstruction does not require a
particular algorithm or analytic spectral hypothesis. -/
theorem impossible_everywhere_outgoing_strict_rank [Nonempty V]
    (S : Sampler V) (rank : V → ℕ)
    (hstep : ∀ i j, S.allowed i j = true → rank i < rank j) :
    False := by
  obtain ⟨i, hi⟩ :=
    exists_terminal_of_strict_rank rank
      (fun i j => S.allowed i j = true) hstep
  obtain ⟨j, hj⟩ := S.outgoing i
  exact hi j hj

section Completion

variable [DecidableEq V]

/-- Complete a finite admissible relation only at actual sink states.
The added self-loop is explicitly distinguished from every original edge. -/
def withTerminalStays (edge : EdgeRelation V) [DecidableRel edge]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j) : Sampler V where
  allowed i j :=
    decide (edge i j ∨ (i = j ∧ ¬ ∃ k, edge i k))
  arcCost := cost
  beta := beta
  beta_nonneg := hbeta
  arcCost_nonneg := hcost
  outgoing := by
    intro i
    by_cases hex : ∃ j, edge i j
    · obtain ⟨j, hj⟩ := hex
      refine ⟨j, ?_⟩
      change decide (edge i j ∨ (i = j ∧ ¬ ∃ k, edge i k)) = true
      simp [hj]
    · refine ⟨i, ?_⟩
      change decide (edge i i ∨ (i = i ∧ ¬ ∃ k, edge i k)) = true
      simp [hex]

/-- Exactly two kinds of permitted completed transitions: genuine edges and
the specifically marked self-stays at vertices without outgoing source edges. -/
theorem withTerminalStays_allowed_iff
    (edge : EdgeRelation V) [DecidableRel edge]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j)
    (i j : V) :
    (withTerminalStays edge cost beta hbeta hcost).allowed i j = true ↔
      edge i j ∨ (i = j ∧ ¬ ∃ k, edge i k) := by
  simp [withTerminalStays]

/-- Every positive-probability step of this finite sampler is either
an original admitted edge or an explicitly artificial terminal stay. -/
theorem positive_step_source_or_terminal
    (edge : EdgeRelation V) [DecidableRel edge]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j)
    (i j : V)
    (hp : 0 < (withTerminalStays edge cost beta hbeta hcost).probability i j) :
    edge i j ∨ (i = j ∧ ¬ ∃ k, edge i k) := by
  exact (withTerminalStays_allowed_iff edge cost beta hbeta hcost i j).mp
    ((withTerminalStays edge cost beta hbeta hcost).allowed_of_probability_pos i j hp)

/-- An actual finite strict descent always forces at least one completed
terminal self-stay, but that stay is *not* an edge of the original graph. -/
theorem exists_artificial_terminal_stay [Nonempty V]
    (rank : V → ℕ) (edge : EdgeRelation V) [DecidableRel edge]
    (hstep : ∀ i j, edge i j → rank i < rank j)
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j) :
    ∃ i : V, ¬ edge i i ∧
      (withTerminalStays edge cost beta hbeta hcost).allowed i i = true := by
  obtain ⟨i, hi⟩ := exists_terminal_of_strict_rank rank edge hstep
  refine ⟨i, hi i, ?_⟩
  apply (withTerminalStays_allowed_iff edge cost beta hbeta hcost i i).2
  right
  refine ⟨rfl, ?_⟩
  intro hx
  obtain ⟨j, hj⟩ := hx
  exact hi j hj

end Completion

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteRankSamplerBoundary
