import Mathlib.Analysis.Fourier.LpSpace
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.PrimePhaseMultiplierBounds
import GRWTSK.Analysis.AsymptoticAnalysis.PrimeTranslationBoundContracts
import GRWTSK.Analysis.MeasureTheory.Function.Lp.CausalRestrictionBounds

/-! Classical L¹∩L² Plancherel bridge for the literal angular-frequency transform.
The proof identifies the actual Fourier integral with the L² transform through
Schwartz pairings and local-integrability uniqueness. It then constructs every
field of the exact FourierReduction interface for the finite Möbius source.
No narrow-energy, reserve, P04, or RH bound is supplied or assumed. -/

noncomputable section
open MeasureTheory
open scoped FourierTransform ContDiff
namespace PPNCP04.Plancherel

theorem test_pairing (g : ℝ → ℂ) (hg : Integrable g)
    (φ : SchwartzMap ℝ ℂ) :
    (∫ ξ : ℝ, φ ξ * (𝓕 g) ξ) = ∫ u : ℝ, (𝓕 φ) u * g u := by
  have h := VectorFourier.integral_fourierIntegral_smul_eq_flip (L := innerₗ ℝ)
      (μ := volume) (ν := volume)
      Real.continuous_fourierChar continuous_inner hg φ.integrable
  simp only [flip_innerₗ, smul_eq_mul] at h
  calc
    _ = ∫ ξ : ℝ, (𝓕 g) ξ * φ ξ := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      exact mul_comm _ _
    _ = ∫ u : ℝ, g u * (𝓕 φ) u := h
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with u
      exact mul_comm _ _

theorem integralFourier_eq_l2_ae (g : ℝ → ℂ) (hg : Integrable g)
    (hm : MemLp g 2 volume) :
    (𝓕 g : ℝ → ℂ) =ᵐ[volume] (𝓕 (hm.toLp g) : Lp ℂ 2 volume) := by
  let f : Lp ℂ 2 volume := hm.toLp g
  have hc : Continuous (𝓕 g : ℝ → ℂ) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ).continuous₂ hg
  apply ae_eq_of_integral_contDiff_smul_eq hc.locallyIntegrable
    ((Lp.memLp (𝓕 f)).locallyIntegrable (by norm_num))
  intro t ht hs
  have hcs : HasCompactSupport (Complex.ofRealCLM ∘ t) := hs.comp_left rfl
  have hcd : ContDiff ℝ ∞ (Complex.ofRealCLM ∘ t) := by fun_prop
  let φ : SchwartzMap ℝ ℂ := hcs.toSchwartzMap hcd
  have hdist := congrArg (fun d : TemperedDistribution ℝ ℂ => d φ)
    (Lp.fourier_toTemperedDistribution_eq f)
  simp only [TemperedDistribution.fourier_apply,
    Lp.toTemperedDistribution_apply, smul_eq_mul] at hdist
  have hinput : (∫ u : ℝ, (𝓕 φ) u * g u) =
      ∫ u : ℝ, (𝓕 φ) u * f u := by
    apply integral_congr_ae
    filter_upwards [hm.coeFn_toLp] with u hu
    simp only [f, hu]
  calc
    _ = ∫ ξ : ℝ, φ ξ * (𝓕 g) ξ := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      simp [φ, RCLike.real_smul_eq_coe_mul]
    _ = ∫ u : ℝ, (𝓕 φ) u * g u := test_pairing g hg φ
    _ = ∫ u : ℝ, (𝓕 φ) u * f u := hinput
    _ = ∫ ξ : ℝ, φ ξ * (𝓕 f : Lp ℂ 2 volume) ξ := hdist
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      simp [φ, RCLike.real_smul_eq_coe_mul]

theorem integral_norm_sq_eq_l2 (g : ℝ → ℂ) (hm : MemLp g 2 volume) :
    (∫ u : ℝ, ‖g u‖ ^ 2) = ‖hm.toLp g‖ ^ 2 := by
  rw [← real_inner_self_eq_norm_sq (hm.toLp g), L2.inner_def]
  simp only [real_inner_self_eq_norm_sq]
  apply integral_congr_ae
  filter_upwards [hm.coeFn_toLp] with u hu
  rw [hu]

theorem integralFourier_memLp (g : ℝ → ℂ) (hg : Integrable g)
    (hm : MemLp g 2 volume) : MemLp (𝓕 g : ℝ → ℂ) 2 volume :=
  (memLp_congr_ae (integralFourier_eq_l2_ae g hg hm)).2
    (Lp.memLp (𝓕 (hm.toLp g)))

theorem integralFourier_parseval (g : ℝ → ℂ) (hg : Integrable g)
    (hm : MemLp g 2 volume) :
    (∫ ξ : ℝ, ‖(𝓕 g) ξ‖ ^ 2) = ∫ u : ℝ, ‖g u‖ ^ 2 := by
  calc
    _ = ∫ ξ : ℝ, ‖(𝓕 (hm.toLp g) : Lp ℂ 2 volume) ξ‖ ^ 2 := by
      apply integral_congr_ae
      filter_upwards [integralFourier_eq_l2_ae g hg hm] with ξ hξ
      rw [hξ]
    _ = ‖(Lp.memLp (𝓕 (hm.toLp g))).toLp
        (𝓕 (hm.toLp g) : Lp ℂ 2 volume)‖ ^ 2 := integral_norm_sq_eq_l2 _ _
    _ = ‖hm.toLp g‖ ^ 2 := by simp
    _ = _ := (integral_norm_sq_eq_l2 g hm).symm

theorem rawFourier_eq_fourier (g : ℝ → ℂ) (ξ : ℝ) :
    PPNC.rawFourier g ξ = (𝓕 g) (ξ / (2 * Real.pi)) := by
  rw [PPNC.rawFourier, Fourier.fourierIntegral_def, Real.fourier_eq]
  apply integral_congr_ae
  filter_upwards [] with u
  rw [Real.inner_apply]

theorem rawFourier_square_integrable (g : ℝ → ℂ) (hg : Integrable g)
    (hm : MemLp g 2 volume) : Integrable (fun ξ : ℝ => ‖PPNC.rawFourier g ξ‖ ^ 2) := by
  have hi := (integralFourier_memLp g hg hm).integrable_norm_pow
    (by decide : (2 : ℕ) ≠ 0)
  have hraw : (fun ξ : ℝ => ‖PPNC.rawFourier g ξ‖ ^ 2) =
      fun ξ : ℝ => ‖(𝓕 g) (ξ / (2 * Real.pi))‖ ^ 2 := by
    funext ξ
    rw [rawFourier_eq_fourier]
  rw [hraw]
  exact hi.comp_div (by positivity)

theorem rawFourier_parseval (g : ℝ → ℂ) (hg : Integrable g)
    (hm : MemLp g 2 volume) :
    (2 * Real.pi)⁻¹ * (∫ ξ : ℝ, ‖PPNC.rawFourier g ξ‖ ^ 2) =
      ∫ u : ℝ, ‖g u‖ ^ 2 := by
  have hraw : (fun ξ : ℝ => ‖PPNC.rawFourier g ξ‖ ^ 2) =
      fun ξ : ℝ => ‖(𝓕 g) (ξ / (2 * Real.pi))‖ ^ 2 := by
    funext ξ
    rw [rawFourier_eq_fourier]
  rw [hraw, Measure.integral_comp_div (fun ξ : ℝ => ‖(𝓕 g : ℝ → ℂ) ξ‖ ^ 2)
      (2 * Real.pi),
    abs_of_pos (by positivity : 0 < 2 * Real.pi),
    smul_eq_mul, integralFourier_parseval g hg hm]
  field_simp

theorem windowedSource_memLp (P : Finset ℕ) (T : ℝ) (hP : ∀ p ∈ P, p.Prime) :
    MemLp (windowedSource P T) 2 volume :=
  (ASBNP04.FiniteProduct.restricted_source_memLp_two P hP T).ofReal

theorem windowedSource_integrable (P : Finset ℕ) (T : ℝ) (hP : ∀ p ∈ P, p.Prime) :
    Integrable (windowedSource P T) := FourierBlock.windowedState_integrable P T hP

theorem windowedSource_energy (P : Finset ℕ) (T : ℝ) :
    (∫ u : ℝ, ‖windowedSource P T u‖ ^ 2) = sourceEnergy P T := by
  simp only [windowedSource, Complex.norm_real, Real.norm_eq_abs, sq_abs]
  exact ASBNP04.FiniteProduct.integral_restricted_source_square P T

def blockWindow (P B : Finset ℕ) (T : ℝ) (u : ℝ) : ℂ :=
  (Cutoff.blockAction B (restrict T (primeState P)) u : ℂ)

theorem blockWindow_memLp (P B : Finset ℕ) (T : ℝ) (hP : ∀ p ∈ P, p.Prime) :
    MemLp (blockWindow P B T) 2 volume :=
  (Cutoff.cascade_memLp_two B.toList
    (ASBNP04.FiniteProduct.restricted_source_memLp_two P hP T)).ofReal

theorem blockWindow_integrable (P B : Finset ℕ) (T : ℝ)
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) :
    Integrable (blockWindow P B T) := by
  have heq := FourierBlock.ordinaryCascade_realBridge B.toList
    (by simpa only [Finset.mem_toList] using hB) (restrict T (primeState P))
    (FourierBlock.windowedState_causal P T)
  have hi := FourierBlock.ordinaryCascade_integrable B.toList
    (windowedSource_integrable P T hP)
  change Integrable (FourierBlock.ordinaryCascade B.toList
    (fun u => (restrict T (primeState P) u : ℂ))) at hi
  rw [heq] at hi
  exact hi

theorem blockWindow_rawFourier (P B : Finset ℕ) (T ξ : ℝ)
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) :
    PPNC.rawFourier (blockWindow P B T) ξ =
      PPNC.blockMultiplier B ξ * PPNC.rawFourier (windowedSource P T) ξ :=
  FourierBlock.rawFourier_windowed_primeBlock P B T ξ hP hB

theorem blockDensity_eq (P B : Finset ℕ) (T : ℝ)
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) :
    Charts.density B (Charts.spectrum (windowedSource P T)) =
      fun ξ => ‖PPNC.rawFourier (blockWindow P B T) ξ‖ ^ 2 := by
  funext ξ
  rw [blockWindow_rawFourier P B T ξ hP hB]
  simp only [Charts.density, Charts.spectrum, norm_mul, mul_pow]

theorem actualFourierReduction (P B : Finset ℕ) (T : ℝ)
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) (hd : Disjoint P B) :
    FourierReduction P B T := by
  have hs := windowedSource_integrable P T hP
  have hsm := windowedSource_memLp P T hP
  have hb := blockWindow_integrable P B T hP hB
  have hbm := blockWindow_memLp P B T hP
  have hden := blockDensity_eq P B T hP hB
  constructor
  · rw [hden]
    exact rawFourier_square_integrable _ hb hbm
  · exact rawFourier_square_integrable _ hs hsm
  · exact (rawFourier_parseval _ hs hsm).trans (windowedSource_energy P T)
  · calc
      sourceEnergy (P ∪ B) T ≤ ∫ u, ‖blockWindow P B T u‖ ^ 2 :=
        Cutoff.actual_cutoff_complex_energy_bound P B T hP hB hd.symm
      _ = (2 * Real.pi)⁻¹ * ∫ ξ, ‖PPNC.rawFourier (blockWindow P B T) ξ‖ ^ 2 :=
        (rawFourier_parseval _ hb hbm).symm
      _ = _ := by rw [Charts.packetEnergy, hden]

theorem actualFourierReductionObligation : FourierReductionObligation := by
  intro T P B η h
  apply actualFourierReduction P B T
  · intro p hp
    exact (Finset.mem_filter.mp (h.previous_primes hp)).2
  · intro p hp
    exact (Finset.mem_filter.mp (h.block_primes hp)).2
  · exact h.disjoint

/-- Literal broad/narrow source-energy reduction, with the classical Fourier
interface fully proved rather than assumed. -/
theorem actual_broad_narrow_bound (P B : Finset ℕ) (T κ : ℝ)
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) (hd : Disjoint P B) :
    sourceEnergy (P ∪ B) T ≤
      blockAmplification κ B * sourceEnergy P T + narrowEnergy κ P B T :=
  fourier_reduction_broad_bound P B T κ (actualFourierReduction P B T hP hB hd)

/-- The sole remaining input to this one-block return is the literal narrow
reserve inequality; none of its arithmetic substance is hidden in Plancherel. -/
theorem actual_narrow_return (A : ReserveFunctional) (P B : Finset ℕ)
    (T κ C q : ℝ) (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime)
    (hd : Disjoint P B)
    (hnarrow : narrowEnergy κ P B T ≤
      blockAmplification κ B * A.value P T - A.value (P ∪ B) T +
        C * harmonicMass B * (1 + T) ^ q) :
    potential A (P ∪ B) T ≤ blockAmplification κ B * potential A P T +
      C * harmonicMass B * (1 + T) ^ q :=
  narrow_contract_returns_amortized_step A P B T κ C q
    (actualFourierReduction P B T hP hB hd) hnarrow

end PPNCP04.Plancherel

#print axioms PPNCP04.Plancherel.integralFourier_eq_l2_ae
#print axioms PPNCP04.Plancherel.rawFourier_parseval
#print axioms PPNCP04.Plancherel.actualFourierReductionObligation

#print axioms PPNCP04.Plancherel.actual_broad_narrow_bound
#print axioms PPNCP04.Plancherel.actual_narrow_return
