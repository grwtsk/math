# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.DensityDecoder.Variant4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d000b00ed2c3d18846409259044a65e427c6db9` · SHA-256 `4d7b33cb9e8194213b9c748324c463505c7737ab17955312e398040074545329`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FiniteDecoderDraft
import FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature

/-! Optional cycle18 actual density decoder, reusing #310's unchanged selector.
Direction grwtsk contributors; scratch construction OpenAI Codex.
No independently supplied signed decoder budget or RH witness is constructed. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.DensityDecoder
open MeasureTheory Set JointUniformResearch FinitePairedDecoderResearch
open FormalResearch.RiemannHypothesis
open SourceCriticalDensityQuadrature SourceCriticalRemovedPrimeWork SourceCriticalDecayWork
open SourcePairedTailTest SourcePairedPrimeWork SourcePairedPrimeAverages
open SourceFirstPrimeAbel SourceDiagonalMainTerm WeightedPrimeAbel

/-- Independently specified complete readout with the actual continuous density. -/
def densityReadout (A : ℝ) (F : ℝ → ℝ) : ℝ :=
  primeLogSum (2*A) F - ∫ u in 0..2*A, criticalDensity u*F u

theorem density_continuous : Continuous criticalDensity := by
  unfold criticalDensity criticalDecay
  fun_prop

theorem density_interval_mass (a b : ℝ) :
    (∫ u in a..b, criticalDensity u) = b-a+criticalDecay b-criticalDecay a := by
  have ha := criticalDensity_integral (a/2)
  have hb := criticalDensity_integral (b/2)
  rw [show 2*(a/2)=a by ring] at ha
  rw [show 2*(b/2)=b by ring] at hb
  have hi := intervalIntegral.integral_interval_sub_left
    (density_continuous.intervalIntegrable (μ:=volume) 0 b)
    (density_continuous.intervalIntegrable (μ:=volume) 0 a)
  rw [ha,hb] at hi
  linarith

theorem cell_density_integrable (h c : ℝ) (j : ℕ) :
    Integrable (fun u => criticalDensity u*(cell h j).indicator (fun _ => c) u) := by
  have he : (fun u => criticalDensity u*(cell h j).indicator (fun _ => c) u) =
      (cell h j).indicator (fun u => criticalDensity u*c) := by
    funext u
    by_cases hu : u∈cell h j <;> simp [hu]
  rw [he]
  apply (integrable_indicator_iff measurableSet_Ioc).mpr
  exact ((density_continuous.intervalIntegrable ((j:ℝ)*h) (((j+1:ℕ):ℝ)*h)).1).mul_const c

theorem density_decoded_integrable (A h : ℝ) (n : ℕ) :
    Integrable (fun u => criticalDensity u*decodedTest A h n u) := by
  unfold decodedTest
  simp_rw [Finset.mul_sum]
  exact integrable_finsetSum (Finset.range n) fun j _ => cell_density_integrable h _ j

/-- Literal weighted cell mass, including both independent decay endpoints. -/
theorem cell_density_integral {h : ℝ} (hh : 0 ≤ h) {j n : ℕ} (hj : j<n) (c : ℝ) :
    (∫ u in 0..(n:ℝ)*h, criticalDensity u*(cell h j).indicator (fun _ => c) u) =
      c*(h+criticalDecay (((j+1:ℕ):ℝ)*h)-criticalDecay ((j:ℝ)*h)) := by
  have hs : Function.support
      (fun u => criticalDensity u*(cell h j).indicator (fun _ => c) u) ⊆
      Ioc 0 ((n:ℝ)*h) := by
    intro u hu
    apply cell_subset hh hj
    by_contra hn
    exact hu (by simp [indicator_of_notMem hn])
  have he : (fun u => criticalDensity u*(cell h j).indicator (fun _ => c) u) =
      (cell h j).indicator (fun u => criticalDensity u*c) := by
    funext u
    by_cases hu : u∈cell h j <;> simp [hu]
  have hle : (j:ℝ)*h ≤ ((j+1:ℕ):ℝ)*h :=
    mul_le_mul_of_nonneg_right (by exact_mod_cast Nat.le_succ j) hh
  rw [intervalIntegral.integral_eq_integral_of_support_subset hs,he,cell,
    integral_indicator measurableSet_Ioc]
  change (∫ u in Ioc ((j:ℝ)*h) (((j+1:ℕ):ℝ)*h), criticalDensity u*c) = _
  rw [← intervalIntegral.integral_of_le hle,intervalIntegral.integral_mul_const,
    density_interval_mass]
  push_cast
  ring

theorem density_decoded_integral {h : ℝ} (hh : 0 ≤ h) (A : ℝ) (n : ℕ) :
    (∫ u in 0..(n:ℝ)*h, criticalDensity u*decodedTest A h n u) =
      ∑ j ∈ Finset.range n, pairedTailTest A (((j+1:ℕ):ℝ)*h)*
        (h+criticalDecay (((j+1:ℕ):ℝ)*h)-criticalDecay ((j:ℝ)*h)) := by
  unfold decodedTest
  simp_rw [Finset.mul_sum]
  rw [intervalIntegral.integral_finsetSum
    (fun j _ => (cell_density_integrable h _ j).intervalIntegrable)]
  apply Finset.sum_congr rfl
  intro j hj
  exact cell_density_integral hh (Finset.mem_range.mp hj) _

/-- Exact cycle18 cell ledger, preserving the same closed prime inventory. -/
theorem density_decoded_ledger {A h : ℝ} (hh : 0 ≤ h) (n : ℕ)
    (hgrid : (n:ℝ)*h=2*A) :
    densityReadout A (decodedTest A h n) =
      ∑ j ∈ Finset.range n, pairedTailTest A (((j+1:ℕ):ℝ)*h)*
        (primeLogPrefix (((j+1:ℕ):ℝ)*h)-primeLogPrefix ((j:ℝ)*h)-
          (h+criticalDecay (((j+1:ℕ):ℝ)*h)-criticalDecay ((j:ℝ)*h))) := by
  unfold densityReadout
  rw [← hgrid,prime_decoded_ledger hh,density_decoded_integral hh,← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem density_mesh_ledger {A : ℝ} (hA : 1 ≤ A) {n : ℕ} (hn : 1 ≤ n) :
    densityReadout A (decodedTest A (mesh A n) n) =
      ∑ j ∈ Finset.range n, pairedTailTest A (((j+1:ℕ):ℝ)*mesh A n)*
        (primeLogPrefix (((j+1:ℕ):ℝ)*mesh A n)-primeLogPrefix ((j:ℝ)*mesh A n)-
          (mesh A n+criticalDecay (((j+1:ℕ):ℝ)*mesh A n)-
            criticalDecay ((j:ℝ)*mesh A n))) :=
  density_decoded_ledger (mesh_pos hA hn).le n (mesh_grid A hn)

/-- Exact source reconstruction, not a fitted definition of the drift. -/
theorem densityReadout_actual {A : ℝ} (hA : 1 ≤ A) :
    densityReadout A (pairedTailTest A) = criticalRemovedPairedWork A :=
  (criticalRemovedPairedWork_eq_density_quadrature hA).symm

/-- The complete source mean and both endpoint compensation terms remain. -/
theorem densityReadout_full_drift {A : ℝ} (hA : 1 ≤ A) :
    densityReadout A (pairedTailTest A) = primeLogSum (2*A) (pairedTailTest A)-
      (negativeTimeMean A-criticalContinuousMoment A+diagonalMainCoefficient A*A-
        1+criticalDecayNegativeMean A) := by
  unfold densityReadout
  rw [criticalDensity_quadrature_eq_full_drift hA]

/-- Actual density mass, not raw interval length, controls the continuous error. -/
theorem density_integral_error {A ε : ℝ} (hA : 1 ≤ A) (_hε : 0 ≤ ε) (F : ℝ → ℝ)
    (hF : IntervalIntegrable F volume 0 (2*A))
    (herr : ∀ u∈Icc 0 (2*A), |F u-pairedTailTest A u|≤ε) :
    |(∫ u in 0..2*A, criticalDensity u*F u)-
      (∫ u in 0..2*A, criticalDensity u*pairedTailTest A u)| ≤
      ε*(2*A-1+criticalDecay (2*A)) := by
  have hD := (pairedTailTest_continuous hA).intervalIntegrable (μ:=volume) 0 (2*A)
  have hρF := hF.continuousOn_mul density_continuous.continuousOn
  have hρD := hD.continuousOn_mul density_continuous.continuousOn
  have hi := (hF.sub hD).continuousOn_mul density_continuous.continuousOn
  have hab : (0:ℝ)≤2*A := by linarith
  have hbound : (∫ u in 0..2*A, |criticalDensity u*(F u-pairedTailTest A u)|) ≤
      ∫ u in 0..2*A, criticalDensity u*ε := by
    apply intervalIntegral.integral_mono_on hab
      (by simpa only [Real.norm_eq_abs] using hi.norm)
      ((density_continuous.mul continuous_const).intervalIntegrable 0 (2*A))
    intro u hu
    rw [abs_mul,abs_of_nonneg (by linarith [(criticalDensity_mem_Icc u hu.1).1])]
    exact mul_le_mul_of_nonneg_left (herr u hu)
      (by linarith [(criticalDensity_mem_Icc u hu.1).1])
  have hnorm := intervalIntegral.abs_integral_le_integral_abs
    (μ:=volume) (f:=fun u=>criticalDensity u*(F u-pairedTailTest A u)) hab
  rw [intervalIntegral.integral_mul_const,criticalDensity_integral] at hbound
  have he : (fun u=>criticalDensity u*(F u-pairedTailTest A u)) =
      fun u=>criticalDensity u*F u-criticalDensity u*pairedTailTest A u := by
    funext u
    ring
  rw [he,intervalIntegral.integral_sub hρF hρD] at hnorm
  exact hnorm.trans (by simpa only [mul_comm] using hbound)

/-- Complete signed perturbation cost uses the literal density mass. -/
theorem densityReadout_error {A ε : ℝ} (hA : 1 ≤ A) (hε : 0 ≤ ε) (F : ℝ → ℝ)
    (hF : IntervalIntegrable F volume 0 (2*A))
    (herr : ∀ u∈Icc 0 (2*A), |F u-pairedTailTest A u|≤ε) :
    |densityReadout A F-criticalRemovedPairedWork A| ≤
      ε*(primeLogPrefix (2*A)+2*A-1+criticalDecay (2*A)) := by
  have hp := primeReadout_error hA hε F herr
  have hd := density_integral_error hA hε F hF herr
  rw [← densityReadout_actual hA]
  unfold densityReadout
  have he : primeLogSum (2*A) F-(∫ u in 0..2*A, criticalDensity u*F u)-
      (primeLogSum (2*A) (pairedTailTest A)-
        ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u) =
      (primeLogSum (2*A) F-primeLogSum (2*A) (pairedTailTest A))-
        ((∫ u in 0..2*A, criticalDensity u*F u)-
          ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u) := by ring
  rw [he]
  exact (abs_sub _ _).trans (by linarith)


/-- First-prime uniform error plus the exact positive density mass. -/
theorem densityReadout_sharp_uniform_error (C : ℝ)
    (hM : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C)
    {A ε : ℝ} (hA : 1 ≤ A) (hε : 0 ≤ ε) (F : ℝ → ℝ)
    (hF : IntervalIntegrable F volume 0 (2*A))
    (herr : ∀ u∈Icc 0 (2*A), |F u-pairedTailTest A u|≤ε) :
    |densityReadout A F-criticalRemovedPairedWork A| ≤
      ε*(4*A+C-1+Real.exp (-A)) := by
  have hm := (abs_le.mp (hM (2*A) (by linarith))).2
  unfold primeLogError at hm
  have he : criticalDecay (2*A)=Real.exp (-A) := by
    unfold criticalDecay
    congr 1
    ring
  rw [← he]
  exact (densityReadout_error hA hε F hF herr).trans
    (mul_le_mul_of_nonneg_left (by linarith) hε)

/-- Coarse error usable on a monotone all-real arithmetic-range path. -/
theorem densityReadout_uniform_error (C : ℝ)
    (hM : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C)
    {A ε : ℝ} (hA : 1 ≤ A) (hε : 0 ≤ ε) (F : ℝ → ℝ)
    (hF : IntervalIntegrable F volume 0 (2*A))
    (herr : ∀ u∈Icc 0 (2*A), |F u-pairedTailTest A u|≤ε) :
    |densityReadout A F-criticalRemovedPairedWork A| ≤ ε*(4*A+C) := by
  have hx : Real.exp (-A)≤1 := Real.exp_le_one_iff.mpr (by linarith)
  exact (densityReadout_sharp_uniform_error C hM hA hε F hF herr).trans
    (mul_le_mul_of_nonneg_left (by linarith) hε)

/-- An optional cycle18 count; #310's original paired-square count is unchanged. -/
def densityResolutionCount (C η A : ℝ) : ℕ :=
  max 1 (Nat.ceil (11*A*Real.exp A*(4*A+C)/η))

theorem densityResolutionCount_pos (C η A : ℝ) :
    1 ≤ densityResolutionCount C η A := le_max_left _ _

theorem density_resolution_budget {C η A : ℝ}
    (hC : 0 ≤ C) (hη : 0 < η) (hA : 1 ≤ A) :
    Real.exp A*((1/2 : ℝ)+5/A)*mesh A (densityResolutionCount C η A)*
      (4*A+C) ≤ η := by
  let n := densityResolutionCount C η A
  have hn : 1 ≤ n := densityResolutionCount_pos C η A
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hceil : 11*A*Real.exp A*(4*A+C)/η ≤ (n : ℝ) := by
    exact (Nat.le_ceil _).trans (by exact_mod_cast (le_max_right 1 _))
  have hcost : 11*A*Real.exp A*(4*A+C) ≤ η*(n : ℝ) := by
    have hc := (div_le_iff₀ hη).mp hceil
    simpa only [mul_comm] using hc
  have hW : 0 ≤ 4*A+C := by linarith
  have hh : 0 ≤ mesh A n := (mesh_pos hA hn).le
  have hcoarse := mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_right (modulus_coarse hA) hh) hW
  change Real.exp A*((1/2 : ℝ)+5/A)*mesh A n*(4*A+C) ≤ η
  refine hcoarse.trans ?_
  unfold mesh
  have he : (11/2 : ℝ)*Real.exp A*(2*A/(n : ℝ))*(4*A+C) =
      (11*A*Real.exp A*(4*A+C))/(n : ℝ) := by ring
  rw [he]
  exact (div_le_iff₀ hn0).mpr hcost

theorem densityResolutionCount_monotone {C η : ℝ} (hC : 0 ≤ C) (hη : 0 < η) :
    MonotoneOn (densityResolutionCount C η) (Ici 1) := by
  intro A hA B _hB hAB
  change 1 ≤ A at hA
  apply max_le_max le_rfl
  apply Nat.ceil_mono
  have hWA : 0 ≤ 4*A+C := by linarith [hA]
  have hA0 : 0 ≤ A := by linarith [hA]
  have hB0 : 0 ≤ B := hA0.trans hAB
  apply div_le_div_of_nonneg_right _ hη.le
  gcongr

/-- Genuine finite reconstruction converges with both real A and its prime inventory. -/
theorem density_resolving_error (C : ℝ)
    (hC : 0 ≤ C) (hM : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C)
    {η A : ℝ} (hη : 0 < η) (hA : 1 ≤ A) :
    |densityReadout A (decodedTest A (mesh A (densityResolutionCount C η A))
        (densityResolutionCount C η A))-criticalRemovedPairedWork A| ≤ η := by
  let n := densityResolutionCount C η A
  let h := mesh A n
  have hn : 1 ≤ n := densityResolutionCount_pos C η A
  have hh : 0 < h := mesh_pos hA hn
  have hgrid : (n : ℝ)*h=2*A := mesh_grid A hn
  have hL : 0 ≤ Real.exp A*((1/2 : ℝ)+5/A) := by positivity
  have herr : ∀ u∈Icc 0 (2*A),
      |decodedTest A h n u-pairedTailTest A u|≤
        Real.exp A*((1/2 : ℝ)+5/A)*h := by
    intro u hu
    have hu' : u∈Icc 0 ((n:ℝ)*h) := by rwa [hgrid]
    obtain ⟨_,_,hlo,hhi⟩ := rightSelector_bounds hh n hu'
    have hmem : rightSelector h n u∈Icc 0 (2*A) := by
      rw [← hgrid]
      exact ⟨hlo,hhi⟩
    rw [decodedTest_eq_comp hA hh n]
    exact (paired_lipschitz hA hu hmem).trans
      (mul_le_mul_of_nonneg_left (rightSelector_dist hh n hu') hL)
  have he := densityReadout_uniform_error C hM hA (mul_nonneg hL hh.le)
    (decodedTest A h n) (decodedTest_integrable A h n).intervalIntegrable herr
  exact he.trans (density_resolution_budget hC hη hA)

/-- The count constant is supplied by actual unconditional Mertens, not a new hypothesis. -/
theorem density_resolving_error_unconditional :
    ∃ C : ℝ, 0 ≤ C ∧
      (∀ η : ℝ, 0 < η → MonotoneOn (densityResolutionCount C η) (Ici 1)) ∧
      ∀ η A : ℝ, 0 < η → 1 ≤ A →
        |densityReadout A (decodedTest A (mesh A (densityResolutionCount C η A))
          (densityResolutionCount C η A))-criticalRemovedPairedWork A| ≤ η := by
  obtain ⟨C,hC,hM⟩ := primeLogError_uniformly_bounded
  exact ⟨C,hC,fun _ hη => densityResolutionCount_monotone hC hη,
    fun _ _ hη hA => density_resolving_error C hC hM hη hA⟩

/-- A signed finite lower budget remains explicit; decoding only transfers it. -/
theorem density_decoder_tail_transfer {C η : ℝ} (hC : 0 ≤ C)
    (hM : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C) (hη : 0 < η)
    (hbudget : ∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → -B ≤
        densityReadout A (decodedTest A (mesh A (densityResolutionCount C η A))
          (densityResolutionCount C η A))) :
    CriticalRemovedPairedTailLowerBound := by
  obtain ⟨B,hB,R,hR,hreadout⟩ := hbudget
  refine ⟨B+η,by linarith,R,hR,?_⟩
  intro A hRA
  exact lower_transfer hη.le hB
    (density_resolving_error C hC hM hη (hR.trans hRA)) (hreadout A hRA)

#print axioms densityReadout
#print axioms density_continuous
#print axioms density_interval_mass
#print axioms cell_density_integrable
#print axioms density_decoded_integrable
#print axioms cell_density_integral
#print axioms density_decoded_integral
#print axioms density_decoded_ledger
#print axioms density_mesh_ledger
#print axioms densityReadout_actual
#print axioms densityReadout_full_drift
#print axioms density_integral_error
#print axioms densityReadout_error
#print axioms densityReadout_sharp_uniform_error
#print axioms densityReadout_uniform_error
#print axioms densityResolutionCount
#print axioms densityResolutionCount_pos
#print axioms density_resolution_budget
#print axioms densityResolutionCount_monotone
#print axioms density_resolving_error
#print axioms density_resolving_error_unconditional
#print axioms density_decoder_tail_transfer

end ContinuousResearch.DensityDecoder

```
