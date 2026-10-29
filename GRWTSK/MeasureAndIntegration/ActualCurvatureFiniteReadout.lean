import ActualCurvatureResolution

/-! Exact finite evaluator for the unchanged signed curvature sampler.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No uniform signed lower bound or arithmetic intercept is supplied. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualCurvatureFiniteReadout
open MeasureTheory Set
open scoped Interval
open ActualSecondAbel ActualCurvatureResolution
open FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
open FormalResearch.RiemannHypothesis.SourcePairedTailTest
open FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork

def gridPoint (A : ℝ) (n k : ℕ) : ℝ := (k:ℝ)*(2*A/(n:ℝ))

theorem gridPoint_zero (A : ℝ) (n : ℕ) : gridPoint A n 0=0 := by
  simp [gridPoint]

theorem gridPoint_upper {A : ℝ} {n : ℕ} (hn : 0<n) : gridPoint A n n=2*A := by
  have hnr : (n:ℝ)≠0 := by exact_mod_cast (Nat.ne_of_gt hn)
  dsimp [gridPoint]
  field_simp

theorem gridPoint_step_pos {A : ℝ} {n k : ℕ} (hA : 0<A) (hn : 0<n) :
    gridPoint A n k<gridPoint A n (k+1) := by
  have hnr : (0:ℝ)<n := by exact_mod_cast hn
  have hh : (0:ℝ)<2*A/(n:ℝ) := by positivity
  dsimp [gridPoint]
  rw [Nat.cast_add,Nat.cast_one]
  nlinarith

theorem leftGridSample_eq_on_cell {A u : ℝ} {n k : ℕ} (hA : 0<A) (hn : 0<n)
    (hu : u∈Ioo (gridPoint A n k) (gridPoint A n (k+1))) :
    leftGridSample A n u=gridPoint A n k := by
  have hnr : (0:ℝ)<n := by exact_mod_cast hn
  let h : ℝ := 2*A/(n:ℝ)
  have hh : 0<h := by dsimp [h];positivity
  have hk0 : (0:ℝ)≤(k:ℝ)*h := by positivity
  have hu0 : 0≤u := by
    dsimp [gridPoint] at hu
    change (k:ℝ)*h<u ∧ u<((k+1:ℕ):ℝ)*h at hu
    exact hk0.trans hu.1.le
  have hf : ⌊u/h⌋₊=k := by
    apply (Nat.floor_eq_iff (div_nonneg hu0 hh.le)).mpr
    constructor
    · apply (le_div_iff₀ hh).mpr
      exact hu.1.le
    · apply (div_lt_iff₀ hh).mpr
      simpa [gridPoint,Nat.cast_add,Nat.cast_one,h] using hu.2
  change h*(⌊u/h⌋₊:ℝ)=(k:ℝ)*h
  rw [hf,mul_comm]

theorem actual_curvature_cell_FTC {A a b : ℝ} (hA : 1≤A) :
    (∫ u in a..b,pairedTailCurvature A u)=
      deriv (pairedTailTest A) b-deriv (pairedTailTest A) a :=
  (pairedTailTest_deriv_absolutelyContinuous hA a b).integral_deriv_eq_sub

theorem actual_grid_cell_integral {A : ℝ} {n k : ℕ} (hA : 1≤A) (hn : 0<n) :
    (∫ u in gridPoint A n k..gridPoint A n (k+1),
      criticalDiscrepancyBridge A (leftGridSample A n u)*pairedTailCurvature A u)=
    criticalDiscrepancyBridge A (gridPoint A n k)*
      (deriv (pairedTailTest A) (gridPoint A n (k+1))-
       deriv (pairedTailTest A) (gridPoint A n k)) := by
  calc
    _ = ∫ u in gridPoint A n k..gridPoint A n (k+1),
        criticalDiscrepancyBridge A (gridPoint A n k)*pairedTailCurvature A u := by
      apply intervalIntegral.integral_congr_Ioo_of_le
        (gridPoint_step_pos (by linarith : 0<A) hn).le
      intro u hu
      dsimp only
      rw [leftGridSample_eq_on_cell (by linarith : 0<A) hn hu]
    _ = _ := by
      rw [intervalIntegral.integral_const_mul,actual_curvature_cell_FTC hA]

theorem sampled_grid_cell_intervalIntegrable {A : ℝ} {n k : ℕ}
    (hA : 1≤A) (hn : 0<n) :
    IntervalIntegrable (fun u =>
      criticalDiscrepancyBridge A (leftGridSample A n u)*pairedTailCurvature A u)
      volume (gridPoint A n k) (gridPoint A n (k+1)) := by
  have hi := (pairedTailCurvature_intervalIntegrable hA
    (gridPoint A n k) (gridPoint A n (k+1))).const_mul
    (criticalDiscrepancyBridge A (gridPoint A n k))
  apply hi.congr_uIoo
  rw [uIoo_of_le (gridPoint_step_pos (by linarith : 0<A) hn).le]
  intro u hu
  dsimp only
  rw [leftGridSample_eq_on_cell (by linarith : 0<A) hn hu]

def finiteCurvatureReadout (A : ℝ) (n : ℕ) : ℝ :=
  ∑ k∈Finset.range n,criticalDiscrepancyBridge A (gridPoint A n k)*
    (deriv (pairedTailTest A) (gridPoint A n (k+1))-
     deriv (pairedTailTest A) (gridPoint A n k))

/-- Exact finite signed evaluator; actual lower witness remains open. -/
theorem sampled_grid_eq_finite {A : ℝ} {n : ℕ} (hA : 1≤A) (hn : 0<n) :
    sampledCurvatureWork A (leftGridSample A n)=finiteCurvatureReadout A n := by
  have hs := intervalIntegral.sum_integral_adjacent_intervals
    (a:=gridPoint A n) (n:=n)
    (f:=fun u => criticalDiscrepancyBridge A (leftGridSample A n u)*pairedTailCurvature A u)
    (fun k _ => sampled_grid_cell_intervalIntegrable (k:=k) hA hn)
  rw [gridPoint_zero,gridPoint_upper hn] at hs
  rw [sampledCurvatureWork,←hs]
  unfold finiteCurvatureReadout
  apply Finset.sum_congr rfl
  intro k _
  exact actual_grid_cell_integral hA hn

end ContinuousResearch.ActualCurvatureFiniteReadout

-- Full frozen public declaration closure audits.

#check ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint
#print ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint

#check ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_zero
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_zero
#print ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_zero

#check ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_upper
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_upper
#print ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_upper

#check ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_step_pos
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_step_pos
#print ContinuousResearch.ActualCurvatureFiniteReadout.gridPoint_step_pos

#check ContinuousResearch.ActualCurvatureFiniteReadout.leftGridSample_eq_on_cell
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.leftGridSample_eq_on_cell
#print ContinuousResearch.ActualCurvatureFiniteReadout.leftGridSample_eq_on_cell

#check ContinuousResearch.ActualCurvatureFiniteReadout.actual_curvature_cell_FTC
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.actual_curvature_cell_FTC
#print ContinuousResearch.ActualCurvatureFiniteReadout.actual_curvature_cell_FTC

#check ContinuousResearch.ActualCurvatureFiniteReadout.actual_grid_cell_integral
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.actual_grid_cell_integral
#print ContinuousResearch.ActualCurvatureFiniteReadout.actual_grid_cell_integral

#check ContinuousResearch.ActualCurvatureFiniteReadout.sampled_grid_cell_intervalIntegrable
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.sampled_grid_cell_intervalIntegrable
#print ContinuousResearch.ActualCurvatureFiniteReadout.sampled_grid_cell_intervalIntegrable

#check ContinuousResearch.ActualCurvatureFiniteReadout.finiteCurvatureReadout
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.finiteCurvatureReadout
#print ContinuousResearch.ActualCurvatureFiniteReadout.finiteCurvatureReadout

#check ContinuousResearch.ActualCurvatureFiniteReadout.sampled_grid_eq_finite
#print axioms ContinuousResearch.ActualCurvatureFiniteReadout.sampled_grid_eq_finite
#print ContinuousResearch.ActualCurvatureFiniteReadout.sampled_grid_eq_finite
