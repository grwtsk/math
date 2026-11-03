/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeCriticalResidualFloor

set_option autoImplicit false
noncomputable section

/-! Fixed genuine-character source: one exact parameter, with a quantitative
separation obstruction. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeFixedOrdinateObstruction
open DirichletModThreeCriticalResidualFloor DirichletModThreeFixedResidualBudget

theorem zero_residual_iff_coordinates (t u v w : ℝ) (s : ℂ) :
    fixedCharacterResidual t u v w (analyticParameter s)=0 ↔
      s.re=1/2 ∧ s.im=t-w := by
  have h := actual_critical_residual_sq t u v w s
  constructor
  · intro hz
    rw [hz] at h
    constructor
    · nlinarith [sq_nonneg (w-t+s.im), sq_nonneg (s.re-1/2)]
    · nlinarith [sq_nonneg (w-t+s.im), sq_nonneg (s.re-1/2)]
  · rintro ⟨hr,hi⟩
    rw [hr,hi] at h
    have hz : fixedCharacterResidual t u v w (analyticParameter s)^2=0 := by
      nlinarith
    exact pow_eq_zero hz

theorem two_small_residuals_ordinate_separation (t u v w η : ℝ) (s z : ℂ)
    (hs : fixedCharacterResidual t u v w (analyticParameter s)^2 ≤ η^2)
    (hz : fixedCharacterResidual t u v w (analyticParameter z)^2 ≤ η^2) :
    (s.im-z.im)^2 ≤ 2*η^2 := by
  rw [actual_critical_residual_sq] at hs hz
  nlinarith [sq_nonneg (s.re-1/2), sq_nonneg (z.re-1/2),
    sq_nonneg ((w-t+s.im)+(w-t+z.im))]

theorem exact_fixed_source_parameter_unique (t u v w : ℝ) (s z : ℂ)
    (hs : fixedCharacterResidual t u v w (analyticParameter s)=0)
    (hz : fixedCharacterResidual t u v w (analyticParameter z)=0) : s=z := by
  obtain ⟨hsr,hsi⟩ := (zero_residual_iff_coordinates t u v w s).mp hs
  obtain ⟨hzr,hzi⟩ := (zero_residual_iff_coordinates t u v w z).mp hz
  exact Complex.ext (hsr.trans hzr.symm) (hsi.trans hzi.symm)

/- No assertion that actual analytic zeros produce these residual bounds.
A source-bound realization of multiple ordinates needs a larger/different
construction with explicit compatible source maps; tuning w separately
does not establish a fixed Hilbert–Polya realization. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeFixedOrdinateObstruction
