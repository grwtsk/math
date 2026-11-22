/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRightStripWitnessReturn
import Mathlib.MeasureTheory.Integral.Prod

/-!
# The imaginary phase term of the original primitive Weil form

Separate the real and imaginary parts of a complex test on its original
logarithmic window. The mass and archimedean density split by squared norm.
The original twisted prime term also contains the product of the character's
imaginary part and the test autocorrelation's imaginary part. For odd tests,
reflection makes the autocorrelation real. This gives an exact return from
a complex odd negative witness to the existing native real odd test class.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open LowSchur CharacterWindow SourcePrimeCorrelation OddRootProjection

private theorem memLp_realPart {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    MemLp (liftReal (fun t => (f t).re)) 2 volume :=
  Complex.ofRealCLM.comp_memLp' (Complex.reCLM.comp_memLp' hf)

private theorem memLp_imagPart {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    MemLp (liftReal (fun t => (f t).im)) 2 volume :=
  Complex.ofRealCLM.comp_memLp' (Complex.imCLM.comp_memLp' hf)

theorem energy_eq_real_imag {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    energy f = energy (liftReal (fun t => (f t).re)) +
      energy (liftReal (fun t => (f t).im)) := by
  unfold energy
  rw [← integral_add ((memLp_realPart hf).integrable_norm_pow (p := 2) (by norm_num))
    ((memLp_imagPart hf).integrable_norm_pow (p := 2) (by norm_num))]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun t => by
    simp only [liftReal, Complex.norm_real, Real.norm_eq_abs, sq_abs,
      ← Complex.normSq_eq_norm_sq, Complex.normSq_apply]
    ring

theorem gammaCorrectionDensity_eq_real_imag (a : ℕ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) (r : ℝ) :
    gammaCorrectionDensity a f r =
      gammaCorrectionDensity a (liftReal (fun t => (f t).re)) r +
      gammaCorrectionDensity a (liftReal (fun t => (f t).im)) r := by
  have hg : MemLp (fun t => f (t + r) - f t) 2 volume :=
    (hf.comp_measurePreserving (measurePreserving_add_right volume r)).sub hf
  unfold gammaCorrectionDensity
  rw [energy_eq_real_imag hg, mul_add]
  unfold liftReal
  simp only [Complex.sub_re, Complex.sub_im, Complex.ofReal_sub]

theorem correlation_liftReal_isReal (g : ℝ → ℝ) (r : ℝ) :
    (correlation (liftReal g) r).im = 0 := by
  unfold correlation liftReal
  simp only [Complex.conj_ofReal, ← Complex.ofReal_mul, integral_complex_ofReal, Complex.ofReal_im]

theorem correlation_re_eq_real_imag {f : ℝ → ℂ} (hf : MemLp f 2 volume) (r : ℝ) :
    (correlation f r).re = (correlation (liftReal (fun t => (f t).re)) r).re +
      (correlation (liftReal (fun t => (f t).im)) r).re := by
  have hi := integrable_correlation_integrand hf r
  have hiRe := integrable_correlation_integrand (memLp_realPart hf) r
  have hiIm := integrable_correlation_integrand (memLp_imagPart hf) r
  have h₁ := integral_re hi
  have h₂ := integral_re hiRe
  have h₃ := integral_re hiIm
  simp only [RCLike.re_to_complex] at h₁ h₂ h₃
  have hadd := integral_add (Complex.reCLM.integrable_comp hiRe) (Complex.reCLM.integrable_comp hiIm)
  simp only [Complex.reCLM_apply] at hadd
  unfold correlation
  rw [← h₁, ← h₂, ← h₃, ← hadd]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun t => by
    simp [liftReal, Complex.mul_re]

/-- Reflection of an odd complex test turns the correlation into its
conjugate, using the original translation-invariant Lebesgue integral. -/
theorem correlation_im_eq_zero_of_odd {f : ℝ → ℂ} (hodd : Function.Odd f) (r : ℝ) :
    (correlation f r).im = 0 := by
  have hsub : correlation f r = ∫ t : ℝ, conj (f (t - r)) * f (t - r + r) := by
    simpa only [correlation, sub_eq_add_neg] using
      (integral_add_right_eq_self (fun t : ℝ => conj (f t) * f (t + r)) (-r)).symm
  have href : correlation f r = ∫ t : ℝ, conj (f (-t - r)) * f (-t - r + r) :=
    hsub.trans (integral_neg_eq_self
      (fun t : ℝ => conj (f (t - r)) * f (t - r + r)) volume).symm
  have he : correlation f r = conj (correlation f r) := by
    calc
      _ = ∫ t : ℝ, conj (f (-t - r)) * f (-t - r + r) := href
      _ = ∫ t : ℝ, conj (conj (f t) * f (t + r)) := by
        apply integral_congr_ae
        exact Filter.Eventually.of_forall fun t => by
          change conj (f (-t - r)) * f (-t - r + r) = conj (conj (f t) * f (t + r))
          rw [sub_add_cancel, show -t - r = -(t + r) by ring, hodd (t + r), hodd t]
          simp [mul_comm]
      _ = conj (correlation f r) := integral_conj
  have him := congrArg Complex.im he
  rw [Complex.conj_im] at him
  linarith

/-- The signed phase term supplied by the actual prime powers of a character. -/
def imaginaryPrimeResponse {q : ℕ} (T : ℝ) (χ : DirichletCharacter ℂ q)
    (C : ℕ → ℂ) : ℝ :=
  2 * ∑ n ∈ activePrimePowers T, primeWeight n * ((χ n).im * (C n).im)

theorem twistedPrime_eq_real_projection_add_imaginary {q : ℕ} (T : ℝ)
    (χ : DirichletCharacter ℂ q) (C : ℕ → ℂ) :
    twistedPrime T χ C = twistedPrime T χ (fun n => ((C n).re : ℂ)) +
      imaginaryPrimeResponse T χ C := by
  unfold twistedPrime imaginaryPrimeResponse
  simp only [Complex.mul_re, Complex.conj_re, Complex.conj_im, Complex.ofReal_re,
    Complex.ofReal_im, mul_zero, sub_zero, neg_mul, sub_neg_eq_add, mul_add,
    Finset.sum_add_distrib]

/-- At conductor one the actual character has zero imaginary phase. -/
theorem imaginaryPrimeResponse_modOne (T : ℝ) (χ : DirichletCharacter ℂ 1)
    (C : ℕ → ℂ) : imaginaryPrimeResponse T χ C = 0 := by
  have he (n : ℕ) : χ (n : ZMod 1) = 1 := by
    rw [Subsingleton.elim (n : ZMod 1) 1, map_one]
  simp [imaginaryPrimeResponse, he]

/-- The signed phase term has an energy-scaled error allowance using the
imaginary character mass of the actual active prime powers. -/
theorem abs_imaginaryPrimeResponse_le {q : ℕ} (χ : DirichletCharacter ℂ q) (T : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    |imaginaryPrimeResponse T χ (fun n => correlation f (Real.log (n : ℝ)))| ≤
      (2 * ∑ n ∈ activePrimePowers T, primeWeight n * |(χ n).im|) * energy f := by
  unfold imaginaryPrimeResponse
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2), mul_assoc, Finset.sum_mul]
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun n _ => ?_)
  rw [← mul_assoc, abs_mul, abs_mul, abs_of_nonneg (primeWeight_nonneg n)]
  apply mul_le_mul_of_nonneg_left _ (mul_nonneg (primeWeight_nonneg n) (abs_nonneg _))
  exact (Complex.abs_im_le_norm _).trans (norm_correlation_le_energy hf _)

/-- A conductor-independent allowance at a fixed support radius. -/
theorem abs_imaginaryPrimeResponse_le_primeMass {q : ℕ} (χ : DirichletCharacter ℂ q) (T : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    |imaginaryPrimeResponse T χ (fun n => correlation f (Real.log (n : ℝ)))| ≤
      primeMass T * energy f := by
  have henergy : 0 ≤ energy f := integral_nonneg fun _ => sq_nonneg _
  refine (abs_imaginaryPrimeResponse_le χ T hf).trans (mul_le_mul_of_nonneg_right ?_ henergy)
  unfold primeMass
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  apply Finset.sum_le_sum
  intro n _
  exact mul_le_of_le_one_right (primeWeight_nonneg _)
    ((Complex.abs_im_le_norm _).trans (χ.norm_le_one _))

/-- At any active nonreal character atom with positive weight, a real-only
correlation observation admits distinct signed prime readouts. -/
theorem real_projection_insufficient_at_nonreal_atom {q n : ℕ}
    (χ : DirichletCharacter ℂ q) {T : ℝ} (hn : n ∈ activePrimePowers T)
    (hw : 0 < primeWeight n) (him : (χ n).im ≠ 0) :
    ∃ C D : ℕ → ℂ, (∀ m, (C m).re = (D m).re) ∧ twistedPrime T χ C ≠ twistedPrime T χ D := by
  let C (m : ℕ) : ℂ := if m = n then Complex.I else 0
  have hC (m : ℕ) : (C m).re = 0 := by by_cases hm : m = n <;> simp [C, hm]
  refine ⟨C, fun _ => 0, fun m => hC m, ?_⟩
  rw [twistedPrime_eq_real_projection_add_imaginary T χ C]
  simp only [hC, Complex.ofReal_zero]
  have hsum : imaginaryPrimeResponse T χ C = 2 * (primeWeight n * (χ n).im) := by
    unfold imaginaryPrimeResponse
    have hterm (m : ℕ) : primeWeight m * ((χ m).im * (C m).im) =
        if m = n then primeWeight n * (χ n).im else 0 := by
      by_cases hm : m = n
      · subst m
        simp [C]
      · simp [C, hm]
    simp_rw [hterm]
    simp [hn]
  rw [hsum]
  have hz : twistedPrime T χ (fun _ => 0) = 0 := by simp [twistedPrime]
  rw [hz, zero_add]
  exact mul_ne_zero (by norm_num) (mul_ne_zero hw.ne' him)

/-- Exact criterion for a real-only observation on the finite native prime
payload. Zero-weight entries impose no observation requirement. -/
theorem real_projection_determines_twistedPrime_iff {q : ℕ}
    (χ : DirichletCharacter ℂ q) (T : ℝ) :
    (∀ C D : ℕ → ℂ, (∀ n, (C n).re = (D n).re) → twistedPrime T χ C = twistedPrime T χ D) ↔
      ∀ n ∈ activePrimePowers T, primeWeight n = 0 ∨ (χ n).im = 0 := by
  constructor
  · intro h n hn
    by_cases hw : primeWeight n = 0
    · exact Or.inl hw
    · apply Or.inr
      by_contra him
      obtain ⟨C, D, hsame, hdiff⟩ := real_projection_insufficient_at_nonreal_atom χ hn
        (lt_of_le_of_ne (primeWeight_nonneg n) (fun h => hw h.symm)) him
      exact hdiff (h C D hsame)
  · intro h C D hsame
    have hzero (E : ℕ → ℂ) : imaginaryPrimeResponse T χ E = 0 := by
      unfold imaginaryPrimeResponse
      have hs : (∑ n ∈ activePrimePowers T, primeWeight n * ((χ n).im * (E n).im)) = 0 := by
        apply Finset.sum_eq_zero
        intro n hn
        rcases h n hn with hw | him
        · simp [hw]
        · simp [him]
      rw [hs, mul_zero]
    rw [twistedPrime_eq_real_projection_add_imaginary T χ C,
      twistedPrime_eq_real_projection_add_imaginary T χ D, hzero, hzero, add_zero, add_zero]
    simp_rw [hsame]

/-- Inverting the character negates the discarded signed phase. This keeps
the test correlations fixed, as in a comparison of the two character sheets. -/
theorem imaginaryPrimeResponse_inverse {q : ℕ} (χ : DirichletCharacter ℂ q)
    (T : ℝ) (C : ℕ → ℂ) :
    imaginaryPrimeResponse T χ⁻¹ C = -imaginaryPrimeResponse T χ C := by
  have hinv (n : ℕ) : (χ⁻¹ (n : ZMod q)).im = -(χ n).im := by
    have h := (MulChar.star_apply' χ (n : ZMod q)).symm
    simpa only [RCLike.star_def, Complex.conj_im] using congrArg Complex.im h
  unfold imaginaryPrimeResponse
  simp_rw [hinv, neg_mul, mul_neg, Finset.sum_neg_distrib]
  ring

theorem primitiveArithmeticValue_eq_real_imag_sub_phase {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1) (T : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (hre : IntegrableOn (gammaCorrectionDensity (gammaParity χ)
      (liftReal (fun t => (f t).re))) (Ioi 0))
    (him : IntegrableOn (gammaCorrectionDensity (gammaParity χ)
      (liftReal (fun t => (f t).im))) (Ioi 0)) :
    primitiveArithmeticValue χ hp hn T f =
      primitiveArithmeticValue χ hp hn T (liftReal (fun t => (f t).re)) +
      primitiveArithmeticValue χ hp hn T (liftReal (fun t => (f t).im)) -
      imaginaryPrimeResponse T χ (fun n => correlation f (Real.log (n : ℝ))) := by
  unfold primitiveArithmeticValue
  simp only [energy_eq_real_imag hf, gammaCorrectionDensity_eq_real_imag _ hf]
  rw [integral_add hre him, twistedPrime_eq_real_projection_add_imaginary]
  have hsum : twistedPrime T χ (fun n => ((correlation f (Real.log (n : ℝ))).re : ℂ)) =
      twistedPrime T χ (fun n => correlation (liftReal (fun t => (f t).re)) (Real.log (n : ℝ))) +
      twistedPrime T χ (fun n => correlation (liftReal (fun t => (f t).im)) (Real.log (n : ℝ))) := by
    have hterm (n : ℕ) : ((correlation f (Real.log (n : ℝ))).re : ℂ) =
        correlation (liftReal (fun t => (f t).re)) (Real.log (n : ℝ)) +
        correlation (liftReal (fun t => (f t).im)) (Real.log (n : ℝ)) := by
      apply Complex.ext
      · simpa only [Complex.ofReal_re, Complex.add_re] using correlation_re_eq_real_imag hf _
      · simp [correlation_liftReal_isReal]
    simp_rw [hterm]
    exact twistedPrime_add T χ _ _
  rw [hsum]
  ring

private theorem gammaDensity_nonneg (a : ℕ) (f : ℝ → ℂ) {r : ℝ} (hr : 0 < r) :
    0 ≤ gammaCorrectionDensity a f r := by
  have hsmall : Real.exp (-2 * r) ≤ 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  exact mul_nonneg (div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr hsmall))
    (integral_nonneg fun _ => sq_nonneg _)

private theorem gammaDensity_measurable (a : ℕ) {f : ℝ → ℂ} (hf : Continuous f) :
    Measurable (gammaCorrectionDensity a f) := by
  let F (rt : ℝ × ℝ) : ℝ := ‖f (rt.2 + rt.1) - f rt.2‖ ^ 2
  have hF : Continuous F := by dsimp [F]; fun_prop
  have hinner : Measurable (fun r : ℝ => ∫ t : ℝ, F (r, t)) :=
    (hF.stronglyMeasurable.integral_prod_right' (ν := volume)).measurable
  have hk : Measurable (parityKernel a) := by unfold parityKernel; fun_prop
  exact hk.mul hinner

/-- The original archimedean domain passes to both projections. On the
positive shift half-line both densities are nonnegative and add to the source. -/
theorem gammaCorrectionDensity_integrable_real_imag (a : ℕ) {f : ℝ → ℂ}
    (hf : Continuous f) (hLp : MemLp f 2 volume)
    (harch : IntegrableOn (gammaCorrectionDensity a f) (Ioi 0)) :
    IntegrableOn (gammaCorrectionDensity a (liftReal (fun t => (f t).re))) (Ioi 0) ∧
    IntegrableOn (gammaCorrectionDensity a (liftReal (fun t => (f t).im))) (Ioi 0) := by
  have hu : Continuous (liftReal (fun t => (f t).re)) :=
    Complex.continuous_ofReal.comp (Complex.continuous_re.comp hf)
  have hv : Continuous (liftReal (fun t => (f t).im)) :=
    Complex.continuous_ofReal.comp (Complex.continuous_im.comp hf)
  constructor
  · apply harch.mono' (gammaDensity_measurable a hu).aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    rw [Real.norm_eq_abs, abs_of_nonneg (gammaDensity_nonneg a _ hr),
      gammaCorrectionDensity_eq_real_imag a hLp]
    exact le_add_of_nonneg_right (gammaDensity_nonneg a _ hr)
  · apply harch.mono' (gammaDensity_measurable a hv).aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    rw [Real.norm_eq_abs, abs_of_nonneg (gammaDensity_nonneg a _ hr),
      gammaCorrectionDensity_eq_real_imag a hLp]
    exact le_add_of_nonneg_left (gammaDensity_nonneg a _ hr)

/-- A complex odd witness in the original window gives a native real odd
witness in that same window. The prime phase cancellation is exact. -/
theorem exists_real_negative_of_complex_odd {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {T : ℝ} (hT : 0 < T) {f : ℝ → ℂ} (hdiff : ContDiff ℝ 2 f)
    (hodd : Function.Odd f) (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity χ) f) (Ioi 0))
    (hneg : primitiveArithmeticValue χ hp hn T f < 0) :
    ∃ g : ℝ → ℝ, Admissible χ T g ∧ primitiveArithmeticValue χ hp hn T (liftReal g) < 0 := by
  let u : ℝ → ℝ := fun t => (f t).re
  let v : ℝ → ℝ := fun t => (f t).im
  have hcompact : HasCompactSupport f := by
    apply HasCompactSupport.of_support_subset_isCompact isCompact_Icc
    intro t ht
    by_contra hout
    exact ht (hsupport t hout)
  have hf : MemLp f 2 volume := hdiff.continuous.memLp_of_hasCompactSupport hcompact
  obtain ⟨huArch, hvArch⟩ := gammaCorrectionDensity_integrable_real_imag _ hdiff.continuous hf harch
  have hu : Admissible χ T u :=
    ⟨hT, Complex.reCLM.contDiff.comp hdiff, hcompact.comp_left Complex.zero_re,
      fun t => by simp [u, hodd t], memLp_realPart hf,
      fun t ht => by simp [liftReal, u, hsupport t ht], huArch⟩
  have hv : Admissible χ T v :=
    ⟨hT, Complex.imCLM.contDiff.comp hdiff, hcompact.comp_left Complex.zero_im,
      fun t => by simp [v, hodd t], memLp_imagPart hf,
      fun t ht => by simp [liftReal, v, hsupport t ht], hvArch⟩
  have hsplit := primitiveArithmeticValue_eq_real_imag_sub_phase χ hp hn T hf huArch hvArch
  have hphase : imaginaryPrimeResponse T χ (fun n => correlation f (Real.log (n : ℝ))) = 0 :=
    by simp [imaginaryPrimeResponse, correlation_im_eq_zero_of_odd hodd]
  rw [hsplit, hphase, sub_zero] at hneg
  rcases lt_or_ge (primitiveArithmeticValue χ hp hn T (liftReal u)) 0 with hu' | hu'
  · exact ⟨u, hu, hu'⟩
  · exact ⟨v, hv, by linarith⟩

/-- A negative source-test supplier may work with complex odd test functions
before handing the witness to the native real stage approximation. -/
def PrimitiveRightStripComplexOddWitness : Prop :=
  ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (s : ℂ),
    1 / 2 < s.re → s.re < 1 → χ.LFunction s = 0 →
      ∃ (T : ℝ) (f : ℝ → ℂ), 0 < T ∧ ContDiff ℝ 2 f ∧ Function.Odd f ∧
        (∀ t, t ∉ Icc (-T) T → f t = 0) ∧
        IntegrableOn (gammaCorrectionDensity (gammaParity χ) f) (Ioi 0) ∧
        primitiveArithmeticValue χ hp hn T f < 0

theorem primitiveRightStripNegativeWitness_iff_complexOdd :
    PrimitiveRightStripNegativeWitness ↔ PrimitiveRightStripComplexOddWitness := by
  constructor
  · intro h q _ χ hp hn s hs₀ hs₁ hz
    obtain ⟨T, g, hg, hneg⟩ := h q χ hp hn s hs₀ hs₁ hz
    refine ⟨T, liftReal g, hg.1, Complex.ofRealCLM.contDiff.comp hg.2.1, ?_,
      hg.2.2.2.2.2.1, hg.2.2.2.2.2.2, hneg⟩
    intro t
    simp [liftReal, hg.2.2.2.1 t]
  · intro h q _ χ hp hn s hs₀ hs₁ hz
    obtain ⟨T, f, hT, hdiff, hodd, hs, harch, hneg⟩ := h q χ hp hn s hs₀ hs₁ hz
    obtain ⟨g, hg, hnegative⟩ := exists_real_negative_of_complex_odd χ hp hn hT hdiff hodd hs harch hneg
    exact ⟨T, g, hg, hnegative⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
