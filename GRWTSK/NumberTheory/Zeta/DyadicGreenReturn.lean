/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Lean and Mathlib retain their original attribution and licenses.
Status: candidate proof source, NOT elaborated in the pinned environment.
-/
import GRWTSK.NumberTheory.Zeta.GreenMellinContinuation
import GRWTSK.NumberTheory.Zeta.LogDerivativeZeroExclusion

/-! # Conditional RH return from the unchanged dyadic Green energy

This supplies a candidate term for the ORIGINAL DyadicGreenReturnGoal.
The only research premise is AllDyadicEnergyBound. Neither an analytic-return
proposition, a zero-free region, a spectral model, nor RH is an argument.
All sources still await actual pinned compilation and transitive-axiom review.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Zeta.DyadicGreenReturn
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy
open GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications
open GRWTSK.NumberTheory.Zeta.GreenMellinContinuation
open GRWTSK.NumberTheory.Zeta.LogDerivativeZeroExclusion

/-- The displayed source bound implies the exact Mathlib RiemannHypothesis.
This does not provide a witness of that source bound. -/
theorem riemannHypothesis_of_energy (hE : AllDyadicEnergyBound) :
    _root_.RiemannHypothesis := by
  obtain ⟨hhol, hEuler⟩ := continuation_of_energy hE
  exact riemannHypothesis_of_extension hhol hEuler

/-- A proof-source inhabitant of the unchanged original goal definition. -/
theorem dyadicGreenReturn : DyadicGreenReturnGoal :=
  riemannHypothesis_of_energy

/-- A hypothetical nontrivial off-line zero would refute the source bound. -/
theorem not_energy_of_offline_zero (s : ℂ)
    (hz : riemannZeta s=0)
    (htriv : ¬∃ n : ℕ, s = -2*((n : ℂ)+1))
    (hs1 : s ≠ 1) (hoff : s.re ≠ 1/2) : ¬AllDyadicEnergyBound := by
  intro hE
  exact hoff (riemannHypothesis_of_energy hE s hz htriv hs1)

end GRWTSK.NumberTheory.Zeta.DyadicGreenReturn
