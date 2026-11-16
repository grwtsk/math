/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilH1ShiftFTC

/-! # Admission of smooth, odd, window-supported primitive tests -/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open NativeGammaH1ShiftBudget NativeH1ShiftFTC OddRootProjection SourcePrimeCorrelation

/-- At a positive window the original admissible tests are exactly the C²
real odd functions vanishing outside that window. The real H1 shift bound
supplies integrability of the original complex-lifted gamma density. -/
theorem admissible_iff_smooth_odd_supported
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℝ} (hT : 0 < T) (f : ℝ → ℝ) :
    Admissible χ T f ↔
      ContDiff ℝ 2 f ∧ Function.Odd f ∧ ∀ t, t ∉ Icc (-T) T → f t = 0 := by
  constructor
  · rintro ⟨_, hdiff, _, hodd, _, hsupport, _⟩
    refine ⟨hdiff, hodd, fun t ht => ?_⟩
    exact Complex.ofReal_eq_zero.mp (hsupport t ht)
  · rintro ⟨hdiff, hodd, hsupport⟩
    have hcompact : HasCompactSupport f := by
      apply HasCompactSupport.of_support_subset_isCompact isCompact_Icc
      intro t ht
      by_contra hout
      exact ht (hsupport t hout)
    have hLp : MemLp f 2 volume := hdiff.continuous.memLp_of_hasCompactSupport hcompact
    have hderiv : Continuous (deriv f) := hdiff.continuous_deriv (by norm_num)
    have hderivLp : MemLp (deriv f) 2 volume :=
      hderiv.memLp_of_hasCompactSupport hcompact.deriv
    have hnear := nearH1ShiftBound_of_classical_derivative f (deriv f)
      (fun t => ((hdiff.differentiable (by norm_num)) t).hasDerivAt) hderiv hLp hderivLp
    have hgamma := (realGammaEnergy_integrable_and_bound (gammaParity χ)
      f (deriv f) hdiff.continuous hLp hderivLp hnear).1
    have hlift : Continuous (liftReal f) := Complex.continuous_ofReal.comp hdiff.continuous
    have hliftCompact : HasCompactSupport (liftReal f) :=
      hcompact.comp_left Complex.ofReal_zero
    refine ⟨hT, hdiff, hcompact, hodd, hlift.memLp_of_hasCompactSupport hliftCompact,
      fun t ht => by simp [liftReal, hsupport t ht], ?_⟩
    have hdensity : gammaCorrectionDensity (gammaParity χ) (liftReal f) =
        realGammaDensity (gammaParity χ) f := by
      funext r
      simp only [gammaCorrectionDensity, realGammaDensity, energy, realShiftEnergy,
        liftReal, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs, sq_abs]
    rwa [hdensity]

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
