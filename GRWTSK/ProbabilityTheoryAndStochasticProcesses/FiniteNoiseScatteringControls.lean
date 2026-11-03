/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.ProbabilityTheoryAndStochasticProcesses.FiniteNoiseScatteringClasses

/-!
# Exact hostile controls for noise/scattering comparisons

Fair one-bit marginals do not imply joint randomness. Complete erasure can
make outputs identical without identifying inputs. Discarding loss and
conditioning can amplify distance, so the stochastic contraction theorem
cannot be reused for that nonlinear procedure. A nonempty independent,
fair-marginal model class has an exact half-unit error on the correlated
pair target; this is a genuine model obstruction, not an empty-class test.
These are finite exact examples, not universal scattering thresholds.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.ProbabilityAndMathematicalStatistics.FiniteNoiseScattering.Controls

/-- A fair shared bit copied into both coordinates. -/
def correlatedPair (b : Bool × Bool) : ℝ := if b.1 = b.2 then 1 / 2 else 0

def fairBit (_ : Bool) : ℝ := 1 / 2

def fairPair (_ : Bool × Bool) : ℝ := 1 / 4

theorem fairBit_isLaw : IsLaw fairBit := by
  constructor
  · intro b; norm_num [fairBit]
  · norm_num [fairBit, Fintype.sum_bool]

theorem correlatedPair_isLaw : IsLaw correlatedPair := by
  constructor
  · intro b; unfold correlatedPair; split_ifs <;> norm_num
  · norm_num [correlatedPair, Fintype.sum_prod_type, Fintype.sum_bool]

theorem correlatedPair_fair_marginals :
    firstMarginal correlatedPair = fairBit ∧ secondMarginal correlatedPair = fairBit := by
  constructor <;> funext b <;> cases b <;>
    norm_num [firstMarginal, secondMarginal, correlatedPair, fairBit, Fintype.sum_bool]

theorem correlatedPair_tv : tv correlatedPair fairPair = 1 / 2 := by
  norm_num [tv, correlatedPair, fairPair, Fintype.sum_prod_type, Fintype.sum_bool]

theorem correlatedPair_not_independent : ¬ IndependentCoordinates correlatedPair := by
  intro h
  have h00 := h false false
  norm_num [correlatedPair, firstMarginal, secondMarginal, Fintype.sum_bool] at h00

/-- This model class is nonempty: the fair product law is a member. -/
def IndependentFair (p : Bool × Bool → ℝ) : Prop :=
  IndependentCoordinates p ∧ firstMarginal p = fairBit ∧ secondMarginal p = fairBit

theorem fairPair_admissible : IndependentFair fairPair := by
  constructor
  · intro a b
    norm_num [fairPair, firstMarginal, secondMarginal, Fintype.sum_bool]
  · constructor <;> funext b <;>
      norm_num [fairPair, fairBit, firstMarginal, secondMarginal, Fintype.sum_bool]

theorem independent_fair_forces_product (p : Bool × Bool → ℝ) (hp : IndependentFair p) :
    p = fairPair := by
  funext b
  rcases b with ⟨a, b⟩
  rw [hp.1 a b, hp.2.1, hp.2.2]
  norm_num [fairBit, fairPair]

/-- Full-window impossibility, with fixed class and a strict tolerance. -/
theorem no_independent_fair_fit (epsilon : ℝ) (he : epsilon < 1 / 2) :
    ¬ ∃ p, IndependentFair p ∧ tv correlatedPair p ≤ epsilon := by
  rintro ⟨p, hp, herr⟩
  rw [independent_fair_forces_product p hp, correlatedPair_tv] at herr
  linarith

def pointBit (b : Bool) (x : Bool) : ℝ := if x = b then 1 else 0

theorem pointBit_isLaw (b : Bool) : IsLaw (pointBit b) := by
  constructor
  · intro x; unfold pointBit; split_ifs <;> norm_num
  · cases b <;> norm_num [pointBit, Fintype.sum_bool]

theorem erasure_hides_source_separation :
    tv (pointBit false) (pointBit true) = 1 ∧
    tv (push (reset fairBit fairBit_isLaw) (pointBit false))
      (push (reset fairBit fairBit_isLaw) (pointBit true)) = 0 := by
  constructor
  · norm_num [tv, pointBit, Fintype.sum_bool]
  · rw [push_reset _ (pointBit_isLaw false), push_reset _ (pointBit_isLaw true), tv_self]

/-- The two sources share a 3/4 loss mass; their retained outcomes disagree. -/
def rareObservation (bit : Bool) : Option Bool → ℝ
  | none => 3 / 4
  | some x => if x = bit then 1 / 4 else 0

theorem rareObservation_isLaw (bit : Bool) : IsLaw (rareObservation bit) := by
  constructor
  · intro o; cases o with
    | none => norm_num [rareObservation]
    | some b => unfold rareObservation; split_ifs <;> norm_num
  · cases bit <;> norm_num [rareObservation, Fintype.sum_option, Fintype.sum_bool]

/-- Conditioning on detection divides the retained masses by their 1/4
survival probability. It is NOT application of the same stochastic kernel. -/
theorem postselection_amplifies :
    tv (rareObservation false) (rareObservation true) = 1 / 4 ∧
    tv (fun b => rareObservation false (some b) / (1 / 4))
      (fun b => rareObservation true (some b) / (1 / 4)) = 1 := by
  constructor <;>
    norm_num [tv, rareObservation, Fintype.sum_option, Fintype.sum_bool]

end GRWTSK.ProbabilityAndMathematicalStatistics.FiniteNoiseScattering.Controls
