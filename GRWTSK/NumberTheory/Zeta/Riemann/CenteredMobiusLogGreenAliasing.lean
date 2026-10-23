/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidueAbelBound
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.RiemannHypothesis

/-- Continuum oscillatory phase integral. -/
def greenContinuumPhaseIntegral (k : ℤ) : ℂ :=
  ∫ t in (0 : ℝ)..1,
    fourier (-k) (t : AddCircle (1 : ℝ)) / (1 + (t : ℂ))

/-- Constant continuum integral. -/
def greenContinuumConstantIntegral : ℂ :=
  ∫ t in (0 : ℝ)..1, (1 : ℂ) / (1 + (t : ℂ))

/-- Exact aliasing: when X divides k, every mesh Fourier phase is one. -/
theorem fourier_mesh_eq_one_of_aliasing
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (hk : GreenMeshAliasing X k) (j : ℕ) :
    fourier (-k) (greenRightMeshPoint X j : AddCircle (1 : ℝ)) = 1 := by
  obtain ⟨q, rfl⟩ := hk
  rw [fourier_mesh_eq_phase_pow hX]
  have hphase : greenMeshPhase X ((X : ℤ) * q) = 1 := by
    unfold greenMeshPhase
    have hX0 : (X : ℂ) ≠ 0 := by exact_mod_cast (by omega : X ≠ 0)
    field_simp
    rw [Complex.exp_int_mul_two_pi_mul_I]
    simp
  rw [hphase]
  simp

/-- At an exact alias, the discrete phase sum equals the discrete constant
harmonic sum. -/
theorem greenDiscretePhaseRiemannSum_eq_constant_of_aliasing
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (hk : GreenMeshAliasing X k) :
    greenDiscretePhaseRiemannSum X k =
      ∑ j ∈ Finset.Icc 1 X,
        ((1 / (X : ℝ) : ℝ) : ℂ) *
          ((1 : ℂ) / (1 + (greenRightMeshPoint X j : ℂ))) := by
  unfold greenDiscretePhaseRiemannSum
  apply Finset.sum_congr rfl
  intro j _
  rw [fourier_mesh_eq_one_of_aliasing hX hk j]

/-- The aliasing phase residual minus constant residual is purely the
difference of the two continuum integrals; the discrete mesh terms cancel
exactly. -/
theorem phaseResidual_sub_constant_of_aliasing
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (hk : GreenMeshAliasing X k) :
    greenPhaseHarmonicResidual X k -
        greenConstantHarmonicResidual X =
      greenContinuumPhaseIntegral k -
        greenContinuumConstantIntegral := by
  unfold greenPhaseHarmonicResidual greenConstantHarmonicResidual
    greenContinuumPhaseIntegral greenContinuumConstantIntegral
  rw [greenDiscretePhaseRiemannSum_eq_constant_of_aliasing hX hk]
  ring

/-- Consequently the exact centering residual at a nonzero alias contains no
discrete quadrature error at all after phase-minus-constant cancellation. -/
theorem greenCenteringResidual_aliasing_exact
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk0 : k ≠ 0)
    (hk : GreenMeshAliasing X k) :
    greenCenteringResidual X k =
      (1 : ℂ) / (-2 * Real.pi * Complex.I * k) *
        (greenContinuumPhaseIntegral k -
          greenContinuumConstantIntegral) := by
  rw [greenCenteringResidual_eq_phase_sub_constant hX hk0,
    phaseResidual_sub_constant_of_aliasing hX hk]

end GRWTSK.RiemannHypothesis
