import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Notion
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Assumptions

/-!
# Exact observation and assumption-lifecycle replay targets

Natural-number observation codes have an explicit finite test inventory. Budget
coarsening is a theorem about that declared observation policy, not representation
congruence, semantic proof discovery, or a native memory-compression capability.
The independent assumption theorem consumes actual checked derivations and a
complete discharge inventory, never mutable completion metadata.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace CoordinationMemoryTargets

/-- Exact finite comparison agrees with its declared equivalence, and lowering the observation
budget coarsens both finite and extensional observation relations. It does not create syntax
equality. -/
def ObservationCoarseningObligation : Prop :=
  (∀ (notion : FiniteNotion ℕ ℕ ℕ) (budget x y : ℕ),
    notion.compare budget x y = true ↔ notion.Equivalent budget x y) ∧
  (∀ (notion : FiniteNotion ℕ ℕ ℕ) (small large x y : ℕ),
    small ≤ large → notion.Equivalent large x y → notion.Equivalent small x y) ∧
  (∀ (policy : ObservationPolicy ℕ ℕ ℕ) (small large x y : ℕ),
    small ≤ large → ObservationallyEquivalent policy large x y →
      ObservationallyEquivalent policy small x y)

theorem observation_coarsening_checked : ObservationCoarseningObligation :=
  ⟨FiniteNotion.compare_eq_true,
    fun _ _ _ _ _ bound equal ↦ FiniteNotion.equivalent_of_budget_le bound equal,
    fun _ _ _ _ _ bound equal ↦ observationallyEquivalent_of_budget_le bound equal⟩

open Assumptions

/-- Complete checked discharges yield the target only after dependent replay; the fixed
arithmetic fixtures also reject a wrong-scope discharge and a stale replay identity. -/
def AssumptionReplayObligation : Prop :=
  (∀ (language : JudgmentLanguage) (count : ℕ)
    (proposal : ConditionalProposal language count)
    (discharges : DischargeInventory proposal Finset.univ),
    RecheckedResult proposal Finset.univ discharges → proposal.target.Holds) ∧
  ¬Nonempty (DischargedAssumption (ArithmeticFixture.obligation 8 .square)) ∧
  ¬FreshReplay ArithmeticFixture.proposal Finset.univ ArithmeticFixture.discharges 12 ∧
  ((7 : ℕ) ^ 2 = 49 ∧ 0 < (7 : ℕ) ^ 2)

theorem assumption_replay_checked : AssumptionReplayObligation :=
  ⟨fun _ _ _ _ result ↦ result.closed_conclusion,
    ArithmeticFixture.wrong_scope_has_no_discharge, ArithmeticFixture.stale_replay_rejected,
    ArithmeticFixture.replayed_consequence⟩

end CoordinationMemoryTargets
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
