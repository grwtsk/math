/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveRationalWindowNormalization

/-! # Continuity of normalized rational primitive stage tests -/

set_option autoImplicit false

open MeasureTheory Filter
open scoped Topology InnerProductSpace

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation NativeMixedGammaH1

private theorem energy_eq_sq_norm_classicalH1 {f : ℝ → ℝ} (hf : ClassicalRealH1 f) :
    energy (liftReal f) = ‖(classicalH1Coordinates hf).1‖ ^ 2 := by
  change energy (liftReal f) = ‖hf.f_memLp.toLp f‖ ^ 2
  rw [← real_inner_self_eq_norm_sq, L2.inner_def, energy]
  apply integral_congr_ae
  filter_upwards [hf.f_memLp.coeFn_toLp] with t ht
  simp [ht, liftReal, Real.norm_eq_abs, pow_two]

private theorem classicalH1Coordinates_mul {f g : ℝ → ℝ} {a : ℝ}
    (hf : ClassicalRealH1 f) (hg : ClassicalRealH1 g)
    (h : ∀ t, g t = a * f t) :
    classicalH1Coordinates hg = a • classicalH1Coordinates hf := by
  have hfun : g = fun t => a * f t := funext h
  have hfirst (t : ℝ) : hg.first t = a * hf.first t := by
    have hd := (hf.derivative t).const_mul a
    rw [← hfun] at hd
    exact (hg.derivative t).unique hd
  apply Prod.ext
  · change hg.f_memLp.toLp g = a • hf.f_memLp.toLp f
    rw [← MemLp.toLp_const_smul a hf.f_memLp]
    exact hg.f_memLp.toLp_congr _ (Eventually.of_forall h)
  · change hg.first_memLp.toLp hg.first = a • hf.first_memLp.toLp hf.first
    rw [← MemLp.toLp_const_smul a hf.first_memLp]
    exact hg.first_memLp.toLp_congr _ (Eventually.of_forall hfirst)

/-- Whenever raw rational codes converge in the two native L² coordinates to
a member of the stage mass ball, their mass-normalized codes converge to the
same test in the original stage topology. -/
theorem tendsto_primitiveStageMassTestOfNormalizedCode
    {ι : Type*} {l : Filter ι} {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) (cs : ι → List ℚ)
    (f : PrimitiveStageMassTest χ j)
    (hf : ClassicalRealH1 f.val)
    (hraw : ∀ i, ClassicalRealH1 (rationalWindowTest ((j : ℝ) + 1) (cs i)))
    (hconv : Tendsto (fun i => classicalH1Coordinates (hraw i)) l
      (𝓝 (classicalH1Coordinates hf))) :
    @Tendsto ι (PrimitiveStageMassTest χ j)
      (fun i => primitiveStageMassTestOfNormalizedCode χ j (cs i)) l
      (@nhds _ (primitiveStageH1Topology χ j) f) := by
  let T : ℚ := (j : ℚ) + 1
  have hT : 0 < T := by dsimp [T]; positivity
  have hcast : (T : ℝ) = (j : ℝ) + 1 := by simp [T]
  let m : ι → ℚ := fun i => rationalWindowMass T (cs i)
  let a : ι → ℝ := fun i => rationalWindowMassScale (m i)
  have hm_eq (i : ι) : (m i : ℝ) = ‖(classicalH1Coordinates (hraw i)).1‖ ^ 2 := by
    dsimp only [m]
    rw [rationalWindowMass_cast T hT, hcast, energy_eq_sq_norm_classicalH1 (hraw i)]
  have hm : Tendsto (fun i => (m i : ℝ)) l (𝓝 (energy (liftReal f.val))) := by
    simp only [hm_eq, energy_eq_sq_norm_classicalH1 hf]
    exact ((continuous_fst.tendsto _).comp hconv).norm.pow 2
  have ha : Tendsto a l (𝓝 1) :=
    tendsto_rationalWindowMassScale_of_le_one m _ f.property.2 hm
  have hscaled : Tendsto (fun i => a i • classicalH1Coordinates (hraw i)) l
      (𝓝 (classicalH1Coordinates hf)) := by
    simpa only [one_smul] using ha.smul hconv
  change Tendsto _ l (@nhds _ (TopologicalSpace.induced _ _) f)
  rw [nhds_induced, tendsto_comap_iff]
  convert hscaled using 1
  · funext i
    apply classicalH1Coordinates_mul
    intro t
    exact rationalWindowTest_scale ((j : ℝ) + 1) _ (cs i) t
  · congr 1
    simpa only [one_smul] using
      classicalH1Coordinates_mul hf (a := 1) _ (fun t => (one_mul (f.val t)).symm)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
