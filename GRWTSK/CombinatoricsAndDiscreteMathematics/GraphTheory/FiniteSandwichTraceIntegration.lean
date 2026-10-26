/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Upstream Mathlib and existing GRWTSK source retain their licenses. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteSandwichSampler
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteSamplerTraceAdapter

set_option autoImplicit false
noncomputable section

/-!
# Certified graph-sandwich sampling to an exact finite trace

The existing relation sandwich selects one of two independently typed edge
sources: actual middle edges or proved lower edges. The completed sampler
preserves explicit artificial terminal stays. Its *actual normalized*
transition matrix is the sole source of the finite return/trace fixture.

An upper candidate envelope does not supply a positive transition or a
certified edge without a separate actual-middle/lower certificate.
The identity-descent algebraic trace fixture is not a geometric return.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteRankSamplerBoundary
open GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

universe u
variable {V : Type u} [Fintype V] [DecidableEq V]

namespace Sandwich

/-- The exact finite return fixture for sampling actual middle edges. -/
def middleReturnMatrix (S : Sandwich V) [DecidableRel S.middle]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j) : ReturnMatrix V :=
  (S.middleSampler cost beta hbeta hcost).asReturnMatrix

theorem middleReturnMatrix_operator
    (S : Sandwich V) [DecidableRel S.middle]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j) :
    (S.middleReturnMatrix cost beta hbeta hcost).operator =
      (S.middleSampler cost beta hbeta hcost).complexTransitionMatrix := by
  exact (S.middleSampler cost beta hbeta hcost).asReturnMatrix_operator

/-- A nonterminal transition not in the actual middle relation has exactly
zero transition matrix entry; upper candidate membership alone cannot help. -/
theorem middleTransition_zero_of_not_middle_of_ne
    (S : Sandwich V) [DecidableRel S.middle]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j)
    {i j : V} (hnot : ¬ S.middle i j) (hne : i ≠ j) :
    (S.middleSampler cost beta hbeta hcost).complexTransitionMatrix i j = 0 := by
  have hn : (S.middleSampler cost beta hbeta hcost).allowed i j ≠ true := by
    intro h
    rcases (withTerminalStays_allowed_iff
      S.middle cost beta hbeta hcost i j).mp h with hm | ⟨heq, _⟩
    · exact hnot hm
    · exact hne heq
  have hf : (S.middleSampler cost beta hbeta hcost).allowed i j = false := by
    cases hv : (S.middleSampler cost beta hbeta hcost).allowed i j
    · rfl
    · exact False.elim (hn hv)
  exact (S.middleSampler cost beta hbeta hcost).complexTransitionMatrix_forbidden i j hf

/-- The real part of a positive selected matrix entry certifies an upper edge
or the explicit terminal stay; it does not certify a lower edge. -/
theorem middleTransition_positive_upper_or_stay
    (S : Sandwich V) [DecidableRel S.middle]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j)
    {i j : V}
    (hp : 0 <
      ((S.middleSampler cost beta hbeta hcost).complexTransitionMatrix i j).re) :
    S.upper i j ∨ (i = j ∧ ¬ ∃ k, S.middle i k) := by
  have hprob :
      0 < (S.middleSampler cost beta hbeta hcost).probability i j := by
    simpa [Sampler.complexTransitionMatrix] using hp
  exact S.middleSampler_positive_upper_or_stay cost beta hbeta hcost hprob

/-- The actual middle-sampler source controls the full finite trace moment. -/
theorem middleReturnMatrix_trace
    (S : Sandwich V) [DecidableRel S.middle]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j) (n : ℕ) :
    closedWalkMoment
        (S.middleSampler cost beta hbeta hcost).complexTransitionMatrix n =
      Matrix.trace ((S.middleReturnMatrix cost beta hbeta hcost).operator ^ n) :=
  (S.middleSampler cost beta hbeta hcost).sampler_closedWalkMoment_eq_return_trace n

/-- The lower-certified sampler has its own independent source-preserving
finite return fixture; it is not automatically equal to the middle sampler. -/
def certifiedReturnMatrix (S : Sandwich V) [DecidableRel S.lower]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j) : ReturnMatrix V :=
  (S.certifiedSampler cost beta hbeta hcost).asReturnMatrix

theorem certifiedReturnMatrix_trace
    (S : Sandwich V) [DecidableRel S.lower]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j) (n : ℕ) :
    closedWalkMoment
        (S.certifiedSampler cost beta hbeta hcost).complexTransitionMatrix n =
      Matrix.trace ((S.certifiedReturnMatrix cost beta hbeta hcost).operator ^ n) :=
  (S.certifiedSampler cost beta hbeta hcost).sampler_closedWalkMoment_eq_return_trace n

end Sandwich

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
