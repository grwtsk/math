/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical sources retain upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceResidualOperatorNorm

/-!
# Explicit normalized separation for the actual Wilson second value

On the actual principal hyperplane the rank-one residual equals the original
invariant operator. Its norm bounds every unit-ball Rayleigh value there, and
therefore the actual second variational value. With c=exp(-12 beta L^3),
lambda1/lambda0 <= 1-c lambda0 and 0<c lambda0<=1-lambda1/lambda0.
No separation premise, numerical matrix enclosure or free gap is supplied.
The constant depends on volume and coupling; it is not a regulator-uniform
physical mass gap or a continuum construction. SOURCE_PROOF_CANDIDATE;
compile, fresh replay, transitive axiom and expected-interface NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceNormalizedSeparation
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSliceResidualOperatorNorm
open GRWTSK.Analysis.InnerProductSpace.FiniteGramCompression
open GRWTSK.Analysis.InnerProductSpace.VariationalSpectralBracket
variable (L : ℕ) [NeZero L]

theorem residualOperator_on_hyperplane (β : ℝ) (hβ : 0 < β)
    (f x : gaugeInvariantSpace L) (hx : inner ℝ f x = 0) :
    residualOperator L β hβ f x = invariantOperator L β hβ.le x := by
  simp only [residualOperator, ContinuousLinearMap.sub_apply, ContinuousLinearMap.smul_apply,
    rankOne_apply, hx, zero_smul, smul_zero, sub_zero]

/-- Unit-ball control includes the zero test vector and uses the actual second infimum. -/
theorem lambda1_le_residualRate (β : ℝ) (hβ : 0 < β) :
    lambda1 L β hβ.le ≤ residualRate L β hβ := by
  obtain ⟨f, hn, he, hf⟩ := exists_unit_principal_strictly_positive L β hβ
  have hnonneg : ∀ᵐ b ∂GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar.sliceHaar L,
      0 ≤ (f : GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative.RealSliceL2 L) b :=
    hf.mono (fun _ h => h.le)
  have hnorm := residualOperator_norm_le L β hβ f hn hnonneg he
  have hrho := residualRate_nonnegative L β hβ
  apply (secondValue_le (invariantOperator L β hβ.le) f).trans
  apply csSup_le ⟨0, zero_mem_ballValues _ _⟩
  rintro r ⟨x, hx, hunit, rfl⟩
  change inner ℝ f x = 0 at hx
  have hsq : ‖x‖^2 ≤ 1 := by nlinarith [norm_nonneg x]
  calc
    quadratic (invariantOperator L β hβ.le) x = quadratic (residualOperator L β hβ f) x := by
      simp only [quadratic, residualOperator_on_hyperplane L β hβ f x hx]
    _ ≤ |quadratic (residualOperator L β hβ f) x| := le_abs_self _
    _ ≤ ‖residualOperator L β hβ f‖ * ‖x‖^2 := quadratic_abs_le _ _
    _ ≤ residualRate L β hβ * ‖x‖^2 := mul_le_mul_of_nonneg_right hnorm (sq_nonneg _)
    _ ≤ residualRate L β hβ := by
      simpa only [mul_one] using mul_le_mul_of_nonneg_left hsq hrho

theorem normalized_second_value_le (β : ℝ) (hβ : 0 < β) :
    lambda1 L β hβ.le / lambda0 L β hβ.le ≤
      1 - Real.exp (-12 * β * (L : ℝ)^3) * lambda0 L β hβ.le := by
  apply (div_le_iff₀ (lambda0_pos L β hβ)).mpr
  simpa only [residualRate, mul_comm] using lambda1_le_residualRate L β hβ

theorem normalized_difference_lower (β : ℝ) (hβ : 0 < β) :
    Real.exp (-12 * β * (L : ℝ)^3) * lambda0 L β hβ.le ≤
      1 - lambda1 L β hβ.le / lambda0 L β hβ.le := by
  linarith [normalized_second_value_le L β hβ]

theorem normalized_difference_pos (β : ℝ) (hβ : 0 < β) :
    0 < 1 - lambda1 L β hβ.le / lambda0 L β hβ.le :=
  (mul_pos (Real.exp_pos _) (lambda0_pos L β hβ)).trans_le
    (normalized_difference_lower L β hβ)

end GRWTSK.Geometry.GaugeTheory.WilsonSliceNormalizedSeparation
