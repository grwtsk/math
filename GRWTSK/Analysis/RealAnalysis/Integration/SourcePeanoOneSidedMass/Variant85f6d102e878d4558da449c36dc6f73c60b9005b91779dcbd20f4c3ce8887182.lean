import SourcePeanoPositiveWindow

/-!
The positive and negative parts of the complete actual Peano pairing dominate
the corresponding critical-weight masses on a fixed fractional source window.
No signed component is removed from the original pairing.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourcePeanoOneSidedMass
open MeasureTheory Set
open SourceNativeReadout SourceActualWeightedPeano SourceFullPeanoEnergy SourcePeanoPositiveWindow
noncomputable section

def criticalOneSidedMass (σ T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, Real.exp (3 * u / 2) * max (σ * fullPeanoError u) 0

def actualOneSidedPairing (σ A : ℝ) : ℝ :=
  ∫ u in Ioi (0 : ℝ), max (σ * fullPeanoError u *
    deriv (deriv (weightedCorrelation A)) u) 0

theorem actualOneSidedPairing_integrable (σ A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun u ↦ max (σ * fullPeanoError u *
      deriv (deriv (weightedCorrelation A)) u) 0) (Ioi (0 : ℝ)) := by
  simpa only [IntegrableOn, mul_assoc] using
    ((fullPeanoError_pairing_integrable A hA).const_mul σ).pos_part

theorem oneSided_window_pointwise (σ A u : ℝ) (hA : 10 ≤ A)
    (hu : 0 ≤ u) (huA : u ≤ A / 20) :
    (3 / 2) * (Real.exp (3 * u / 2) * max (σ * fullPeanoError u) 0) ≤
      max (σ * fullPeanoError u * deriv (deriv (weightedCorrelation A)) u) 0 := by
  have hw := weightedCorrelation_second_deriv_window A u hA hu huA
  have hd : 0 ≤ deriv (deriv (weightedCorrelation A)) u :=
    (by positivity : (0 : ℝ) ≤ (3 / 2) * Real.exp (3 * u / 2)).trans hw
  calc
    _ = ((3 / 2) * Real.exp (3 * u / 2)) * max (σ * fullPeanoError u) 0 := by ring
    _ ≤ deriv (deriv (weightedCorrelation A)) u * max (σ * fullPeanoError u) 0 :=
      mul_le_mul_of_nonneg_right hw (le_max_right _ _)
    _ = _ := by rw [mul_comm, max_mul_of_nonneg _ _ hd, zero_mul]

theorem criticalOneSidedMass_window_integrable (σ A : ℝ) (hA : 10 ≤ A) :
    IntegrableOn (fun u ↦ Real.exp (3 * u / 2) * max (σ * fullPeanoError u) 0)
      (Ioc (0 : ℝ) (A / 20)) := by
  have hA1 : 1 ≤ A := by linarith
  have hgi := (actualOneSidedPairing_integrable σ A hA1).mono_set
    (show Ioc (0 : ℝ) (A / 20) ⊆ Ioi 0 from fun _ hu ↦ hu.1)
  have he : Measurable fullPeanoError := by
    unfold fullPeanoError
    exact fullPeanoRaw_measurable.sub (by fun_prop)
  have hm : Measurable (fun u : ℝ ↦ Real.exp (3 * u / 2) * max (σ * fullPeanoError u) 0) :=
    (by fun_prop : Measurable (fun u : ℝ ↦ Real.exp (3 * u / 2))).mul
      ((measurable_const.mul he).max measurable_const)
  apply hgi.mono' hm.aestronglyMeasurable
  filter_upwards [self_mem_ae_restrict measurableSet_Ioc] with u hu
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (Real.exp_pos _).le (le_max_right _ _))]
  have hp := oneSided_window_pointwise σ A u hA hu.1.le hu.2
  have hn := mul_nonneg (Real.exp_pos (3 * u / 2)).le (le_max_right (σ * fullPeanoError u) 0)
  linarith

/-- Any constant controlling a whole one-sided source pairing must control its critical mass. -/
theorem actualOneSidedPairing_dominates_window (σ A : ℝ) (hA : 10 ≤ A) :
    (3 / 2) * criticalOneSidedMass σ (A / 20) ≤ actualOneSidedPairing σ A := by
  have hA1 : 1 ≤ A := by linarith
  have hgi := actualOneSidedPairing_integrable σ A hA1
  have hsub : Ioc (0 : ℝ) (A / 20) ⊆ Ioi 0 := fun _ hu ↦ hu.1
  unfold criticalOneSidedMass actualOneSidedPairing
  rw [intervalIntegral.integral_of_le (by linarith : (0 : ℝ) ≤ A / 20)]
  calc
    _ = ∫ u in Ioc (0 : ℝ) (A / 20),
        (3 / 2) * (Real.exp (3 * u / 2) * max (σ * fullPeanoError u) 0) :=
      (integral_const_mul _ _).symm
    _ ≤ ∫ u in Ioc (0 : ℝ) (A / 20),
        max (σ * fullPeanoError u * deriv (deriv (weightedCorrelation A)) u) 0 := by
      apply setIntegral_mono_on ((criticalOneSidedMass_window_integrable σ A hA).const_mul _)
        (hgi.mono_set hsub) measurableSet_Ioc
      intro u hu
      exact oneSided_window_pointwise σ A u hA hu.1.le hu.2
    _ ≤ _ := setIntegral_mono_set hgi
      (Filter.Eventually.of_forall (fun _ ↦ le_max_right _ _)) hsub.eventuallyLE

/-- Critical-mass spikes propagate to the actual source at the same fixed linear rate. -/
theorem oneSided_spikes_transfer (σ c : ℝ)
    (hspike : ∀ R : ℝ, ∃ T : ℝ, R ≤ T ∧ c * T < criticalOneSidedMass σ T) :
    ∀ R : ℝ, ∃ A : ℝ, max 10 R ≤ A ∧
      (3 * c / 40) * A < actualOneSidedPairing σ A := by
  intro R
  obtain ⟨T, hT, hs⟩ := hspike (max (1 / 2) (R / 20))
  have hT1 := (le_max_left (1 / 2 : ℝ) (R / 20)).trans hT
  have hTR := (le_max_right (1 / 2 : ℝ) (R / 20)).trans hT
  have hA : (10 : ℝ) ≤ 20 * T := by linarith
  refine ⟨20 * T, max_le hA (by linarith), ?_⟩
  have hw := actualOneSidedPairing_dominates_window σ (20 * T) hA
  have he : 20 * T / 20 = T := by ring
  rw [he] at hw
  calc
    _ = (3 / 2) * (c * T) := by ring
    _ < (3 / 2) * criticalOneSidedMass σ T := by linarith
    _ ≤ _ := hw

end
end FormalResearch.RiemannHypothesis.SourcePeanoOneSidedMass
