import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerPhaseDefect
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionDirect
import Mathlib.MeasureTheory.Function.L2Space

/-!
# The complete source quadratic form on a fixed Hilbert space

The real multiplier contains the Gamma contribution and the entire strict prime-power
inventory simultaneously. Its Gamma form domain is independent of the radius. The
finite cosine multiplier is a bounded perturbation at each radius; its bound retains
the full radius-dependent weight and is not a uniform estimate.

The actual Fourier source is a genuine norm-one vector in complex L². The exact
quadratic representation below is structural progress only: no all-radius lower
bound or estimate obligation is constructed.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.FullQuadraticOperator

open MeasureTheory
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeFourier CorrelationSpectralLens PrimePowerPhaseDefect

noncomputable section

/-- The fixed frequency-space Hilbert space for the complete source form. -/
abbrev Hilbert := Lp (α := ℝ) ℂ 2 volume

/-- The actual source's angular Fourier transform with its exact Plancherel scale. -/
def sourceFourierVector (A ξ : ℝ) : ℂ :=
  sourceFourier (normalizedTest explicitSecondDerivative A) ξ / (Real.sqrt (2 * Real.pi) : ℂ)

/-- The actual Fourier vector has exactly the already proved source spectral density. -/
theorem source_fourier_vector_norm_sq (A ξ : ℝ) :
    Complex.normSq (sourceFourierVector A ξ) = spectralDensity A ξ := by
  rw [sourceFourierVector, Complex.normSq_div, Complex.normSq_ofReal]
  rw [← pow_two, Real.sq_sqrt (by positivity)]
  rfl

/-- The actual Fourier source vector is square integrable at every admitted radius. -/
theorem source_fourier_vector_mem_lp (A : ℝ) (hA : 1 ≤ A) :
    MemLp (sourceFourierVector A) 2 volume := by
  have hc : Continuous (sourceFourierVector A) :=
    (sourceFourier_continuous (normalizedTest_integrable A (by linarith))).div_const _
  apply (memLp_two_iff_integrable_sq_norm hc.aestronglyMeasurable).mpr
  simpa only [← Complex.normSq_eq_norm_sq, source_fourier_vector_norm_sq] using
    spectralDensity_integrable A hA

/-- The genuine L² class of the actual normalized Fourier source. -/
def sourceVector (A : ℝ) (hA : 1 ≤ A) : Hilbert :=
  (source_fourier_vector_mem_lp A hA).toLp (sourceFourierVector A)

/-- The L² representative agrees almost everywhere with the source Fourier function. -/
theorem source_vector_ae_eq (A : ℝ) (hA : 1 ≤ A) :
    sourceVector A hA =ᵐ[volume] sourceFourierVector A :=
  MemLp.coeFn_toLp _

/-- Exact unit density mass is the genuine Hilbert norm-square normalization. -/
theorem source_vector_norm_sq (A : ℝ) (hA : 1 ≤ A) : ‖sourceVector A hA‖ ^ 2 = 1 := by
  rw [← inner_self_eq_norm_sq (𝕜 := ℂ), L2.inner_def]
  have he : (∫ ξ, inner ℂ (sourceVector A hA ξ) (sourceVector A hA ξ)) =
      ((∫ ξ, spectralDensity A ξ : ℝ) : ℂ) := by
    calc
      _ = ∫ ξ, (spectralDensity A ξ : ℂ) := by
        apply integral_congr_ae
        filter_upwards [source_vector_ae_eq A hA] with ξ hξ
        rw [hξ]
        simp only [RCLike.inner_apply, Complex.mul_conj, source_fourier_vector_norm_sq]
      _ = _ := integral_ofReal
  have hh := congrArg Complex.re he
  simp only [Complex.ofReal_re] at hh
  simpa [spectralDensity_integral A hA] using hh

/-- The actual source Fourier class has exact Hilbert norm one. -/
theorem source_vector_norm (A : ℝ) (hA : 1 ≤ A) : ‖sourceVector A hA‖ = 1 := by
  nlinarith [source_vector_norm_sq A hA, norm_nonneg (sourceVector A hA)]

/-- The independent common Gamma form domain retains absolute weighted integrability. -/
def GammaFormDomain (f : Hilbert) : Prop :=
  Integrable (fun ξ ↦ |archimedeanMultiplier ξ| * Complex.normSq (f ξ)) volume

/-- The complete quadratic evaluation keeps the Gamma and every prime-power multiplier together. -/
def fullQuadraticForm (A : ℝ) (f : Hilbert) : ℝ :=
  ∫ ξ, spectralMultiplier A ξ * Complex.normSq (f ξ)

/-- The complete sesquilinear evaluation on the common Gamma form domain. -/
def fullSesquilinearForm (A : ℝ) (f g : Hilbert) : ℂ :=
  ∫ ξ, (spectralMultiplier A ξ : ℂ) * conj (f ξ) * g ξ

/-- Every Hilbert vector has a genuinely integrable squared pointwise norm. -/
theorem hilbert_norm_sq_integrable (f : Hilbert) :
    Integrable (fun ξ ↦ Complex.normSq (f ξ)) volume := by
  simpa only [Complex.normSq_eq_norm_sq] using
    (memLp_two_iff_integrable_sq_norm (Lp.aestronglyMeasurable f)).mp (Lp.memLp f)

/-- The Gamma form domain contains zero. -/
theorem gamma_form_domain_zero : GammaFormDomain 0 := by
  simp [GammaFormDomain]

/-- The common Gamma domain is closed under complex scalar multiplication. -/
theorem gamma_form_domain_smul (c : ℂ) (f : Hilbert) (hf : GammaFormDomain f) :
    GammaFormDomain (c • f) := by
  apply (hf.const_mul (Complex.normSq c)).congr
  filter_upwards [Lp.coeFn_smul c f] with ξ hξ
  rw [hξ, Pi.smul_apply, smul_eq_mul, Complex.normSq_mul]
  ring

/-- The common Gamma domain is closed under addition by the quadratic triangle bound. -/
theorem gamma_form_domain_add (f g : Hilbert) (hf : GammaFormDomain f)
    (hg : GammaFormDomain g) : GammaFormDomain (f + g) := by
  have hm : AEStronglyMeasurable
      (fun ξ ↦ |archimedeanMultiplier ξ| * Complex.normSq ((f + g) ξ)) :=
    AdmissionDirect.actual_multiplier_continuous.abs.aestronglyMeasurable.mul
      (Complex.continuous_normSq.comp_aestronglyMeasurable (Lp.aestronglyMeasurable (f + g)))
  apply ((hf.add hg).const_mul 2).mono' hm
  filter_upwards [Lp.coeFn_add f g] with ξ hξ
  simp only [Pi.add_apply, Real.norm_eq_abs]
  rw [abs_of_nonneg (mul_nonneg (abs_nonneg _) (Complex.normSq_nonneg _)), hξ,
    Pi.add_apply]
  have hb : Complex.normSq (f ξ + g ξ) ≤
      2 * (Complex.normSq (f ξ) + Complex.normSq (g ξ)) := by
    simp only [Complex.normSq_eq_norm_sq]
    calc
      _ ≤ (‖f ξ‖ + ‖g ξ‖) ^ 2 :=
        pow_le_pow_left₀ (norm_nonneg _) (norm_add_le _ _) 2
      _ ≤ _ := by nlinarith [sq_nonneg (‖f ξ‖ - ‖g ξ‖)]
  calc
    _ ≤ |archimedeanMultiplier ξ| *
        (2 * (Complex.normSq (f ξ) + Complex.normSq (g ξ))) :=
      mul_le_mul_of_nonneg_left hb (abs_nonneg _)
    _ = _ := by ring

/-- The full Gamma form domain as a complex linear subspace of the fixed Hilbert space. -/
def gammaFormSpace : Submodule ℂ Hilbert where
  carrier := {f | GammaFormDomain f}
  zero_mem' := gamma_form_domain_zero
  add_mem' := fun hf hg ↦ gamma_form_domain_add _ _ hf hg
  smul_mem' := fun c _ hf ↦ gamma_form_domain_smul c _ hf

/-- The whole finite cosine perturbation is bounded at each radius by its full weight budget. -/
theorem cosine_multiplier_abs_le (A ξ : ℝ) : |cosineMultiplier A ξ| ≤ 2 * totalWeight A := by
  apply abs_le.mpr
  constructor
  · simpa only [neg_mul] using cosineMultiplier_lower A ξ
  · rw [cosineMultiplier_eq_budget_add_defect]
    linarith [phaseDefect_le_four_totalWeight A ξ]

/-- The finite arithmetic multiplier is continuous, including every prime power at the cutoff. -/
theorem cosine_multiplier_continuous (A : ℝ) : Continuous (cosineMultiplier A) := by
  unfold cosineMultiplier
  fun_prop

/-- The complete real multiplier is continuous at every fixed radius. -/
theorem spectral_multiplier_continuous (A : ℝ) : Continuous (spectralMultiplier A) :=
  AdmissionDirect.actual_multiplier_continuous.add (cosine_multiplier_continuous A)

/-- The common Gamma domain makes the full absolute quadratic integrand integrable. -/
theorem full_absolute_quadratic_integrable (A : ℝ) (f : Hilbert) (hf : GammaFormDomain f) :
    Integrable (fun ξ ↦ |spectralMultiplier A ξ| * Complex.normSq (f ξ)) volume := by
  have hcos : Integrable (fun ξ ↦ |cosineMultiplier A ξ| * Complex.normSq (f ξ)) := by
    apply (hilbert_norm_sq_integrable f).bdd_mul (c := 2 * totalWeight A)
    · exact (cosine_multiplier_continuous A).abs.aestronglyMeasurable
    · filter_upwards [] with ξ
      simpa only [Real.norm_eq_abs, abs_abs] using cosine_multiplier_abs_le A ξ
  have hm : AEStronglyMeasurable
      (fun ξ ↦ |spectralMultiplier A ξ| * Complex.normSq (f ξ)) :=
    (spectral_multiplier_continuous A).abs.aestronglyMeasurable.mul
      (Complex.continuous_normSq.comp_aestronglyMeasurable (Lp.aestronglyMeasurable f))
  apply (hf.add hcos).mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (abs_nonneg _) (Complex.normSq_nonneg _))]
  simp only [Pi.add_apply]
  exact (mul_le_mul_of_nonneg_right (abs_add_le _ _) (Complex.normSq_nonneg _)).trans_eq
    (add_mul _ _ _)

/-- The full quadratic form is a genuine integral on its stated form domain. -/
theorem full_quadratic_integrable (A : ℝ) (f : Hilbert) (hf : GammaFormDomain f) :
    Integrable (fun ξ ↦ spectralMultiplier A ξ * Complex.normSq (f ξ)) volume := by
  apply (full_absolute_quadratic_integrable A f hf).mono'
    ((spectral_multiplier_continuous A).aestronglyMeasurable.mul
      (Complex.continuous_normSq.comp_aestronglyMeasurable (Lp.aestronglyMeasurable f)))
  filter_upwards [] with ξ
  simp only [Pi.mul_apply]
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (Complex.normSq_nonneg _)]

/-- The complete sesquilinear form is genuinely integrable on its common Gamma domain. -/
theorem full_sesquilinear_integrable (A : ℝ) (f g : Hilbert)
    (hf : GammaFormDomain f) (hg : GammaFormDomain g) :
    Integrable (fun ξ ↦ (spectralMultiplier A ξ : ℂ) * conj (f ξ) * g ξ) volume := by
  have hm : AEStronglyMeasurable
      (fun ξ ↦ (spectralMultiplier A ξ : ℂ) * conj (f ξ) * g ξ) :=
    (Complex.continuous_ofReal.comp (spectral_multiplier_continuous A)).aestronglyMeasurable.mul
      (Complex.continuous_conj.comp_aestronglyMeasurable (Lp.aestronglyMeasurable f)) |>.mul
        (Lp.aestronglyMeasurable g)
  apply ((full_absolute_quadratic_integrable A f hf).add
    (full_absolute_quadratic_integrable A g hg)).mono' hm
  filter_upwards [] with ξ
  simp only [Pi.add_apply, norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_conj]
  have hfg : ‖f ξ‖ * ‖g ξ‖ ≤ Complex.normSq (f ξ) + Complex.normSq (g ξ) := by
    simp only [Complex.normSq_eq_norm_sq]
    nlinarith [sq_nonneg (‖f ξ‖ - ‖g ξ‖), sq_nonneg ‖f ξ‖, sq_nonneg ‖g ξ‖]
  calc
    _ = |spectralMultiplier A ξ| * (‖f ξ‖ * ‖g ξ‖) := by ring
    _ ≤ |spectralMultiplier A ξ| * (Complex.normSq (f ξ) + Complex.normSq (g ξ)) :=
      mul_le_mul_of_nonneg_left hfg (abs_nonneg _)
    _ = _ := by ring

/-- The real complete multiplier gives Hermitian symmetry.
Genuine integrability on the common domain is proved separately. -/
theorem full_sesquilinear_hermitian (A : ℝ) (f g : Hilbert) :
    conj (fullSesquilinearForm A f g) = fullSesquilinearForm A g f := by
  rw [fullSesquilinearForm, ← integral_conj, fullSesquilinearForm]
  apply integral_congr_ae
  filter_upwards [] with ξ
  simp only [map_mul, Complex.conj_ofReal, Complex.conj_conj]
  ring

/-- The real quadratic form is exactly the diagonal of the full sesquilinear form. -/
theorem full_sesquilinear_diagonal (A : ℝ) (f : Hilbert) :
    fullSesquilinearForm A f f = (fullQuadraticForm A f : ℂ) := by
  rw [fullSesquilinearForm, fullQuadraticForm]
  calc
    _ = ∫ ξ, ((spectralMultiplier A ξ * Complex.normSq (f ξ) : ℝ) : ℂ) := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      rw [mul_assoc, mul_comm (conj (f ξ)) (f ξ), Complex.mul_conj]
      simp only [Complex.ofReal_mul]
    _ = _ := integral_ofReal

/-- The full form is additive in its second variable on the stated common domain. -/
theorem full_sesquilinear_add_right (A : ℝ) (f g k : Hilbert)
    (hf : GammaFormDomain f) (hg : GammaFormDomain g) (hk : GammaFormDomain k) :
    fullSesquilinearForm A f (g + k) =
      fullSesquilinearForm A f g + fullSesquilinearForm A f k := by
  unfold fullSesquilinearForm
  calc
    _ = ∫ ξ, (spectralMultiplier A ξ : ℂ) * conj (f ξ) * g ξ +
        (spectralMultiplier A ξ : ℂ) * conj (f ξ) * k ξ := by
      apply integral_congr_ae
      filter_upwards [Lp.coeFn_add g k] with ξ hξ
      rw [hξ, Pi.add_apply, mul_add]
    _ = _ := integral_add (full_sesquilinear_integrable A f g hf hg)
      (full_sesquilinear_integrable A f k hf hk)

/-- The full form is complex linear under scalar multiplication in its second variable. -/
theorem full_sesquilinear_smul_right (A : ℝ) (f g : Hilbert) (c : ℂ) :
    fullSesquilinearForm A f (c • g) = c * fullSesquilinearForm A f g := by
  unfold fullSesquilinearForm
  calc
    _ = ∫ ξ, c * ((spectralMultiplier A ξ : ℂ) * conj (f ξ) * g ξ) := by
      apply integral_congr_ae
      filter_upwards [Lp.coeFn_smul c g] with ξ hξ
      rw [hξ, Pi.smul_apply, smul_eq_mul]
      ring
    _ = _ := integral_const_mul _ _

/-- Hermitian symmetry gives additivity in the first variable on the common domain. -/
theorem full_sesquilinear_add_left (A : ℝ) (f g k : Hilbert)
    (hf : GammaFormDomain f) (hg : GammaFormDomain g) (hk : GammaFormDomain k) :
    fullSesquilinearForm A (f + g) k =
      fullSesquilinearForm A f k + fullSesquilinearForm A g k := by
  calc
    _ = conj (fullSesquilinearForm A k (f + g)) :=
      (full_sesquilinear_hermitian A k (f + g)).symm
    _ = _ := by rw [full_sesquilinear_add_right A k f g hk hf hg, map_add,
      full_sesquilinear_hermitian, full_sesquilinear_hermitian]

/-- Hermitian symmetry gives conjugate linearity in the first variable. -/
theorem full_sesquilinear_smul_left (A : ℝ) (f g : Hilbert) (c : ℂ) :
    fullSesquilinearForm A (c • f) g = conj c * fullSesquilinearForm A f g := by
  calc
    _ = conj (fullSesquilinearForm A g (c • f)) :=
      (full_sesquilinear_hermitian A g (c • f)).symm
    _ = _ := by rw [full_sesquilinear_smul_right, map_mul, full_sesquilinear_hermitian]

/-- Genuine archimedean admission places the actual vector in the common Gamma form domain. -/
theorem source_vector_gamma_form_domain (A : ℝ) (hA : 1 ≤ A) :
    GammaFormDomain (sourceVector A hA) := by
  have hi := (actual_archimedeanDensity_integrable A hA).norm
  apply hi.congr
  filter_upwards [source_vector_ae_eq A hA] with ξ hξ
  rw [hξ, source_fourier_vector_norm_sq, Real.norm_eq_abs, abs_mul,
    abs_of_nonneg (spectralDensity_nonneg A ξ)]

/-- The entire native source quadratic value is exactly the independently structured full form. -/
theorem source_quadratic_eq_full_form (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A = fullQuadraticForm A (sourceVector A hA) := by
  rw [actual_sourceQuadraticValue_eq_spectral_integral A hA]
  apply integral_congr_ae
  filter_upwards [source_vector_ae_eq A hA] with ξ hξ
  rw [hξ, source_fourier_vector_norm_sq]

end
end FormalResearch.RiemannHypothesis.FullQuadraticOperator
