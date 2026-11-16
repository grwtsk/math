/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitivePairedH1Return

/-! # Continuity of the native primitive stage defect in classical H1 coordinates -/

set_option autoImplicit false
noncomputable section

open MeasureTheory Filter
open scoped Topology InnerProductSpace

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open OddRootProjection LowSchur SourcePrimeCorrelation
open NativeMixedGammaH1 SignedArithmeticH1Budget SignedRealMixedPolarization

private theorem physicalMass_eq_sq_norm {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) : physicalMass f = ‖hf.toLp f‖ ^ 2 := by
  rw [← real_inner_self_eq_norm_sq, L2.inner_def, physicalMass]
  apply integral_congr_ae
  filter_upwards [hf.coeFn_toLp] with t ht
  rw [ht]
  simp [pow_two]

private theorem liftReal_energy_eq_physicalMass (f : ℝ → ℝ) :
    energy (liftReal f) = physicalMass f := by
  simp only [energy, liftReal, physicalMass, Complex.norm_real, Real.norm_eq_abs, sq_abs]

/-- Classical H1 coordinates record the original test and its derivative
as separate real L² classes on the whole line. -/
def classicalH1Coordinates {f : ℝ → ℝ} (hf : ClassicalRealH1 f) :
    Lp ℝ 2 (volume : Measure ℝ) × Lp ℝ 2 (volume : Measure ℝ) :=
  (hf.f_memLp.toLp f, hf.first_memLp.toLp hf.first)

/-- The full native primitive defect is continuous along any family whose
test and classical derivative coordinates are continuous in real L². -/
theorem continuous_primitiveStageDefect_of_classicalH1Coordinates
    {X : Type*} [TopologicalSpace X]
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (j : ℕ)
    (f : X → ℝ → ℝ) (hf : ∀ x, ClassicalRealH1 (f x))
    (hcoords : Continuous (fun x => classicalH1Coordinates (hf x))) :
    Continuous (fun x =>
      primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal (f x)) +
        ((1 / 2 : ℝ) ^ j) * energy (liftReal (f x))) := by
  let Q := fun x => primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal (f x))
  let F := fun x => (classicalH1Coordinates (hf x)).1
  let D := fun x => (classicalH1Coordinates (hf x)).2
  let A := |gammaConstant q (gammaParity χ)| + primeMass ((j : ℝ) + 1) +
    2 * ExactGammaTail.tailUpper (gammaParity χ) 1
  have hF : Continuous F := hcoords.fst
  have hD : Continuous D := hcoords.snd
  have hQ : Continuous Q := by
    apply continuous_iff_continuousAt.mpr
    intro x
    let plus := fun y => A * ‖F y + F x‖ ^ 2 + (7 / 12 : ℝ) * ‖D y + D x‖ ^ 2
    let minus := fun y => A * ‖F y - F x‖ ^ 2 + (7 / 12 : ℝ) * ‖D y - D x‖ ^ 2
    have hpCont : Continuous plus :=
      (continuous_const.mul ((hF.add continuous_const).norm.pow 2)).add
        (continuous_const.mul ((hD.add continuous_const).norm.pow 2))
    have hmCont : Continuous minus :=
      (continuous_const.mul ((hF.sub continuous_const).norm.pow 2)).add
        (continuous_const.mul ((hD.sub continuous_const).norm.pow 2))
    have hzero : minus x = 0 := by simp [minus]
    have ht : Tendsto (fun y => plus y * minus y) (𝓝 x) (𝓝 0) := by
      have ht' : Tendsto (fun y => plus y * minus y) (𝓝 x) (𝓝 (plus x * minus x)) :=
        (hpCont.mul hmCont).continuousAt
      rwa [hzero, mul_zero] at ht'
    rw [ContinuousAt, Metric.tendsto_nhds]
    intro ε hε
    have he : (0 : ℝ) < ε ^ 2 := pow_pos hε 2
    filter_upwards [ht.eventually_lt_const he] with y hy
    have hbound : (Q y - Q x) ^ 2 ≤ plus y * minus y := by
      have hb := primitiveArithmeticValue_liftReal_difference_sq_H1 χ hp hn
        ((j : ℝ) + 1) (hf y) (hf x)
      simp only [physicalWeightedBudget,
        show physicalDerivativeMass = physicalMass from rfl,
        physicalMass_eq_sq_norm ((hf y).f_memLp.add (hf x).f_memLp),
        physicalMass_eq_sq_norm ((hf y).first_memLp.add (hf x).first_memLp),
        physicalMass_eq_sq_norm ((hf y).f_memLp.sub (hf x).f_memLp),
        physicalMass_eq_sq_norm ((hf y).first_memLp.sub (hf x).first_memLp)] at hb
      rw [(hf y).f_memLp.toLp_add (hf x).f_memLp,
        (hf y).first_memLp.toLp_add (hf x).first_memLp,
        (hf y).f_memLp.toLp_sub (hf x).f_memLp,
        (hf y).first_memLp.toLp_sub (hf x).first_memLp] at hb
      exact hb
    rw [Real.dist_eq]
    nlinarith [hbound.trans_lt hy, sq_abs (Q y - Q x)]
  have henergy : Continuous (fun x => energy (liftReal (f x))) := by
    simp only [liftReal_energy_eq_physicalMass, physicalMass_eq_sq_norm (hf _).f_memLp]
    exact hF.norm.pow 2
  exact hQ.add (continuous_const.mul henergy)

/-- The same admissible mass ball used by the dense-stage consumer. -/
abbrev PrimitiveStageMassTest {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) :=
  { f : ℝ → ℝ // Admissible χ ((j : ℝ) + 1) f ∧ energy (liftReal f) ≤ 1 }

private def stageTestClassicalH1 {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q} {j : ℕ} (f : PrimitiveStageMassTest χ j) :
    ClassicalRealH1 f.val := by
  have hdiff := f.property.1.2.1
  have hcompact := f.property.1.2.2.1
  have hd : Continuous (deriv f.val) := hdiff.continuous_deriv (by norm_num)
  exact ⟨deriv f.val, fun t => ((hdiff.differentiable (by norm_num)) t).hasDerivAt,
    hd, hdiff.continuous.memLp_of_hasCompactSupport hcompact,
    hd.memLp_of_hasCompactSupport hcompact.deriv⟩

/-- Pull back the product L² topology under the test and its actual derivative. -/
abbrev primitiveStageH1Topology {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) :
    TopologicalSpace (PrimitiveStageMassTest χ j) :=
  TopologicalSpace.induced (fun f => classicalH1Coordinates (stageTestClassicalH1 f))
    inferInstance

/-- The full energy-relative stage defect is continuous on the native
admissible mass ball with topology induced by the classical H1 coordinates. -/
theorem continuous_primitiveStageDefect_inducedH1
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (j : ℕ) :
    @Continuous (PrimitiveStageMassTest χ j) ℝ (primitiveStageH1Topology χ j)
      inferInstance (fun f =>
        primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal f.val) +
          ((1 / 2 : ℝ) ^ j) * energy (liftReal f.val)) := by
  let _ := primitiveStageH1Topology χ j
  exact continuous_primitiveStageDefect_of_classicalH1Coordinates χ hp hn j
    Subtype.val stageTestClassicalH1 continuous_induced_dom

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
