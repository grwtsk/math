/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierActionFrame
import GRWTSK.NumberTheory.Zeta.DyadicGreenReturn
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Equivalence of the original dyadic energy premise and the admissible action frame

For every positive octave X, the finite admissible Fourier action stages are
nonnegative, monotone, bounded by augmentedEnergy X, and converge exactly to
augmentedEnergy X.

Therefore the original all-scale arithmetic premise

  augmentedEnergy(dyadicScale j) <= C X^(-1+eta)

is equivalent to the apparently stronger statement that the same bound holds
uniformly for EVERY finite admissible action-frame stage.

This does not prove the bound. It rewrites the exact existing open arithmetic
supplier in the new typed witness language. Consequently the repository's
existing conditional RH return may consume either equivalent formulation.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ACTION_FRAME_BOUND_IFF_ORIGINAL_ENERGY_BOUND_SOURCE_WRITTEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicMellinConvergence

/-- The original all-scale arithmetic supplier expressed entirely through
finite source-faithful admissible action-frame stages. -/
def AllDyadicAdmissibleActionFrameBound : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ N : ℕ,
        fullGreenAdmissibleActionStage (dyadicScale j) N ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η)

/-- The original energy bound immediately controls every finite frame stage. -/
theorem allDyadicEnergyBound_to_actionFrameBound
    (hE : AllDyadicEnergyBound) :
    AllDyadicAdmissibleActionFrameBound := by
  intro η hη
  obtain ⟨C, hC, j₀, hbound⟩ := hE η hη
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj N
  exact
    (fullGreenAdmissibleActionStage_le_augmentedEnergy
      (dyadicScale_pos j) N).trans
      (hbound j hj)

/-- Conversely, uniform control of every finite action-frame stage controls
its exact monotone limit, namely augmentedEnergy. -/
theorem actionFrameBound_to_allDyadicEnergyBound
    (hF : AllDyadicAdmissibleActionFrameBound) :
    AllDyadicEnergyBound := by
  intro η hη
  obtain ⟨C, hC, j₀, hbound⟩ := hF η hη
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj
  have htend :
      Tendsto
        (fullGreenAdmissibleActionStage (dyadicScale j))
        atTop
        (𝓝 (augmentedEnergy (dyadicScale j))) :=
    fullGreenAdmissibleActionStage_tendsto (dyadicScale_pos j)
  exact le_of_tendsto htend
    (Eventually.of_forall (fun N => hbound j hj N))

/-- Exact logical equivalence of the two arithmetic supplier formulations. -/
theorem allDyadicAdmissibleActionFrameBound_iff_energy :
    AllDyadicAdmissibleActionFrameBound ↔ AllDyadicEnergyBound :=
  ⟨actionFrameBound_to_allDyadicEnergyBound,
    allDyadicEnergyBound_to_actionFrameBound⟩

/-- The already-existing conditional RH return, restated with the complete
admissible-action-frame premise. This does NOT construct that premise. -/
theorem riemannHypothesis_of_admissibleActionFrameBound
    (hF : AllDyadicAdmissibleActionFrameBound) :
    _root_.RiemannHypothesis :=
  GRWTSK.NumberTheory.Zeta.DyadicGreenReturn.riemannHypothesis_of_energy
    (actionFrameBound_to_allDyadicEnergyBound hF)

/-- Any actual off-line nontrivial zero refutes the frame-bound formulation
for exactly the same reason it refutes the original energy premise. -/
theorem not_actionFrameBound_of_offline_zero
    (s : ℂ)
    (hz : riemannZeta s = 0)
    (htriv : ¬ ∃ n : ℕ, s = -2 * ((n : ℂ) + 1))
    (hs1 : s ≠ 1)
    (hoff : s.re ≠ 1 / 2) :
    ¬ AllDyadicAdmissibleActionFrameBound := by
  intro hF
  exact hoff
    (riemannHypothesis_of_admissibleActionFrameBound hF
      s hz htriv hs1)

end GRWTSK.RiemannHypothesis
