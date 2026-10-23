/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI; upstream authorship retained.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
These are bounded Koopman/factorization source proof candidates, not
Sturmian, PFR, Kakeya, Dixmier, Siegel-zero, or RH proofs.
-/
import GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction
import GRWTSK.Logic.InformationLoss.FactorizationFiber
import Mathlib.Tactic

/-!
# Source-bound projective Koopman eigenvalue and information-loss test

An observable invariant under a sign gauge cannot retain an eigenvalue
whose square differs from one if two return steps change the state only
by that sign. For the ACTUAL Farey LR mod-three selected orbit this
excludes i as a nonzero projectively descended Koopman eigenvalue.

In contrast, the square of the oriented quarter-turn phase is a
nonconstant sign-invariant readout of the chosen two projective states,
with return eigenvalue -1. This is a positive local repair of the exact
previous no-extension obstruction, not a global SL2(Z) character.

The parity quotient also exhibits the general decoder obstruction:
the phase 1,i,-1,-i does not factor through an observation retaining
only parity, but its squared phase does. This is the precise
information-fiber connection to broader reconstruction problems.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.ProjectiveKoopmanEigenvalue

open GRWTSK.NumberTheory.Farey.ReturnAngularChannel
open GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction
open GRWTSK.Logic.InformationLoss

/-- The abstract obstruction needs TWO exact returns at a chosen state,
invariance under the supplied gauge, an eigenfunction relation at the
two steps, and one nonzero observed value. No spectral assumptions. -/
theorem eigenvalue_sq_one_of_gauge_two_step
    {X : Type*} (T gauge : X → X) (f : X → ℂ) (omega : ℂ)
    (x : X) (hTwo : T (T x) = gauge x)
    (hGauge : f (gauge x) = f x)
    (hEigen0 : f (T x) = omega * f x)
    (hEigen1 : f (T (T x)) = omega * f (T x))
    (hNonzero : f x ≠ 0) :
    omega ^ 2 = 1 := by
  have hpow : omega ^ 2 * f x = f x := by
    calc
      omega ^ 2 * f x = omega * (omega * f x) := by ring
      _ = omega * f (T x) := by rw [hEigen0]
      _ = f (T (T x)) := hEigen1.symm
      _ = f (gauge x) := by rw [hTwo]
      _ = f x := hGauge
  have hm : (omega ^ 2 - 1) * f x = 0 := by
    calc
      (omega ^ 2 - 1) * f x = omega ^ 2 * f x - f x := by ring
      _ = 0 := sub_eq_zero.mpr hpow
  exact sub_eq_zero.mp ((mul_eq_zero.mp hm).resolve_right hNonzero)

/-- The authentic mod-three LR word has two-step sign monodromy on
the selected nonzero vector. This refers to the actual matrix action. -/
theorem selected_return_two_step_antipodal :
    modThreeReturn.mulVec
        (modThreeReturn.mulVec (residueOrbit (0 : Fin 4))) =
      -(residueOrbit (0 : Fin 4)) := by
  calc
    modThreeReturn.mulVec
        (modThreeReturn.mulVec (residueOrbit (0 : Fin 4))) =
        modThreeReturn.mulVec (residueOrbit (orbitNext 0)) := by
          rw [modThreeReturn_orbit]
    _ = residueOrbit (orbitNext (orbitNext 0)) :=
          modThreeReturn_orbit (orbitNext 0)
    _ = -(residueOrbit (0 : Fin 4)) := by
          simpa [orbitNext] using residueOrbit_two_eq_neg_zero

/-- For a NONZERO projective/sign-invariant observation at the source
vector, a genuine eigenvalue of the full mod-three matrix action has
square one. No invertibility of the observation is asserted. -/
theorem farey_projective_eigenvalue_sq_one
    (f : (Fin 2 → ZMod 3) → ℂ) (omega : ℂ)
    (hSign : SignGaugeInvariant f)
    (hEigen : ∀ v, f (modThreeReturn.mulVec v) = omega * f v)
    (hNonzero : f (residueOrbit (0 : Fin 4)) ≠ 0) :
    omega ^ 2 = 1 :=
  eigenvalue_sq_one_of_gauge_two_step
    (fun v => modThreeReturn.mulVec v) (fun v => -v)
    f omega (residueOrbit 0) selected_return_two_step_antipodal
    (hSign _) (hEigen _) (hEigen _) hNonzero

/-- The nonzero quarter-turn character cannot be a sign-invariant
eigenfunction of the entire mod-three matrix action. -/
theorem no_projective_quarter_turn_eigenfunction :
    ¬ ∃ f : (Fin 2 → ZMod 3) → ℂ,
      SignGaugeInvariant f ∧
      (∀ v, f (modThreeReturn.mulVec v) =
        Complex.I * f v) ∧
      f (residueOrbit (0 : Fin 4)) ≠ 0 := by
  rintro ⟨f, hSign, hEigen, hNonzero⟩
  have hsq : (Complex.I : ℂ) ^ 2 = 1 :=
    farey_projective_eigenvalue_sq_one f Complex.I
      hSign hEigen hNonzero
  norm_num [Complex.I_mul_I] at hsq

/-- A concrete sign-gauge-invariant full-vector readout. Only its
SELECTED orbit eigenlaw is claimed below; its eigenlaw need not hold
for the other nonzero projective orbit. -/
def projectiveParityReadout (v : Fin 2 → ZMod 3) : ℂ :=
  if v 1 = 0 then 1 else -1

theorem projectiveParityReadout_sign_invariant :
    SignGaugeInvariant projectiveParityReadout := by
  intro v
  simp [projectiveParityReadout]

/-- The original complex quarter-turn phase squared is precisely the
sign-invariant readout on the selected Farey orbit. -/
theorem projectiveParityReadout_on_orbit (j : Fin 4) :
    projectiveParityReadout (residueOrbit j) = (orbitPhase j) ^ 2 := by
  fin_cases j <;>
    norm_num [projectiveParityReadout, residueOrbit, orbitPhase,
      Complex.I_mul_I]
  all_goals decide

/-- The descended two-state phase has eigenvalue -1 under the ACTUAL
LR return, on the four explicitly realized nonzero vectors only. -/
theorem projectiveParityReadout_selected_eigen (j : Fin 4) :
    projectiveParityReadout
        (modThreeReturn.mulVec (residueOrbit j)) =
      (-1 : ℂ) * projectiveParityReadout (residueOrbit j) := by
  rw [modThreeReturn_orbit,
    projectiveParityReadout_on_orbit (orbitNext j),
    projectiveParityReadout_on_orbit j,
    orbitPhase_next, mul_pow]
  norm_num [Complex.I_mul_I]

/-- Parity identifies the two antipodal pairs in the specified
four-state cyclic orbit. This is an observation on labels, not a
construction of the entire projective space. -/
def parityProfile (j : Fin 4) : Fin 2 :=
  ⟨j.val % 2, Nat.mod_lt _ (by decide)⟩

theorem parityProfile_zero_eq_two :
    parityProfile (0 : Fin 4) = parityProfile (2 : Fin 4) := by
  decide

/-- The oriented phase cannot be reconstructed from just its
projective parity label: the fiber (0,2) retains opposite phases. -/
theorem orbitPhase_not_factorsThrough_parity :
    ¬ FactorsThrough parityProfile orbitPhase :=
  not_factorsThrough_of_collision parityProfile orbitPhase
    (0 : Fin 4) (2 : Fin 4) parityProfile_zero_eq_two
    (by change (1 : ℂ) ≠ -1; norm_num)

/-- A genuine decoder for the *squared* phase through the parity
quotient, repairing precisely the lost antipodal sign information. -/
def parityPhase : Fin 2 → ℂ := fun j => if j = 0 then 1 else -1

theorem squared_orbitPhase_factorsThrough_parity :
    FactorsThrough parityProfile (fun j : Fin 4 => (orbitPhase j) ^ 2) := by
  refine ⟨parityPhase, ?_⟩
  funext j
  fin_cases j <;>
    norm_num [parityProfile, parityPhase, orbitPhase,
      Function.comp_apply, Complex.I_mul_I]

end GRWTSK.NumberTheory.Farey.ProjectiveKoopmanEigenvalue
