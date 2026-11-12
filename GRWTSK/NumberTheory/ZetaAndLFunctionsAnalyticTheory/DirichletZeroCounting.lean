/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletCompletedStripBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletLFunctionLeftBounds

/-!
# Source-derived all-height Dirichlet counting and correlation convergence

MSC2020: 11M26, 11M41, 30C15. The actual completed-kernel strip estimate
supplies the last growth premise of the existing Jensen argument. The central
part of every outer circle is automatically separated from the real axis;
there is no omitted bounded-height window. The original multiplicity count
and complex correlation are reused without a new zero-count or strip-growth
hypothesis. Conductor-one zeta is explicit.

Constants are genuine finite kernel integrals, not height-dependent compact
maxima. They are not numerically evaluated or claimed conductor-uniform.
These upper-count and absolute-convergence results do NOT prove the arithmetic
explicit formula, a lower sign bound, RH/GRH, or varying-test tail control.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED. Coordination:
math#1801. Imported candidates retain their status. Individual source-bound
records and the complete analytical argument are adjacent.
-/

set_option autoImplicit false
noncomputable section

open Set Metric MeasureTheory
open GRWTSK.NumberTheory.DirichletStripBounds
open GRWTSK.SpecialFunctions.ReciprocalGammaStrip

namespace GRWTSK.NumberTheory.WeilNegativeWitness

/-- Every point of the central arc has large enough imaginary part for the
reciprocal Gamma estimate. The two endpoints and H=2 are included. -/
theorem central_jensen_circle_geometry (H : ℝ) (hH : 2 ≤ H) {s : ℂ}
    (hs : s ∈ sphere (2 : ℂ) (2 * (H + 2)))
    (hl : -1 ≤ s.re) (hu : s.re ≤ 2) :
    2 ≤ |s.im| ∧ |s.im| ≤ 4 * H ∧ ‖s - 1‖ ≤ 5 * H := by
  have hd : ‖s - 2‖ = 2 * (H + 2) := by
    simpa only [mem_sphere, dist_eq_norm] using hs
  have hr : |s.re - 2| ≤ 3 := abs_le.mpr ⟨by linarith, by linarith⟩
  have hnorm := Complex.norm_le_abs_re_add_abs_im (s - 2)
  have hnorm' : 2 * (H + 2) ≤ |s.re - 2| + |s.im| := by
    simpa [hd] using hnorm
  have hi : |s.im| ≤ 2 * (H + 2) := by
    simpa [hd] using Complex.abs_im_le_norm (s - 2)
  refine ⟨by linarith, by linarith, ?_⟩
  calc
    ‖s - 1‖ = ‖(s - 2) + 1‖ := by congr 1; ring
    _ ≤ ‖s - 2‖ + ‖(1 : ℂ)‖ := norm_add_le _ _
    _ = 2 * (H + 2) + 1 := by rw [hd, norm_one]
    _ ≤ 5 * H := by linarith

variable (N : ℕ) [NeZero N]

/-- Explicit source-defined central-strip growth cost, independent of height. -/
def centralStripGrowthConstant : ℝ :=
  5 + completedStripBound N * reciprocalStripConstant + 2 * Real.pi

/-- All factors needed to enlarge the growth exponent are nonnegative. -/
theorem centralStripGrowthConstant_nonneg : 0 ≤ centralStripGrowthConstant N := by
  unfold centralStripGrowthConstant
  have h := mul_nonneg (completedStripBound_nonneg N) reciprocalStripConstant_pos.le
  linarith [Real.pi_pos]

variable {N}

/-- The central-circle growth supplier is proved for the original pole-cleared source.
The hypothesis formerly named hstrip is absent. -/
theorem poleClearedLFunction_central_circle_growth (chi : DirichletCharacter ℂ N)
    (H : ℝ) (hH : 2 ≤ H) {s : ℂ}
    (hs : s ∈ sphere (2 : ℂ) (2 * (H + 2)))
    (hl : -1 ≤ s.re) (hu : s.re ≤ 2) :
    ‖poleClearedLFunction chi s‖ ≤
      Real.exp (centralStripGrowthConstant N * H * (Real.log H + 1)) := by
  obtain ⟨hi, hiH, hnH⟩ := central_jensen_circle_geometry H hH hs hl hu
  have hs1 : s ≠ 1 := by intro h; simp [h] at hi
  let A : ℝ := completedStripBound N * reciprocalStripConstant
  have hA : 0 ≤ A := mul_nonneg (completedStripBound_nonneg N) reciprocalStripConstant_pos.le
  have hH0 : 0 ≤ H := by linarith
  have hL : ‖DirichletCharacter.LFunction chi s‖ ≤ A * Real.exp (2 * Real.pi * H) := by
    apply (norm_LFunction_le_strip chi hl hu hi).trans
    apply mul_le_mul_of_nonneg_left _ hA
    apply Real.exp_le_exp.mpr
    nlinarith [mul_le_mul_of_nonneg_left hiH Real.pi_pos.le]
  have hbound : ‖poleClearedLFunction chi s‖ ≤
      (5 * H) * A * Real.exp (2 * Real.pi * H) := by
    rw [poleClearedLFunction_of_ne chi hs1, norm_mul]
    calc
      _ ≤ (5 * H) * (A * Real.exp (2 * Real.pi * H)) :=
        mul_le_mul hnH hL (norm_nonneg _) (by linarith)
      _ = _ := by ring
  have hfive : 5 * H ≤ Real.exp (5 * H) := by
    linarith [Real.add_one_le_exp (5 * H)]
  have hcost : A ≤ Real.exp (A * H) := by
    have hsmall : A ≤ Real.exp A := by linarith [Real.add_one_le_exp A]
    exact hsmall.trans (Real.exp_le_exp.mpr (le_mul_of_one_le_right hA (by linarith)))
  have hlog : 0 ≤ Real.log H := Real.log_nonneg (by linarith)
  calc
    _ ≤ (5 * H) * A * Real.exp (2 * Real.pi * H) := hbound
    _ ≤ Real.exp (5 * H) * Real.exp (A * H) * Real.exp (2 * Real.pi * H) := by
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul hfive hcost hA (Real.exp_pos _).le) (Real.exp_pos _).le
    _ = Real.exp (centralStripGrowthConstant N * H) := by
      rw [← Real.exp_add, ← Real.exp_add]
      congr 1
      dsimp [centralStripGrowthConstant, A]
      ring
    _ ≤ _ := Real.exp_le_exp.mpr
      (le_mul_of_one_le_right
        (mul_nonneg (centralStripGrowthConstant_nonneg N) hH0) (by linarith))

/-- Full-circle source growth now has no analytic growth hypothesis. Primitivity
is retained because the far-left argument uses the dual-character equation. -/
theorem poleClearedLFunction_circle_growth (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (H : ℝ) (hH : 2 ≤ H) {s : ℂ}
    (hs : s ∈ sphere (2 : ℂ) (2 * (H + 2))) :
    ‖poleClearedLFunction chi s‖ ≤ Real.exp
      ((centralStripGrowthConstant N + farLeftGrowthConstant chi + 8) *
        H * (Real.log H + 2)) := by
  have hg := circle_growth_of_strip_growth chi hprim
    (centralStripGrowthConstant N) 1 (centralStripGrowthConstant_nonneg N) (by norm_num)
    (fun T hT w hw hwl hwu =>
      poleClearedLFunction_central_circle_growth chi T hT hw hwl.le hwu.le) H hH hs
  simpa only [show (1 : ℝ) + 1 = 2 by norm_num] using hg

/-- Displayed all-height counting constant for the actual primitive source. -/
def sourceCountConstant (chi : DirichletCharacter ℂ N) : ℝ :=
  (centralStripGrowthConstant N + farLeftGrowthConstant chi + 8 + Real.log 4) / Real.log 2

/-- The denominator and numerator have the required signs independently of zero location. -/
theorem sourceCountConstant_nonneg (chi : DirichletCharacter ℂ N) :
    0 ≤ sourceCountConstant chi := by
  have hc := centralStripGrowthConstant_nonneg N
  have hk := farLeftGrowthConstant_ge_four chi
  have hl4 : 0 ≤ Real.log 4 := Real.log_nonneg (by norm_num)
  unfold sourceCountConstant
  exact div_nonneg (by linarith) (Real.log_pos (by norm_num)).le

/-- All heights and original analytic multiplicities, without a counting or growth input. -/
theorem heightCount_le_source_bound (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (H : ℝ) (hH : 2 ≤ H) :
    (heightCount chi hprim H : ℝ) ≤ sourceCountConstant chi * H * (Real.log H + 3) := by
  have hc := heightCount_le_of_strip_growth chi hprim
    (centralStripGrowthConstant N) 1 (centralStripGrowthConstant_nonneg N) (by norm_num)
    (fun T hT w hw hwl hwu =>
      poleClearedLFunction_central_circle_growth chi T hT hw hwl.le hwu.le) H hH
  simpa only [sourceCountConstant, show (1 : ℝ) + 2 = 3 by norm_num] using hc

/-- Existence form of the source counting bound, with explicit nonnegative witnesses. -/
theorem exists_heightCount_bound (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ D L : ℝ, 0 ≤ D ∧ 0 ≤ L ∧ ∀ H : ℝ, 2 ≤ H →
      (heightCount chi hprim H : ℝ) ≤ D * H * (Real.log H + L) := by
  exact ⟨sourceCountConstant chi, 3, sourceCountConstant_nonneg chi,
    by norm_num, heightCount_le_source_bound chi hprim⟩

/-- Absolute convergence of the original source correlation. This is not its arithmetic
explicit-formula identity, and no assertion about its sign follows. -/
theorem summable_primitive_correlation_source_bound
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    Summable (fun rho : CriticalStripZero chi => ‖(zeroMultiplicity chi rho : ℂ) *
      ∫ r : ℝ, WeilQuadraticForm.SourcePrimeCorrelation.correlation f r *
        Complex.exp (Complex.I * spectralCoordinate rho.1 * (r : ℂ))‖) := by
  exact summable_primitive_correlation_of_heightCount chi hprim
    (sourceCountConstant chi) 3 (sourceCountConstant_nonneg chi) (by norm_num)
    (heightCount_le_source_bound chi hprim) f A hA hf hs 1 (by norm_num)

/-- The same count applied explicitly to the conductor-one source, not a zeta model. -/
theorem zeta_heightCount_le_source_bound (H : ℝ) (hH : 2 ≤ H) :
    (heightCount (1 : DirichletCharacter ℂ 1)
      DirichletCharacter.isPrimitive_one_level_one H : ℝ) ≤
        sourceCountConstant (1 : DirichletCharacter ℂ 1) * H * (Real.log H + 3) := by
  exact heightCount_le_source_bound (1 : DirichletCharacter ℂ 1)
    DirichletCharacter.isPrimitive_one_level_one H hH

/-- Conductor-one correlation convergence, retaining both height signs and multiplicities. -/
theorem summable_zeta_correlation_source_bound
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    Summable (fun rho : CriticalStripZero (1 : DirichletCharacter ℂ 1) =>
      ‖(zeroMultiplicity (1 : DirichletCharacter ℂ 1) rho : ℂ) *
        ∫ r : ℝ, WeilQuadraticForm.SourcePrimeCorrelation.correlation f r *
          Complex.exp (Complex.I * spectralCoordinate rho.1 * (r : ℂ))‖) := by
  exact summable_primitive_correlation_source_bound (1 : DirichletCharacter ℂ 1)
    DirichletCharacter.isPrimitive_one_level_one f A hA hf hs

end GRWTSK.NumberTheory.WeilNegativeWitness
