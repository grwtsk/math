/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FunctionalAnalysis.ExactRootAndTransportContract
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AutomircronRootedPrimePhase

/-!
# Prime-dependent exact root and source-preserving phase transport

Local attribution: grwtsk contributors.

This is a measured energy ONLY on an auxiliary ZMod p phase in the genuine
prime-dependent Sigma Fiber state. No prime index, fiber payload, source
integer, Möbius sign, original causal Gram, or nonunit residue is erased.

The root is precisely phase zero; for a strictly positive scale kappa the
cost is zero on this root and positive on any nonzero finite-order phase.
Phase reversal is a source-preserving actual symmetry, with exact zero
energy change. This neither makes the signed arithmetic Gram positive
nor bounds the RH-facing endpoint sum.

The special integer n=1 remains in the separate canonical source typing,
not incorrectly inserted into a prime divisibility fiber.
SOURCE_PROOF_CANDIDATE: build, kernel and axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.AutomircronExactRootTransport

open GRWTSK.FunctionalAnalysis.ExactRootAndTransportContract
open GRWTSK.NumberTheory.AutomircronRootedPrimePhase

universe u

/-- An indexed family assembled from the actual dependent prime-phase carrier. -/
def primePhaseFamily
    (Fiber : PrimeIndex → Type u) (κ : ℝ) (hκ : 0 < κ) :
    RootFamily Unit where
  Carrier := fun _ => FramedSource Fiber
  Root := fun _ st => AtPhaseRoot st
  energy := fun _ st => phaseEnergy κ st
  energy_nonneg := by
    intro _ st
    by_cases hr : AtPhaseRoot st
    · have hz : phaseEnergy κ st = 0 := by
        have hp : st.phase = 0 := hr
        simp [phaseEnergy, GRWTSK.GroupTheoryAndGeneralizations.RootedFiniteTorsionEnergy.energy,
          GRWTSK.GroupTheoryAndGeneralizations.RootedFiniteTorsionEnergy.rootDefect,
          hp]
      rw [hz]
    · exact (phaseEnergy_pos_of_not_root κ hκ st hr).le
  energy_eq_zero_iff_root := by
    intro _ st
    constructor
    · intro hz
      by_contra hr
      exact (ne_of_gt (phaseEnergy_pos_of_not_root κ hκ st hr)) hz
    · intro hr
      have hp : st.phase = 0 := hr
      simp [phaseEnergy, GRWTSK.GroupTheoryAndGeneralizations.RootedFiniteTorsionEnergy.energy,
        GRWTSK.GroupTheoryAndGeneralizations.RootedFiniteTorsionEnergy.rootDefect,
        hp]

/-- The involutive flic is an exact source-preserving energy symmetry. -/
def primeFlicTransport
    (Fiber : PrimeIndex → Type u) (κ : ℝ) (hκ : 0 < κ) :
    (primePhaseFamily Fiber κ hκ).ExactTransport () () :=
  RootFamily.ExactTransport.of_energy_preserving
    (primePhaseFamily Fiber κ hκ) flic (by
      intro st
      exact phaseEnergy_flic κ st)

/-- The phase root is invariant under the genuine typed flic involution. -/
theorem primeFlicTransport_root
    (Fiber : PrimeIndex → Type u) (κ : ℝ) (hκ : 0 < κ)
    (st : FramedSource Fiber) :
    (primePhaseFamily Fiber κ hκ).Root ()
      ((primeFlicTransport Fiber κ hκ).toFun st) ↔
      (primePhaseFamily Fiber κ hκ).Root () st := by
  change AtPhaseRoot (flic st) ↔ AtPhaseRoot st
  change -(st.phase) = 0 ↔ st.phase = 0
  simp

/-- Zero auxiliary energy change is independent of the original signed Gram. -/
theorem primeFlic_preserves_original_signed_gram
    {Fiber : PrimeIndex → Type u}
    (A : GRWTSK.NumberTheory.AutomircronPrimeKernel.AutomircronKernel Fiber)
    (T : ℝ) (x y : FramedSource Fiber) :
    sourceGram A T (flic x) (flic y) = sourceGram A T x y :=
  sourceGram_flic_invariant A T x y

end GRWTSK.NumberTheory.AutomircronExactRootTransport
end
