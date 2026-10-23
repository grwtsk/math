/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
Imported Mathlib and repository declarations retain their own source identity.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This is an exact finite return/quotient-channel proof candidate.
It is not imported by GRWTSK.lean until pinned Lean/kernel/axiom replay.
-/
import GRWTSK.NumberTheory.Farey.ReturnSpectralChannel
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

/-!
# Farey LR: a genuine mod-three angular channel and discrete spiral

The Farey return word [left,right] has ordered transfer
H = [[1,1],[1,2]]. Its real expanding projector is constructed in
ReturnSpectralChannel, with eigenvalue lambda = (3 + sqrt 5)/2 > 1.

Over ZMod 3, exactly the SAME elementary shear word satisfies H^2=-I,
H^4=I, H^2 != I. It acts on the concrete nonzero vector (1,0) by
a four-cycle. The corresponding phase observable takes the values
1, i, -1, -i and obeys phi(Hv)=i phi(v) on that finite orbit.
Thus the phase has arithmetic provenance, not an arbitrarily attached
angular assumption.

Combining the independent expanding and finite-quotient channels yields
a specified observable z_n=lambda^n i^n, with exact one-step complex
multiplier, modulus lambda^n, and four-return radial rescaling.

This is a DISCRETE spiral of a selected return word. It does not assert
a continuously traced curve, a global SL2(Z) one-dimensional character,
a Sturmian operator spectral theorem, an infinite-volume limit, a
Farey polynomial-root completeness statement, or an RH result.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.ReturnAngularChannel

open Matrix
open GRWTSK.NumberTheory.Farey.GroupSuperwalk
open GRWTSK.NumberTheory.Farey.GroupSpectralChannel
open GRWTSK.NumberTheory.Farey.ReturnSpectralChannel

/-- The same actual Farey turns, now acting in the finite mod-three quotient. -/
abbrev Mat3 := Matrix (Fin 2) (Fin 2) (ZMod 3)

def modThreeReturn : Mat3 :=
  (leftShear : Mat3) * (rightShear : Mat3)

/-- Explicitly source the finite quotient from the chronological return word,
not from a separately assigned cyclic permutation. -/
def modThreeWord : List Turn → Mat3
  | [] => 1
  | t :: ts => (turnShear t : Mat3) * modThreeWord ts

theorem modThreeWord_return :
    modThreeWord returnWord = modThreeReturn := by
  simp [modThreeWord, returnWord, modThreeReturn, turnShear]

/-- The exact finite arithmetic obstruction H^2=-I modulo three. -/
theorem modThreeReturn_square :
    modThreeReturn * modThreeReturn = -(1 : Mat3) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    decide

/-- The mod-three return has a genuine nontrivial fourth-order relation. -/
theorem modThreeReturn_fourth :
    modThreeReturn ^ 4 = 1 := by
  calc
    modThreeReturn ^ 4 = modThreeReturn ^ (2 + 2) := by norm_num
    _ = modThreeReturn ^ 2 * modThreeReturn ^ 2 := pow_add _ _ _
    _ = (-1 : Mat3) * (-1 : Mat3) := by
      simp only [pow_two, modThreeReturn_square]
    _ = 1 := by simp

/-- The return is not a two-cycle in the matrix quotient. -/
theorem modThreeReturn_square_ne_one :
    modThreeReturn ^ 2 ≠ 1 := by
  intro h
  have h00 := congrArg (fun M : Mat3 => M 0 0) h
  rw [pow_two, modThreeReturn_square] at h00
  exact (by decide : (-1 : ZMod 3) ≠ 1) h00

/-- A four-state orbit of a real Farey quotient action, in chronological order:
(1,0) -> (1,1) -> (2,0) -> (2,2) -> (1,0) modulo three. -/
def residueOrbit : Fin 4 → Fin 2 → ZMod 3 :=
  ![![1, 0], ![1, 1], ![2, 0], ![2, 2]]

/-- The cyclic successor on the quotient's selected orbit. -/
def orbitNext (j : Fin 4) : Fin 4 := j + 1

/-- Every step of the stated four-cycle is multiplication by the SAME Farey
return H reduced to ZMod 3, with no change of chronological order. -/
theorem modThreeReturn_orbit (j : Fin 4) :
    modThreeReturn.mulVec (residueOrbit j) =
      residueOrbit (orbitNext j) := by
  fin_cases j <;> funext i <;> fin_cases i <;>
    decide

/-- Every finite source-quotient return acts on the chosen four-state orbit
as the specified cyclic successor, not just at the first step. -/
theorem modThreeReturn_orbit_iterate (j : Fin 4) (n : ℕ) :
    ((fun v : Fin 2 → ZMod 3 => modThreeReturn.mulVec v)^[n])
        (residueOrbit j) =
      residueOrbit ((orbitNext)^[n] j) := by
  induction n with
  | zero => rfl
  | succ n ih =>
      rw [Function.iterate_succ_apply', ih, modThreeReturn_orbit,
        Function.iterate_succ_apply']

/-- The nonconstant complex readout of the four actual finite orbit states. -/
def orbitPhase : Fin 4 → ℂ :=
  ![1, Complex.I, -1, -Complex.I]

/-- An exact Koopman-eigenfunction relation for the selected mod-three orbit.
The eigenvalue is the native complex fourth root of unity i. -/
theorem orbitPhase_next (j : Fin 4) :
    orbitPhase (orbitNext j) = Complex.I * orbitPhase j := by
  fin_cases j <;>
    norm_num [orbitPhase, orbitNext, Fin.add_def, Complex.I_mul_I]

/-- The angular return channel is a genuine character of the selected
four-state cyclic orbit under repeated applications of its return. -/
theorem orbitPhase_iterate (j : Fin 4) (n : ℕ) :
    orbitPhase ((orbitNext)^[n] j) =
      Complex.I ^ n * orbitPhase j := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [Function.iterate_succ_apply', orbitPhase_next, ih, pow_succ]
      ring

/-- The source-linked phase from the initial quotient vector (1,0). -/
theorem initial_orbit_phase (n : ℕ) :
    orbitPhase ((orbitNext)^[n] (0 : Fin 4)) = Complex.I ^ n := by
  simpa [orbitPhase] using orbitPhase_iterate 0 n

/-- All three data sources agree at exactly n copies of the SAME
positive Farey return: its expanding real eigensector, its mod-three
vector action, and the four-state angular eigenfunction. -/
theorem simultaneous_return_channels (n : ℕ) :
    returnMatrix ^ n * expandingProjector =
      (expandingEigenvalue ^ n) • expandingProjector ∧
    ((fun v : Fin 2 → ZMod 3 => modThreeReturn.mulVec v)^[n])
        (residueOrbit 0) =
      residueOrbit ((orbitNext)^[n] (0 : Fin 4)) ∧
    orbitPhase ((orbitNext)^[n] (0 : Fin 4)) = Complex.I ^ n :=
  ⟨expandingProjector_iterate n,
    modThreeReturn_orbit_iterate 0 n,
    initial_orbit_phase n⟩

/-- Complex observation of real spectral amplitude and arithmetic angular
phase; the observation itself is a declared choice, not an automatic
identification of these two representations. -/
def discreteSpiral (n : ℕ) : ℂ :=
  ((expandingEigenvalue ^ n : ℝ) : ℂ) *
    orbitPhase ((orbitNext)^[n] (0 : Fin 4))

/-- The observation is an EXACT exponential spiral sampling, with multiplier
lambda*i, using the proven-in-source real expanding return and mod-three phase. -/
theorem discreteSpiral_formula (n : ℕ) :
    discreteSpiral n =
      (((expandingEigenvalue : ℂ) * Complex.I) ^ n) := by
  rw [discreteSpiral, initial_orbit_phase, mul_pow]
  simp

/-- Each actual return produces exactly one quarter-turn and one radial
expanding factor; no continuous-time interpolation is assumed. -/
theorem discreteSpiral_succ (n : ℕ) :
    discreteSpiral (n + 1) =
      ((expandingEigenvalue : ℂ) * Complex.I) * discreteSpiral n := by
  rw [discreteSpiral_formula, discreteSpiral_formula]
  rw [pow_succ]
  ring

/-- The expansion rate is exact at every finite return, not inferred from
a numerical graph or from an asymptotic Lyapunov estimate. -/
theorem discreteSpiral_norm (n : ℕ) :
    ‖discreteSpiral n‖ = expandingEigenvalue ^ n := by
  have hpos : 0 ≤ expandingEigenvalue :=
    le_of_lt (lt_trans zero_lt_one expandingEigenvalue_gt_one)
  rw [discreteSpiral_formula, norm_pow, norm_mul,
    Complex.norm_of_nonneg hpos]
  simp

/-- The arithmetic angular character has exact period four. -/
theorem imaginaryUnit_fourth : (Complex.I : ℂ) ^ 4 = 1 := by
  calc
    (Complex.I : ℂ) ^ 4 = ((Complex.I : ℂ) ^ 2) ^ 2 := by ring
    _ = 1 := by simp

/-- Four returns restore the angle but increase the radius by lambda^4. -/
theorem discreteSpiral_four_returns (n : ℕ) :
    discreteSpiral (n + 4) =
      ((expandingEigenvalue ^ 4 : ℝ) : ℂ) * discreteSpiral n := by
  simp only [discreteSpiral_formula, pow_add, mul_pow, imaginaryUnit_fourth]
  simp [mul_comm, mul_assoc]

/-- A strict expanding real channel prevents the observed spiral from
ever hitting zero. -/
theorem discreteSpiral_ne_zero (n : ℕ) : discreteSpiral n ≠ 0 := by
  have hp : 0 < expandingEigenvalue ^ n :=
    pow_pos (lt_trans zero_lt_one expandingEigenvalue_gt_one) _
  intro hzero
  have hnorm := discreteSpiral_norm n
  rw [hzero, norm_zero] at hnorm
  linarith

end GRWTSK.NumberTheory.Farey.ReturnAngularChannel
