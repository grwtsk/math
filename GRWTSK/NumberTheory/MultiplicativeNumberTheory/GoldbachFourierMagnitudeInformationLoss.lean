/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib finite characters retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachFullVectorError
import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Equal full Fourier magnitudes, different signed additive mass

Two artificial nonnegative vectors on all five sites have equal unit
energy and identical magnitudes at EVERY cyclic Fourier frequency, but
their signed reflection masses for target four are zero and one.
These are not prime vectors and not a Goldbach counterexample. The
fixture excludes recovering signed mass from Fourier magnitudes alone.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachFourierMagnitudeInformationLoss
open GoldbachReflectionSectors GoldbachFullVectorError

def delta (j : Fin 5) : Fin 5 → ℝ := fun i => if i = j then 1 else 0

def fourier (x : Fin 5 → ℝ) (k : ZMod 5) : ℂ :=
  ∑ i : Fin 5, (x i : ℂ) * (ZMod.toCircle (k * (i.val : ZMod 5)) : ℂ)

theorem delta_fourier (j : Fin 5) (k : ZMod 5) :
    fourier (delta j) k = (ZMod.toCircle (k * (j.val : ZMod 5)) : ℂ) := by
  simp [fourier, delta]

theorem all_fourier_magnitudes_equal (k : ZMod 5) :
    ‖fourier (delta (1 : Fin 5)) k‖ = 1 ∧
      ‖fourier (delta (2 : Fin 5)) k‖ = 1 := by
  rw [delta_fourier, delta_fourier]
  simp

theorem same_energy_different_signed_mass :
    energy 4 (delta (1 : Fin 5)) = 1 ∧ energy 4 (delta (2 : Fin 5)) = 1 ∧
      signedMass 4 (delta (1 : Fin 5)) = 0 ∧ signedMass 4 (delta (2 : Fin 5)) = 1 := by
  norm_num [energy, signedMass, pairing, reflection, delta, Fin.sum_univ_succ, Fin.rev]

end GRWTSK.NumberTheory.Primes.Checks.GoldbachFourierMagnitudeInformationLoss
