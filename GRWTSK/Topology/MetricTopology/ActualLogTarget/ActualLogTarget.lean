import ActualLogCoordinate
import UnnormalizedDilation
import Mathlib.MeasureTheory.Function.LpSpace.Indicator
import Mathlib.Topology.MetricSpace.HausdorffDistance

/-! Exact indicator target and its actual integer Müntz orbit closure in log coordinates.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex.
No target membership, integer density, Plancherel identity or RH assumption. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualLogTarget
open MeasureTheory Set Filter Metric
open ContinuousResearch.PositiveDilation ContinuousResearch.LogCoordinate
open ContinuousResearch.ActualComplexDilation ContinuousResearch.ActualLogCoordinate
open ContinuousResearch.UnnormalizedDilation

def positiveTargetFunc : ℝ → ℂ := (Ioo (0:ℝ) 1).indicator (fun _ => 1)

theorem positiveMeasure_unit_interval : positiveMeasure (Ioo (0:ℝ) 1) = 1 := by
  rw [positiveMeasure,Measure.restrict_apply measurableSet_Ioo]
  have hs : Ioo (0:ℝ) 1 ∩ Ioi 0 = Ioo 0 1 :=
    inter_eq_left.mpr (fun _ hx => hx.1)
  rw [hs]
  norm_num

theorem positiveTargetFunc_memLp : MemLp positiveTargetFunc 2 positiveMeasure :=
  memLp_indicator_const 2 measurableSet_Ioo 1
    (Or.inr (by rw [positiveMeasure_unit_interval]; norm_num))

/-- Genuine indicator class in positive-axis Lebesgue dx, independent of physical A. -/
def positiveTarget : PositiveL2 := positiveTargetFunc_memLp.toLp positiveTargetFunc

theorem positiveTarget_ae : positiveTarget =ᵐ[positiveMeasure] positiveTargetFunc :=
  positiveTargetFunc_memLp.coeFn_toLp

/-- The exact logarithmic target; its zero value at u=0 matches the open indicator. -/
def logTargetFunc (u : ℝ) : ℂ := if u < 0 then (Real.exp (u/2) : ℂ) else 0

theorem logTargetFunc_pointwise (u : ℝ) : logFunc positiveTargetFunc u = logTargetFunc u := by
  by_cases hu : u < 0
  · have he : Real.exp u ∈ Ioo (0:ℝ) 1 := ⟨Real.exp_pos u,Real.exp_lt_one_iff.mpr hu⟩
    rw [logFunc,positiveTargetFunc,Set.indicator_of_mem he,logTargetFunc,if_pos hu,mul_one]
  · have he : Real.exp u ∉ Ioo (0:ℝ) 1 := by
      intro hx
      exact hu (Real.exp_lt_one_iff.mp hx.2)
    rw [logFunc,positiveTargetFunc,Set.indicator_of_notMem he,logTargetFunc,if_neg hu,mul_zero]

theorem logTargetFunc_memLp : MemLp logTargetFunc 2 (volume : Measure ℝ) :=
  MemLp.ae_eq (Eventually.of_forall logTargetFunc_pointwise)
    (logFunc_memLp positiveTargetFunc_memLp)

/-- Independent literal exponential-indicator class, after genuine MemLp. -/
def logTarget : LogL2 := logTargetFunc_memLp.toLp logTargetFunc

theorem logTarget_ae : logTarget =ᵐ[volume] logTargetFunc := logTargetFunc_memLp.coeFn_toLp

theorem logMap_positiveTarget : logMap positiveTarget = logTarget := by
  apply Lp.ext
  filter_upwards [logMap_ae positiveTarget,exp_quasi.ae_eq_comp positiveTarget_ae,
    logTarget_ae] with u hu hf ht
  dsimp only [Function.comp_apply] at hf
  rw [hu,logFunc,hf,ht]
  exact logTargetFunc_pointwise u

theorem positiveTarget_norm : ‖positiveTarget‖ = 1 := by
  have he : positiveTarget = indicatorConstLp 2 measurableSet_Ioo
      (show positiveMeasure (Ioo (0:ℝ) 1) ≠ ⊤ by rw [positiveMeasure_unit_interval]; norm_num)
      (1:ℂ) := rfl
  rw [he,norm_indicatorConstLp (by norm_num) (by norm_num)]
  simp [measureReal_def,positiveMeasure_unit_interval]

theorem logTarget_norm : ‖logTarget‖ = 1 := by
  rw [←logMap_positiveTarget,logMap_norm,positiveTarget_norm]

/-- Complete positive integer family, for one independently fixed physical A. -/
def positiveIntegerHull (A : ℝ) (hA : 1 ≤ A) : Submodule ℂ PositiveL2 :=
  (Submodule.span ℂ (range (actualIntegerOrbit A hA))).topologicalClosure

def logIntegerOrbit (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) : LogL2 :=
  translate (Real.log (n.val:ℝ)) (actualLogL2 A hA)

def logIntegerHull (A : ℝ) (hA : 1 ≤ A) : Submodule ℂ LogL2 :=
  (Submodule.span ℂ (range (logIntegerOrbit A hA))).topologicalClosure

theorem logMap_normalized_integerOrbit (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) :
    logEquiv (integerOrbit A hA n) = logIntegerOrbit A hA n := actual_integer_log A hA n

private theorem logEquiv_span_image (s : Set PositiveL2) :
    logEquiv '' (Submodule.span ℂ s : Set PositiveL2) =
      (Submodule.span ℂ (logEquiv '' s) : Set LogL2) := by
  change ((Submodule.span ℂ s).map logEquiv.toLinearEquiv.toLinearMap : Set LogL2) = _
  rw [Submodule.map_span]
  rfl

/-- Actual hull transport uses the earlier proved nonzero K/D rescaling only as a prerequisite. -/
theorem actual_integer_hull_image (A : ℝ) (hA : 1 ≤ A) :
    logEquiv '' (positiveIntegerHull A hA : Set PositiveL2) =
      (logIntegerHull A hA : Set LogL2) := by
  change logEquiv '' ((Submodule.span ℂ (range (actualIntegerOrbit A hA))).topologicalClosure :
    Set PositiveL2) = _
  rw [actual_integer_closure_eq]
  change logEquiv '' closure (Submodule.span ℂ (range (integerOrbit A hA)) : Set PositiveL2) =
    closure (Submodule.span ℂ (range (logIntegerOrbit A hA)) : Set LogL2)
  rw [←LinearIsometryEquiv.coe_toHomeomorph,Homeomorph.image_closure]
  change closure (logEquiv '' (Submodule.span ℂ (range (integerOrbit A hA)) : Set PositiveL2)) = _
  rw [logEquiv_span_image]
  have hr : logEquiv '' range (integerOrbit A hA) = range (logIntegerOrbit A hA) := by
    rw [←range_comp]
    apply congrArg range
    funext n
    exact logMap_normalized_integerOrbit A hA n
  rw [hr]

/-- The precise indicator membership question is transported, never assumed. -/
theorem actual_target_membership_iff (A : ℝ) (hA : 1 ≤ A) :
    positiveTarget ∈ positiveIntegerHull A hA ↔ logTarget ∈ logIntegerHull A hA := by
  have he : logEquiv positiveTarget = logTarget := logMap_positiveTarget
  rw [←he]
  change positiveTarget ∈ (positiveIntegerHull A hA : Set PositiveL2) ↔
    logEquiv positiveTarget ∈ (logIntegerHull A hA : Set LogL2)
  rw [←actual_integer_hull_image]
  constructor
  · intro h
    exact ⟨positiveTarget,h,rfl⟩
  · rintro ⟨f,hf,hfe⟩
    have hx := logEquiv.injective hfe
    simpa only [hx] using hf

/-- Exact target distance, coefficient one; this is not the repository arithmetic quadratic form. -/
theorem actual_target_infDist_eq (A : ℝ) (hA : 1 ≤ A) :
    infDist positiveTarget (positiveIntegerHull A hA : Set PositiveL2) =
      infDist logTarget (logIntegerHull A hA : Set LogL2) := by
  have he : logEquiv positiveTarget = logTarget := logMap_positiveTarget
  rw [←he,←actual_integer_hull_image]
  exact (infDist_image logEquiv.isometry).symm

end ContinuousResearch.ActualLogTarget

/- Complete newly authored type/proof/transitive dependency audits. -/

#check ContinuousResearch.ActualLogTarget.positiveTargetFunc
#print axioms ContinuousResearch.ActualLogTarget.positiveTargetFunc
#print ContinuousResearch.ActualLogTarget.positiveTargetFunc

#check ContinuousResearch.ActualLogTarget.positiveMeasure_unit_interval
#print axioms ContinuousResearch.ActualLogTarget.positiveMeasure_unit_interval
#print ContinuousResearch.ActualLogTarget.positiveMeasure_unit_interval

#check ContinuousResearch.ActualLogTarget.positiveTargetFunc_memLp
#print axioms ContinuousResearch.ActualLogTarget.positiveTargetFunc_memLp
#print ContinuousResearch.ActualLogTarget.positiveTargetFunc_memLp

#check ContinuousResearch.ActualLogTarget.positiveTarget
#print axioms ContinuousResearch.ActualLogTarget.positiveTarget
#print ContinuousResearch.ActualLogTarget.positiveTarget

#check ContinuousResearch.ActualLogTarget.positiveTarget_ae
#print axioms ContinuousResearch.ActualLogTarget.positiveTarget_ae
#print ContinuousResearch.ActualLogTarget.positiveTarget_ae

#check ContinuousResearch.ActualLogTarget.logTargetFunc
#print axioms ContinuousResearch.ActualLogTarget.logTargetFunc
#print ContinuousResearch.ActualLogTarget.logTargetFunc

#check ContinuousResearch.ActualLogTarget.logTargetFunc_pointwise
#print axioms ContinuousResearch.ActualLogTarget.logTargetFunc_pointwise
#print ContinuousResearch.ActualLogTarget.logTargetFunc_pointwise

#check ContinuousResearch.ActualLogTarget.logTargetFunc_memLp
#print axioms ContinuousResearch.ActualLogTarget.logTargetFunc_memLp
#print ContinuousResearch.ActualLogTarget.logTargetFunc_memLp

#check ContinuousResearch.ActualLogTarget.logTarget
#print axioms ContinuousResearch.ActualLogTarget.logTarget
#print ContinuousResearch.ActualLogTarget.logTarget

#check ContinuousResearch.ActualLogTarget.logTarget_ae
#print axioms ContinuousResearch.ActualLogTarget.logTarget_ae
#print ContinuousResearch.ActualLogTarget.logTarget_ae

#check ContinuousResearch.ActualLogTarget.logMap_positiveTarget
#print axioms ContinuousResearch.ActualLogTarget.logMap_positiveTarget
#print ContinuousResearch.ActualLogTarget.logMap_positiveTarget

#check ContinuousResearch.ActualLogTarget.positiveTarget_norm
#print axioms ContinuousResearch.ActualLogTarget.positiveTarget_norm
#print ContinuousResearch.ActualLogTarget.positiveTarget_norm

#check ContinuousResearch.ActualLogTarget.logTarget_norm
#print axioms ContinuousResearch.ActualLogTarget.logTarget_norm
#print ContinuousResearch.ActualLogTarget.logTarget_norm

#check ContinuousResearch.ActualLogTarget.positiveIntegerHull
#print axioms ContinuousResearch.ActualLogTarget.positiveIntegerHull
#print ContinuousResearch.ActualLogTarget.positiveIntegerHull

#check ContinuousResearch.ActualLogTarget.logIntegerOrbit
#print axioms ContinuousResearch.ActualLogTarget.logIntegerOrbit
#print ContinuousResearch.ActualLogTarget.logIntegerOrbit

#check ContinuousResearch.ActualLogTarget.logIntegerHull
#print axioms ContinuousResearch.ActualLogTarget.logIntegerHull
#print ContinuousResearch.ActualLogTarget.logIntegerHull

#check ContinuousResearch.ActualLogTarget.logMap_normalized_integerOrbit
#print axioms ContinuousResearch.ActualLogTarget.logMap_normalized_integerOrbit
#print ContinuousResearch.ActualLogTarget.logMap_normalized_integerOrbit

#check ContinuousResearch.ActualLogTarget.logEquiv_span_image
#print axioms ContinuousResearch.ActualLogTarget.logEquiv_span_image
#print ContinuousResearch.ActualLogTarget.logEquiv_span_image

#check ContinuousResearch.ActualLogTarget.actual_integer_hull_image
#print axioms ContinuousResearch.ActualLogTarget.actual_integer_hull_image
#print ContinuousResearch.ActualLogTarget.actual_integer_hull_image

#check ContinuousResearch.ActualLogTarget.actual_target_membership_iff
#print axioms ContinuousResearch.ActualLogTarget.actual_target_membership_iff
#print ContinuousResearch.ActualLogTarget.actual_target_membership_iff

#check ContinuousResearch.ActualLogTarget.actual_target_infDist_eq
#print axioms ContinuousResearch.ActualLogTarget.actual_target_infDist_eq
#print ContinuousResearch.ActualLogTarget.actual_target_infDist_eq
