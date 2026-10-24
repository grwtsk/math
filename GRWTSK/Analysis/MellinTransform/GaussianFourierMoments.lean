/-
Actual polynomial Fourier moments of the admitted compact Gaussian windows.
Consumes the generic OpenAI LogProfiles Fourier/Schwartz proof adapted in Analysis/Fourier/SchwartzMoments
and the admitted Gaussian finite-seminorm suppliers. OpenAI project author,
Apache-2.0, pin 1581d4cbdd69a0faf34b2089614fe2a814316a6a; generic source SHA256
ff8735e421a2ee659df15272704206f2d114d7e2a849e8a755d545508f4038be.
The finite source family and positive-scale real-power cancellation are proved here.
Mathlib Fourier/Schwartz and imported Gaussian individual authors/licenses retained.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
No log-window Gaussian density, Hecke, calibration or physical-row theorem is inferred.
-/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SchwartzMoments
import GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms

namespace GRWTSK.Analysis.MellinTransform.GaussianFourierMoments
noncomputable section
open scoped Classical FourierTransform SchwartzMap
open MeasureTheory
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SchwartzMoments
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
open GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms

/-- The exact finite source derivative range required by the Fourier moment transfer. -/
noncomputable def gaussianFourierSourceIndices (J : ℕ) : Finset (ℕ×ℕ) :=
  (Finset.range (J+(volume : Measure ℝ).integrablePower+1)).biUnion
    (fun i => {(0,i),((volume : Measure ℝ).integrablePower,i)})

lemma source_zero_mem (J i : ℕ) (hi : i≤J+(volume : Measure ℝ).integrablePower) :
    (0,i)∈gaussianFourierSourceIndices J := by
  exact Finset.mem_biUnion.mpr ⟨i,Finset.mem_range.mpr (Nat.lt_succ_iff.mpr hi),by simp⟩

lemma source_power_mem (J i : ℕ) (hi : i≤J+(volume : Measure ℝ).integrablePower) :
    ((volume : Measure ℝ).integrablePower,i)∈gaussianFourierSourceIndices J := by
  exact Finset.mem_biUnion.mpr ⟨i,Finset.mem_range.mpr (Nat.lt_succ_iff.mpr hi),by simp⟩

/-- Positive scales supply exactly the real-power cancellation used below. -/
lemma scale_rpow_cancel (r a : ℝ) (hr : 0<r) : r^a*r^(-a)=1 := by
  rw [←Real.rpow_add hr]
  simp

/-- An actual finite-source bound; the desired Fourier integral is not an input. -/
theorem gaussianFourier_source_pair (a : ℝ) (J : ℕ) :
    ∃ C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,∀j i : ℕ,
      i≤J+(volume : Measure ℝ).integrablePower→
      ((2:ℝ)^j/Z)^a*
        (SchwartzMap.seminorm ℝ 0 i (gaussianDyadicSchwartz Z hZ j)+
          SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower i (gaussianDyadicSchwartz Z hZ j))≤C := by
  obtain ⟨B,hB,hbound⟩ := gaussianDyadicSchwartz_finite_seminorm a (gaussianFourierSourceIndices J)
  refine ⟨B+B,by positivity,?_⟩
  intro Z hZ j i hi
  have hr : 0<(2:ℝ)^j/Z := div_pos (by positivity) hZ
  have hzero : SchwartzMap.seminorm ℝ 0 i (gaussianDyadicSchwartz Z hZ j)≤B*((2:ℝ)^j/Z)^(-a) := by
    apply (Seminorm.le_def.mp (Finset.le_sup (f:=schwartzSeminormFamily ℝ ℝ ℂ) (source_zero_mem J i hi)) _).trans
    exact hbound Z hZ j
  have hpower : SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower i (gaussianDyadicSchwartz Z hZ j)≤B*((2:ℝ)^j/Z)^(-a) := by
    apply (Seminorm.le_def.mp (Finset.le_sup (f:=schwartzSeminormFamily ℝ ℝ ℂ) (source_power_mem J i hi)) _).trans
    exact hbound Z hZ j
  calc
    _ ≤ ((2:ℝ)^j/Z)^a*(B*((2:ℝ)^j/Z)^(-a)+B*((2:ℝ)^j/Z)^(-a)) :=
      mul_le_mul_of_nonneg_left (add_le_add hzero hpower) (Real.rpow_nonneg hr.le a)
    _ = (B+B)*(((2:ℝ)^j/Z)^a*((2:ℝ)^j/Z)^(-a)) := by ring
    _ = B+B := by rw [scale_rpow_cancel _ a hr,mul_one]

noncomputable def gaussianFourierMoment (J : ℕ) (Z : ℝ) (hZ : 0<Z) (j : ℕ) : ℝ :=
  ∫t : ℝ,(1+‖t‖)^J*‖(𝓕 (gaussianDyadicSchwartz Z hZ j)) t‖

/-- Actual integrability of every positive-scale Gaussian window Fourier moment. -/
theorem gaussianFourierMoment_integrable (J : ℕ) (Z : ℝ) (hZ : 0<Z) (j : ℕ) :
    Integrable (fun t : ℝ=>(1+‖t‖)^J*‖(𝓕 (gaussianDyadicSchwartz Z hZ j)) t‖) :=
  fourier_one_plus_moment_integrable _ J

lemma gaussianFourierMoment_nonneg (J : ℕ) (Z : ℝ) (hZ : 0<Z) (j : ℕ) :
    0≤gaussianFourierMoment J Z hZ j := by
  apply integral_nonneg
  intro t
  positivity

/-- A genuine Fourier moment bound with its source-pair evidence proved from Gaussian seminorms. -/
theorem gaussianFourierMoment_power_bound (a : ℝ) (J : ℕ) :
    ∃ C : ℝ,0<C ∧ ∀Z : ℝ,∀hZ : 0<Z,∀j : ℕ,
      gaussianFourierMoment J Z hZ j≤C*((2:ℝ)^j/Z)^(-a) := by
  obtain ⟨B,hB,hsource⟩ := gaussianFourier_source_pair a J
  let D := (2:ℝ)^J*(coefficientMomentBound 0 B+coefficientMomentBound J B)
  have hD : 0≤D := mul_nonneg (by positivity)
    (add_nonneg (coefficientMomentBound_nonneg _ _ hB.le) (coefficientMomentBound_nonneg _ _ hB.le))
  refine ⟨D+1,by positivity,?_⟩
  intro Z hZ j
  have hr : 0<(2:ℝ)^j/Z := div_pos (by positivity) hZ
  have hh := uniform_fourier_one_plus_moment (gaussianDyadicSchwartz Z hZ j) J
    (((2:ℝ)^j/Z)^a) B (Real.rpow_nonneg hr.le a) hB.le (hsource Z hZ j)
  change ((2:ℝ)^j/Z)^a*gaussianFourierMoment J Z hZ j≤D at hh
  have hp := mul_le_mul_of_nonneg_left hh (Real.rpow_pos_of_pos hr (-a)).le
  have hc : ((2:ℝ)^j/Z)^(-a)*((2:ℝ)^j/Z)^a=1 := by
    rw [mul_comm,scale_rpow_cancel _ a hr]
  rw [←mul_assoc,hc,one_mul] at hp
  exact hp.trans (by nlinarith [Real.rpow_pos_of_pos hr (-a)])

end
end GRWTSK.Analysis.MellinTransform.GaussianFourierMoments
