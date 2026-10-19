import DensityDecoder

/-!
Prime-informed correction of the literal density decoder.
Direction: grwtsk contributors. Scratch proof construction: OpenAI Codex.
This changes approximation cost only; a uniform signed lower budget remains open.
-/
set_option autoImplicit false
noncomputable section
namespace RH16Tandem.PrimeAtomDecoder
open MeasureTheory Set
open JointUniformResearch FinitePairedDecoderResearch ContinuousResearch.DensityDecoder
open FormalResearch.RiemannHypothesis
open SourceCriticalDensityQuadrature SourceCriticalRemovedPrimeWork SourceCriticalDecayWork
open SourcePairedTailTest WeightedPrimeAbel

/-- The complete closed atom set, with the source's unchanged cutoff. -/
def primeAtoms (A : ℝ) : Finset ℝ :=
  (primeLogInventory (2*A)).image (fun p : ℕ => Real.log (p : ℝ))

/-- Actual prime observations replace only point values of a finite reconstruction. -/
def primeCorrected (A : ℝ) (F : ℝ → ℝ) (u : ℝ) : ℝ :=
  if u ∈ primeAtoms A then pairedTailTest A u else F u

theorem primeCorrected_at_atom (A : ℝ) (F : ℝ → ℝ) (p : ℕ)
    (hp : p ∈ primeLogInventory (2*A)) :
    primeCorrected A F (Real.log p) = pairedTailTest A (Real.log p) := by
  have hm : Real.log (p : ℝ) ∈ primeAtoms A :=
    Finset.mem_image.mpr ⟨p, hp, rfl⟩
  simp [primeCorrected, hm]

theorem primeCorrected_ae (A : ℝ) (F : ℝ → ℝ) :
    primeCorrected A F =ᵐ[volume] F := by
  filter_upwards [(primeAtoms A).finite_toSet.countable.ae_notMem volume] with u hu
  simp only [Finset.mem_coe] at hu
  simp [primeCorrected, hu]

theorem primeCorrected_integrable (A : ℝ) (F : ℝ → ℝ)
    (hF : Integrable F) : Integrable (primeCorrected A F) :=
  hF.congr (primeCorrected_ae A F).symm

theorem primeCorrected_primeLogSum (A : ℝ) (F : ℝ → ℝ) :
    primeLogSum (2*A) (primeCorrected A F) =
      primeLogSum (2*A) (pairedTailTest A) := by
  unfold primeLogSum
  apply Finset.sum_congr rfl
  intro p hp
  rw [primeCorrected_at_atom A F p hp]

theorem primeCorrected_density_integral (A : ℝ) (F : ℝ → ℝ) :
    (∫ u in 0..2*A, criticalDensity u*primeCorrected A F u) =
      ∫ u in 0..2*A, criticalDensity u*F u := by
  apply intervalIntegral.integral_congr_ae
  filter_upwards [primeCorrected_ae A F] with u hu
  intro _
  rw [hu]

/-- Atomic uncertainty is zero; only the original continuous density error remains. -/
theorem primeCorrected_readout_error {A ε : ℝ} (hA : 1 ≤ A) (hε : 0 ≤ ε)
    (F : ℝ → ℝ) (hF : IntervalIntegrable F volume 0 (2*A))
    (herr : ∀ u∈Icc 0 (2*A), |F u-pairedTailTest A u|≤ε) :
    |densityReadout A (primeCorrected A F)-criticalRemovedPairedWork A| ≤
      ε*(2*A-1+criticalDecay (2*A)) := by
  rw [← densityReadout_actual hA]
  unfold densityReadout
  rw [primeCorrected_primeLogSum, primeCorrected_density_integral]
  have he : primeLogSum (2*A) (pairedTailTest A) -
      (∫ u in 0..2*A, criticalDensity u*F u) -
      (primeLogSum (2*A) (pairedTailTest A) -
        ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u) =
      -((∫ u in 0..2*A, criticalDensity u*F u) -
        ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u) := by ring
  rw [he, abs_neg]
  exact density_integral_error hA hε F hF herr

/-- The arithmetic point corrections retain their complete signed increment. -/
theorem primeCorrected_readout_increment (A : ℝ) (F : ℝ → ℝ) :
    densityReadout A (primeCorrected A F)-densityReadout A F =
      primeLogSum (2*A) (fun u => pairedTailTest A u-F u) := by
  unfold densityReadout
  rw [primeCorrected_primeLogSum, primeCorrected_density_integral]
  unfold primeLogSum
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib]
  ring

/-- An all-real schedule using the continuous cost, with no Mertens constant. -/
def primeResolutionCount (η A : ℝ) : ℕ :=
  max 1 (Nat.ceil (22*A^2*Real.exp A/η))

theorem primeResolutionCount_pos (η A : ℝ) :
    1 ≤ primeResolutionCount η A := le_max_left _ _

theorem primeResolutionCount_monotone {η : ℝ} (hη : 0 < η) :
    MonotoneOn (primeResolutionCount η) (Ici 1) := by
  intro A hA B _hB hAB
  change 1 ≤ A at hA
  apply max_le_max le_rfl
  apply Nat.ceil_mono
  apply div_le_div_of_nonneg_right _ hη.le
  have hA0 : 0 ≤ A := by linarith
  have hB0 : 0 ≤ B := hA0.trans hAB
  gcongr

theorem prime_resolution_budget {η A : ℝ} (hη : 0 < η) (hA : 1 ≤ A) :
    Real.exp A*((1/2 : ℝ)+5/A)*mesh A (primeResolutionCount η A)*(2*A) ≤ η := by
  let n := primeResolutionCount η A
  have hn : 1 ≤ n := primeResolutionCount_pos η A
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hceil : 22*A^2*Real.exp A/η ≤ (n : ℝ) := by
    exact (Nat.le_ceil _).trans (by exact_mod_cast (le_max_right 1 _))
  have hcost : 22*A^2*Real.exp A ≤ η*(n : ℝ) := by
    have hc := (div_le_iff₀ hη).mp hceil
    simpa only [mul_comm] using hc
  have hcoarse := mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_right (modulus_coarse hA) (mesh_pos hA hn).le)
    (show 0 ≤ 2*A by linarith)
  change Real.exp A*((1/2 : ℝ)+5/A)*mesh A n*(2*A) ≤ η
  refine hcoarse.trans ?_
  unfold mesh
  have he : (11/2 : ℝ)*Real.exp A*(2*A/(n : ℝ))*(2*A) =
      (22*A^2*Real.exp A)/(n : ℝ) := by ring
  rw [he]
  exact (div_le_iff₀ hn0).mpr hcost

/-- Genuine finite prime-informed reconstruction with the same fixed error at every real scale. -/
theorem prime_resolving_error {η A : ℝ} (hη : 0 < η) (hA : 1 ≤ A) :
    |densityReadout A (primeCorrected A
      (decodedTest A (mesh A (primeResolutionCount η A)) (primeResolutionCount η A)))-
      criticalRemovedPairedWork A| ≤ η := by
  let n := primeResolutionCount η A
  let h := mesh A n
  have hn : 1 ≤ n := primeResolutionCount_pos η A
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
  have he := primeCorrected_readout_error hA (mul_nonneg hL hh.le)
    (decodedTest A h n) (decodedTest_integrable A h n).intervalIntegrable herr
  have hd : criticalDecay (2*A) ≤ 1 := by
    unfold criticalDecay
    rw [Real.exp_le_one_iff]
    linarith
  have hm : 2*A-1+criticalDecay (2*A) ≤ 2*A := by linarith
  exact (he.trans (mul_le_mul_of_nonneg_left hm (mul_nonneg hL hh.le))).trans
    (prime_resolution_budget hη hA)

/-- Apply the existing tail consumer as soon as the new retained signed budget is supplied. -/
theorem prime_decoder_tail_transfer {η : ℝ} (hη : 0 < η)
    (hbudget : ∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → -B ≤ densityReadout A (primeCorrected A
        (decodedTest A (mesh A (primeResolutionCount η A)) (primeResolutionCount η A)))) :
    CriticalRemovedPairedTailLowerBound := by
  obtain ⟨B,hB,R,hR,hreadout⟩ := hbudget
  refine ⟨B+η,by linarith,R,hR,?_⟩
  intro A hRA
  exact lower_transfer hη.le hB (prime_resolving_error hη (hR.trans hRA)) (hreadout A hRA)

#print axioms primeCorrected_at_atom
#print axioms primeCorrected_ae
#print axioms primeCorrected_integrable
#print axioms primeCorrected_primeLogSum
#print axioms primeCorrected_density_integral
#print axioms primeCorrected_readout_error
#print axioms primeCorrected_readout_increment
#print axioms primeResolutionCount_pos
#print axioms primeResolutionCount_monotone
#print axioms prime_resolution_budget
#print axioms prime_resolving_error
#print axioms prime_decoder_tail_transfer
end RH16Tandem.PrimeAtomDecoder
