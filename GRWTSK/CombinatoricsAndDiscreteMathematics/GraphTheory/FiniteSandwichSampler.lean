/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Upstream Mathlib and existing GRWTSK source retain their licenses. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteRankSamplerBoundary

set_option autoImplicit false
noncomputable section

/-!
# Relation-sandwich provenance for finite Gibbs sampling

The existing `Sandwich` distinguishes certified lower edges, actual middle
edges, and an upper candidate envelope. Only the specifically selected
relation is allowed to define nonterminal transition probabilities.

Sink completion remains explicit and does NOT promote its artificial stays
to certified edges, middle edges, or geometric return loops.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteRankSamplerBoundary
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler

universe u
variable {V : Type u} [Fintype V] [DecidableEq V]

namespace Sandwich

/-- Sample actual middle edges, completing only actual terminal states.
Upper-envelope candidate edges never enter merely by being candidates. -/
def middleSampler (S : Sandwich V) [DecidableRel S.middle]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j) : Sampler V :=
  withTerminalStays S.middle cost beta hbeta hcost

/-- Sample only lower certified edges, completing terminal states relative
to that strictly narrower relation. A middle edge need not be certified. -/
def certifiedSampler (S : Sandwich V) [DecidableRel S.lower]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j) : Sampler V :=
  withTerminalStays S.lower cost beta hbeta hcost

/-- Every lower certified edge is admitted as an actual middle transition. -/
theorem lower_edge_middleSampler_allowed
    (S : Sandwich V) [DecidableRel S.middle]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j)
    {i j : V} (h : S.lower i j) :
    (S.middleSampler cost beta hbeta hcost).allowed i j = true := by
  exact (withTerminalStays_allowed_iff S.middle cost beta hbeta hcost i j).2
    (Or.inl (S.lower_le_middle h))

/-- A positive-probability transition selected from the middle graph must
belong to the upper envelope unless it is an explicitly artificial sink stay. -/
theorem middleSampler_positive_upper_or_stay
    (S : Sandwich V) [DecidableRel S.middle]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j)
    {i j : V}
    (hp : 0 < (S.middleSampler cost beta hbeta hcost).probability i j) :
    S.upper i j ∨ (i = j ∧ ¬ ∃ k, S.middle i k) := by
  rcases positive_step_source_or_terminal S.middle cost beta hbeta hcost i j hp with
    hmiddle | hstay
  · exact Or.inl (S.middle_le_upper hmiddle)
  · exact Or.inr hstay

/-- Sampling with certified lower edges preserves their certificate status:
the only possible other positive step is an explicit terminal stay. -/
theorem certifiedSampler_positive_lower_or_stay
    (S : Sandwich V) [DecidableRel S.lower]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j)
    {i j : V}
    (hp : 0 < (S.certifiedSampler cost beta hbeta hcost).probability i j) :
    S.lower i j ∨ (i = j ∧ ¬ ∃ k, S.lower i k) := by
  exact positive_step_source_or_terminal S.lower cost beta hbeta hcost i j hp

/-- A certified positive transition is a middle edge or a marked stay,
never an unexplained promotion from the upper candidate envelope. -/
theorem certifiedSampler_positive_middle_or_stay
    (S : Sandwich V) [DecidableRel S.lower]
    (cost : V → V → ℝ) (beta : ℝ)
    (hbeta : 0 ≤ beta) (hcost : ∀ i j, 0 ≤ cost i j)
    {i j : V}
    (hp : 0 < (S.certifiedSampler cost beta hbeta hcost).probability i j) :
    S.middle i j ∨ (i = j ∧ ¬ ∃ k, S.lower i k) := by
  rcases S.certifiedSampler_positive_lower_or_stay cost beta hbeta hcost hp with
    hcert | hstay
  · exact Or.inl (S.lower_le_middle hcert)
  · exact Or.inr hstay

end Sandwich

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationSandwich
