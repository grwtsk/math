# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualCurvatureFiniteReadoutAttempt02.Variant94be22a1630cbf9649e2b1ebf70c7fc4848df6c212244b8e3edec630eb7fa07f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37df889bce4e886b3bc1c06ba08d455ded4b7a16` · SHA-256 `4106fd9d12a175ddf727023edcc40f063656a5fd6d6de8a4f65a4a6fab36552f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.GridPoint.Variant4f54c815090223c05c88fd2da864faa2df03a2803d681622da4d1825d9ba3d25","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f54c815090223c05c88fd2da864faa2df03a2803d681622da4d1825d9ba3d25","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.GridPoint.Variant4f54c815090223c05c88fd2da864faa2df03a2803d681622da4d1825d9ba3d25","mathematical_subject":"Analysis.Integration","original_sha256":"4f54c815090223c05c88fd2da864faa2df03a2803d681622da4d1825d9ba3d25","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass15/affine_compensation/finite-evaluator-continuation/ActualCurvatureFiniteReadout-attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCurvatureResolution

/-! Exact finite evaluator for the unchanged signed curvature sampler.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No uniform signed lower bound or arithmetic intercept is supplied. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.GridPoint.Variant4f54c815090223c05c88fd2da864faa2df03a2803d681622da4d1825d9ba3d25

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
```
