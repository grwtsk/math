/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI. Existing Mathlib and GRWTSK attribution retained.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This is an exact finite Farey positive-word obstruction and replacement
interface, not a nonperiodic spectral or Sarnak/Mobius theorem.
-/
import GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel
import Mathlib.Tactic

/-!
# A return-only scalar spectral channel need not extend letter by letter

The source-defined Farey positive alphabet has elementary shears
  L=[[1,0],[1,1]] and R=[[1,1],[0,1]],
and the source positive chronological word [left,right] has
matrix product H=LR. Over F3, the already-authored quadratic projective
observable f satisfies f(Hv)=-f(v) for ALL vectors v.

This module proves that this scalar eigenrelation CANNOT be extended
to the individual L generator, much less to a pair of turnwise scalar
eigenrelations. The obstruction is certified by a TRUE source
L-orbit v0=(1,0) -> v1=(1,1) -> v2=(1,2) -> v0, while
H(v0)=v1. Any putative one-step scalar a must equal -1 from
H(v0)=L(v0); the L three-cycle forces a^3=1, contradiction.

The correct replacement is a full finite matrix-state channel
wordState(w,v)=(modThreeWord w).mulVec v and its sign-invariant
readout. We prove word concatenation in the SOURCE matrix order:
  state(u++v,x) = state(u,state(v,x)).
A chronological right-multiplying Farey FRAME word therefore acts
right-block-first on a fixed COLUMN vector. No chronological
left-to-right column-state interpretation or universal letterwise
scalar phase is silently asserted.

A nonperiodic schedule of left/right letters may be fed to this exact
finite-state interface, but no dynamical entropy, irrational frequency,
nonzero Lyapunov exponent, continuous winding or spectral limit follows.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction

open Matrix
open GRWTSK.NumberTheory.Farey.GroupSuperwalk
open GRWTSK.NumberTheory.Farey.ReturnAngularChannel
open GRWTSK.NumberTheory.Farey.ReturnSpectralChannel
open GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel

/-- The actual left-generator action of the same Farey matrix source
on a column in the finite F3 representation. -/
def leftStep (v : Vec3) : Vec3 := (leftShear : Mat3).mulVec v

/-- The corresponding individual right-generator action. -/
def rightStep (v : Vec3) : Vec3 := (rightShear : Mat3).mulVec v

/-- The third vector reached by repeated L from the source (1,0). -/
def leftThird : Vec3 := ![1, 2]

theorem leftStep_zero :
    leftStep (residueOrbit (0 : Fin 4)) =
      residueOrbit (1 : Fin 4) := by
  funext i
  fin_cases i <;> decide

theorem leftStep_one :
    leftStep (residueOrbit (1 : Fin 4)) = leftThird := by
  funext i
  fin_cases i <;> decide

theorem leftStep_two :
    leftStep leftThird = residueOrbit (0 : Fin 4) := by
  funext i
  fin_cases i <;> decide

/-- The authentic LR return and the L generator happen to agree
at (1,0), since the R generator fixes that one vector. -/
theorem returnStep_zero :
    modThreeReturn.mulVec (residueOrbit (0 : Fin 4)) =
      residueOrbit (1 : Fin 4) := by
  simpa [orbitNext] using modThreeReturn_orbit (0 : Fin 4)

/-- An arbitrary complex scalar observable cannot both have the
return eigenvalue -1 at this actual source vector and be an L
eigenfunction at EVERY vector, unless it vanishes at the source.

Notice that the putative L multiplier a is unrestricted: no
root-of-unity or character axiom is assumed. -/
theorem no_scalar_left_extension_of_negative_return
    (f : Vec3 → ℂ) (a : ℂ)
    (hLeft : ∀ v, f (leftStep v) = a * f v)
    (hReturn :
      f (modThreeReturn.mulVec (residueOrbit (0 : Fin 4))) =
        -f (residueOrbit (0 : Fin 4)))
    (hNonzero : f (residueOrbit (0 : Fin 4)) ≠ 0) : False := by
  have h0 : f (residueOrbit (1 : Fin 4)) =
      a * f (residueOrbit (0 : Fin 4)) := by
    simpa only [leftStep_zero] using hLeft (residueOrbit 0)
  have h1 : f leftThird =
      a * f (residueOrbit (1 : Fin 4)) := by
    simpa only [leftStep_one] using hLeft (residueOrbit 1)
  have h2 : f (residueOrbit (0 : Fin 4)) = a * f leftThird := by
    simpa only [leftStep_two] using hLeft leftThird
  have hH : f (residueOrbit (1 : Fin 4)) =
      -f (residueOrbit (0 : Fin 4)) := by
    simpa only [returnStep_zero] using hReturn
  have hmul : (a + 1) * f (residueOrbit (0 : Fin 4)) = 0 := by
    calc
      (a + 1) * f (residueOrbit (0 : Fin 4)) =
          a * f (residueOrbit (0 : Fin 4)) +
            f (residueOrbit (0 : Fin 4)) := by ring
      _ = f (residueOrbit (1 : Fin 4)) +
            f (residueOrbit (0 : Fin 4)) := by rw [h0]
      _ = 0 := by rw [hH]; ring
  have ha : a = -1 := by
    have hh : a + 1 = 0 :=
      (mul_eq_zero.mp hmul).resolve_right hNonzero
    linear_combination hh
  have hcycle : f (residueOrbit (0 : Fin 4)) =
      a ^ 3 * f (residueOrbit (0 : Fin 4)) := by
    calc
      f (residueOrbit (0 : Fin 4)) = a * f leftThird := h2
      _ = a * (a * f (residueOrbit (1 : Fin 4))) := by rw [h1]
      _ = a * (a * (a * f (residueOrbit (0 : Fin 4)))) := by rw [h0]
      _ = a ^ 3 * f (residueOrbit (0 : Fin 4)) := by ring
  have hneg : f (residueOrbit (0 : Fin 4)) =
      -(f (residueOrbit (0 : Fin 4))) := by
    simpa only [ha, show (-1 : ℂ) ^ 3 = -1 by norm_num, neg_one_mul] using hcycle
  have hzero : f (residueOrbit (0 : Fin 4)) = 0 := by
    have htwice : (2 : ℂ) * f (residueOrbit (0 : Fin 4)) = 0 := by
      calc
        (2 : ℂ) * f (residueOrbit (0 : Fin 4)) =
            f (residueOrbit (0 : Fin 4)) +
              f (residueOrbit (0 : Fin 4)) := by ring
        _ = 0 := by linear_combination hneg
    exact (mul_eq_zero.mp htwice).resolve_left (by norm_num)
  exact hNonzero hzero

/-- The nonzero SOURCE quadratic H=-1 channel has no full-space
scalar eigenrelation for the individual L generator. -/
theorem quadraticReadout_no_scalar_left :
    ¬ ∃ a : ℂ,
      ∀ v : Vec3,
        projectiveQuadraticReadout (leftStep v) =
          a * projectiveQuadraticReadout v := by
  rintro ⟨a, ha⟩
  exact no_scalar_left_extension_of_negative_return
    projectiveQuadraticReadout a ha
    (by simpa only [neg_one_mul] using
      projectiveQuadraticReadout_return (residueOrbit 0))
    (by rw [projectiveQuadraticReadout_nonzero]; norm_num)

/-- Therefore this exact selected-return eigenfunction cannot be
represented by a pair of LETTERWISE scalar factors over the full
positive Farey alphabet. The right factor is explicit but the
stronger left obstruction alone already contradicts the claim. -/
theorem quadraticReadout_no_turnwise_scalars :
    ¬ ∃ a b : ℂ,
      (∀ v : Vec3,
        projectiveQuadraticReadout (leftStep v) =
          a * projectiveQuadraticReadout v) ∧
      (∀ v : Vec3,
        projectiveQuadraticReadout (rightStep v) =
          b * projectiveQuadraticReadout v) := by
  rintro ⟨a, b, hLeft, _hRight⟩
  exact quadraticReadout_no_scalar_left ⟨a, hLeft⟩

/-- The genuine finite-word matrix product is taken from the previous
Farey angular module, not selected independently per example. -/
theorem modThreeWord_append (u v : List Turn) :
    modThreeWord (u ++ v) = modThreeWord u * modThreeWord v := by
  induction u with
  | nil => simp [modThreeWord]
  | cons t ts ih => simp [modThreeWord, ih, Matrix.mul_assoc]

/-- A finite COLUMN state observed through the true right-product word. -/
def wordState (w : List Turn) (v : Vec3) : Vec3 :=
  (modThreeWord w).mulVec v

/-- Explicit concatenation orientation: the later RIGHT block v acts
first on a fixed column. Do not conflate this with chronological
left-to-right state updates at the Farey frame. -/
theorem wordState_append (u v : List Turn) (x : Vec3) :
    wordState (u ++ v) x = wordState u (wordState v x) := by
  unfold wordState
  rw [modThreeWord_append]
  funext i
  fin_cases i <;>
    simp [Matrix.mulVec, dotProduct, Matrix.mul_apply,
      Fin.sum_univ_two] <;> ring

/-- Every finite F3 linear matrix preserves antipodal sign. -/
theorem anyMatrix_mulVec_neg (M : Mat3) (x : Vec3) :
    M.mulVec (-x) = -(M.mulVec x) := by
  funext i
  fin_cases i <;>
    simp [Matrix.mulVec, dotProduct, Fin.sum_univ_two]

/-- Matrix-state observation, not a falsely asserted 1D
per-letter scalar character. -/
def wordSignal (w : List Turn) (x : Vec3) : ℂ :=
  projectiveQuadraticReadout (wordState w x)

/-- An exact state/observation concatenation law for arbitrary positive
Farey words, with all matrix order conventions frozen. -/
theorem wordSignal_append (u v : List Turn) (x : Vec3) :
    wordSignal (u ++ v) x =
      wordSignal u (wordState v x) := by
  simp only [wordSignal, wordState_append]

/-- The full arbitrary-word observation descends under the central
sign gauge, even though it is not a per-letter scalar eigenchannel. -/
theorem wordSignal_sign_invariant (w : List Turn) (x : Vec3) :
    wordSignal w (-x) = wordSignal w x := by
  unfold wordSignal wordState
  rw [anyMatrix_mulVec_neg, projectiveQuadraticReadout_sign_invariant]

/-- The source-selected two-turn word remains an exact -1 scalar
return. This positive restricted conclusion coexists with the
global turnwise-scalar obstruction. -/
theorem wordSignal_selected_return (x : Vec3) :
    wordSignal returnWord x = (-1 : ℂ) * projectiveQuadraticReadout x := by
  unfold wordSignal wordState
  rw [modThreeWord_return]
  exact projectiveQuadraticReadout_return x

end GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction
