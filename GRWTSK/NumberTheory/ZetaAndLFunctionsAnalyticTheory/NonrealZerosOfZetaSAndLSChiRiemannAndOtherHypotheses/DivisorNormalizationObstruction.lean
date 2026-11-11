/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain their upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.FiniteSamplingZeroObstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ResonanceDeterminantCertification
import GRWTSK.FunctionsOfAComplexVariable.FiniteSpectralProductMultiplicity

set_option autoImplicit false
noncomputable section

/-!
# Full divisors, finite observations and anchors do not identify an entire source

RP-OC-09 / NC9-NORM with NC9-SAMPLES, math issue #1803.
Source: grwtsk contributors, Typed Mathematical Architecture and
Zero-Distribution-Dependent Continuity, edition 1.0 (2026-11-10), section 20.5.
This strengthens the source's normalization control by reusing Program 9's
finite-sampling polynomial and Programs 4/8's source-identification APIs.

For the maintained polynomial C_S, use H_S(z)=(z^2+1)(C_S(z)-1).
Multiplication by exp(H_S) preserves every zero and its analytic order, all
sample values in S, and the values at 0, i and -i. However H_S'(i)=-2i,
so the logarithmic derivative changes even at the fixed nonreal anchor.
For Program 8's real-slope finite spectral product, the naive quantity
-im(logDeriv at i) consequently acquires an exact spurious increment of two.

These twists are not claimed to preserve the affine-exponential/genus-one
model class, its growth bounds, or an Euler product. No arithmetic source is
replaced; no contradiction to Program 8's correctly hypothesized results,
no zero off the critical line, and no RH/GRH result is asserted.

SOURCE_PROOF_CANDIDATE. Elaboration/build, fresh kernel replay, transitive
axiom audit, CI and independent mathematical review: NOT_RUN.
Individual declaration records are in the adjacent .provenance directory.
-/

namespace GRWTSK.NumberTheory.DivisorNormalizationObstruction

open GRWTSK.FiniteSamplingZeroObstruction
open GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum

/-- The additional factor preserves both imaginary normalization anchors. -/
def exponent (S : Finset ℝ) (z : ℂ) : ℂ :=
  (z ^ 2 + 1) * (control S z - 1)

/-- A zero-free multiplier, not a change of the arithmetic source by fiat. -/
def twist (S : Finset ℝ) (f : ℂ → ℂ) (z : ℂ) : ℂ :=
  Complex.exp (exponent S z) * f z

theorem exponent_analytic (S : Finset ℝ) (z : ℂ) :
    AnalyticAt ℂ (exponent S) z := by
  unfold exponent control factor
  fun_prop

theorem exponent_even (S : Finset ℝ) (z : ℂ) :
    exponent S (-z) = exponent S z := by
  simp [exponent, control_even]

theorem exponent_conj (S : Finset ℝ) (z : ℂ) :
    exponent S (starRingEnd ℂ z) = starRingEnd ℂ (exponent S z) := by
  simp [exponent, control_conj, map_mul, map_sub, map_add, map_pow]

/-- A common value at an anchor does not determine the derivative there. -/
theorem exponent_hasDerivAt_I (S : Finset ℝ) :
    HasDerivAt (exponent S) (-2 * Complex.I) Complex.I := by
  have hp : HasDerivAt (fun z : ℂ => z ^ 2 + 1)
      (2 * Complex.I) Complex.I := by
    convert ((hasDerivAt_id Complex.I).pow 2).add_const (1 : ℂ) using 1 <;> norm_num
  have hc : HasDerivAt (fun z : ℂ => control S z - 1)
      (deriv (control S) Complex.I) Complex.I :=
    ((control_differentiable S Complex.I).hasDerivAt).sub_const 1
  simpa [exponent, control_at_I, Complex.I_sq] using hp.mul hc

/-- Zero-set preservation requires no analytic premise. -/
theorem twist_zero_iff (S : Finset ℝ) (f : ℂ → ℂ) (z : ℂ) :
    twist S f z = 0 ↔ f z = 0 := by
  simp [twist, mul_eq_zero, Complex.exp_ne_zero]

theorem twist_at_zero (S : Finset ℝ) (f : ℂ → ℂ) :
    twist S f 0 = f 0 := by
  simp [twist, exponent, control_at_zero]

theorem twist_at_sample (S : Finset ℝ) (f : ℂ → ℂ) {a : ℝ} (ha : a ∈ S) :
    twist S f (a : ℂ) = f (a : ℂ) := by
  simp [twist, exponent, control_at_sample S ha]

theorem twist_at_I (S : Finset ℝ) (f : ℂ → ℂ) :
    twist S f Complex.I = f Complex.I := by
  simp [twist, exponent, Complex.I_sq]

theorem twist_at_neg_I (S : Finset ℝ) (f : ℂ → ℂ) :
    twist S f (-Complex.I) = f (-Complex.I) := by
  simp [twist, exponent, Complex.I_sq]

theorem observations_twist (S : Finset ℝ) (f : ℂ → ℂ) :
    observations S f = observations S (twist S f) := by
  funext a
  exact (twist_at_sample S f a.property).symm

theorem twist_even (S : Finset ℝ) {f : ℂ → ℂ}
    (hf : ∀ z, f (-z) = f z) (z : ℂ) : twist S f (-z) = twist S f z := by
  simp only [twist, exponent_even, hf]

theorem twist_conj (S : Finset ℝ) {f : ℂ → ℂ}
    (hf : ∀ z, f (starRingEnd ℂ z) = starRingEnd ℂ (f z)) (z : ℂ) :
    twist S f (starRingEnd ℂ z) = starRingEnd ℂ (twist S f z) := by
  simp [twist, exponent_conj, hf, map_mul, Complex.exp_conj]

theorem twist_analyticAt (S : Finset ℝ) {f : ℂ → ℂ} {z : ℂ}
    (hf : AnalyticAt ℂ f z) : AnalyticAt ℂ (twist S f) z :=
  (exponent_analytic S z).cexp.mul hf

/-- Preserve the existing normalized, even, real-type entire comparison class. -/
theorem twist_admissible (S : Finset ℝ) {f : ℂ → ℂ} (hf : Admissible f) :
    Admissible (twist S f) := by
  rcases hf with ⟨hd, he, hc, h0⟩
  have hh : Differentiable ℂ (exponent S) :=
    fun z => (exponent_analytic S z).differentiableAt
  refine ⟨?_, twist_even S he, twist_conj S hc, ?_⟩
  · unfold twist
    fun_prop
  · simpa only [twist_at_zero] using h0

/-- Actual analytic orders are preserved, not just the list of distinct roots. -/
theorem twist_order (S : Finset ℝ) {f : ℂ → ℂ} {z : ℂ}
    (hf : AnalyticAt ℂ f z) :
    analyticOrderAt (twist S f) z = analyticOrderAt f z := by
  have h := GRWTSK.Analysis.ComplexAnalysis.AnalyticOrderTransport.order_mul_nonzero_right
    f (fun w => Complex.exp (exponent S w)) z hf
    ((exponent_analytic S z).cexp) (Complex.exp_ne_zero _)
  simpa [twist, mul_comm] using h

/-- Reuse Program 4's explicit logarithmic-derivative correction. -/
theorem twist_logDeriv (S : Finset ℝ) {f : ℂ → ℂ} {z : ℂ}
    (hf : DifferentiableAt ℂ f z) (hne : f z ≠ 0) :
    logDeriv (twist S f) z = deriv (exponent S) z + logDeriv f z := by
  exact GRWTSK.ResonanceDeterminantReturn.logDeriv_exp_mul
    (exponent_analytic S z).differentiableAt hf hne

/-- The anchor defect is independent of the number and locations of the samples. -/
theorem twist_logDeriv_at_I (S : Finset ℝ) {f : ℂ → ℂ}
    (hf : DifferentiableAt ℂ f Complex.I) (hne : f Complex.I ≠ 0) :
    logDeriv (twist S f) Complex.I = -2 * Complex.I + logDeriv f Complex.I := by
  rw [twist_logDeriv S hf hne, (exponent_hasDerivAt_I S).deriv]

theorem twist_ne_source (S : Finset ℝ) {f : ℂ → ℂ}
    (hf : DifferentiableAt ℂ f Complex.I) (hne : f Complex.I ≠ 0) :
    twist S f ≠ f := by
  intro heq
  have hlog := twist_logDeriv_at_I S hf hne
  rw [heq] at hlog
  have him := congrArg Complex.im hlog
  simp [Complex.mul_im] at him <;> linarith

/-- Full divisor equality, fixed real samples and nonreal normalization are insufficient.
This is an identifiability statement on entire functions, not undecidability or GRH. -/
theorem finite_samples_full_divisor_and_anchor_not_identify (S : Finset ℝ) :
    ∃ f g : ℂ → ℂ,
      Admissible f ∧ Admissible g ∧ observations S f = observations S g ∧
      f Complex.I = 1 ∧ g Complex.I = 1 ∧
      (∀ z, f z = 0 ↔ g z = 0) ∧
      (∀ z, analyticOrderAt f z = analyticOrderAt g z) ∧ f ≠ g := by
  refine ⟨fun _ => 1, twist S (fun _ => 1), one_admissible,
    twist_admissible S one_admissible, observations_twist S _, rfl, ?_, ?_, ?_, ?_⟩
  · exact twist_at_I S _
  · intro z
    exact (twist_zero_iff S _ z).symm
  · intro z
    exact (twist_order S (by fun_prop : AnalyticAt ℂ (fun _ : ℂ => (1 : ℂ)) z)).symm
  · exact Ne.symm (twist_ne_source S (by fun_prop) one_ne_zero)

/-- Positive control: retain every hypothesis of Program 8's normalized rigidity. -/
theorem identity_of_matching_logDeriv (S : Finset ℝ)
    {f : ℂ → ℂ} {U : Set ℂ}
    (hf : AnalyticOnNhd ℂ f Set.univ) (hU : IsOpen U) (hc : IsPreconnected U)
    (hfn : ∀ z ∈ U, f z ≠ 0) (hI : Complex.I ∈ U)
    (hlog : Set.EqOn (logDeriv (twist S f)) (logDeriv f) U) : twist S f = f := by
  exact GRWTSK.FunctionsOfAComplexVariable.NormalizedLogDerivative.eq_of_logDeriv_eqOn_of_anchor
    (fun z hz => twist_analyticAt S (hf z hz)) hf hU hc
    (fun z hz => fun hzero => hfn z hz ((twist_zero_iff S f z).mp hzero))
    hfn hI (twist_at_I S f) hlog

/-- The hostile fixture cannot satisfy the source-identifying premise above. -/
theorem no_logDeriv_agreement_on_anchor_region (S : Finset ℝ)
    {f : ℂ → ℂ} {U : Set ℂ}
    (hf : AnalyticOnNhd ℂ f Set.univ) (hU : IsOpen U) (hc : IsPreconnected U)
    (hfn : ∀ z ∈ U, f z ≠ 0) (hI : Complex.I ∈ U) :
    ¬ Set.EqOn (logDeriv (twist S f)) (logDeriv f) U := by
  intro hlog
  exact twist_ne_source S (hf Complex.I (Set.mem_univ _)).differentiableAt
    (hfn Complex.I hI) (identity_of_matching_logDeriv S hf hU hc hfn hI hlog)

section FiniteSpectra
variable {ι : Type*} [Fintype ι]

/-- Direct consumer of Program 8's indexed analytic multiplicity theorem. -/
theorem twisted_spectral_orders (S : Finset ℝ) (lambda : ι → ℝ) {beta : ℝ}
    (hbeta : beta ≠ 0) (c z : ℂ) :
    analyticOrderAt (twist S (normalizedExpProduct lambda beta c)) z =
      (occurrenceCount lambda z : ℕ∞) := by
  have hf : AnalyticAt ℂ (normalizedExpProduct lambda beta c) z := by
    unfold normalizedExpProduct normalizedProduct rootProduct
    fun_prop
  exact (twist_order S hf).trans
    (analyticOrderAt_normalizedExpProduct lambda hbeta c z)

/-- The actual indexed finite product also changes, despite identical multiplicities. -/
theorem twisted_spectral_ne (S : Finset ℝ) (lambda : ι → ℝ) {beta : ℝ}
    (hbeta : beta ≠ 0) (c : ℂ) :
    twist S (normalizedExpProduct lambda beta c) ≠ normalizedExpProduct lambda beta c := by
  exact twist_ne_source S (differentiable_normalizedExpProduct lambda beta c Complex.I)
    (normalizedExpProduct_ne_zero lambda hbeta c (by simp : Complex.I.im ≠ 0))

/-- The literal nonreal normalization used by Program 8 is retained. -/
theorem twisted_spectral_anchor (S : Finset ℝ) (lambda : ι → ℝ) (c : ℂ) :
    twist S (normalizedExpProduct lambda 1 c) (anchor 1) = 1 := by
  have ha : anchor 1 = Complex.I := by simp [anchor]
  rw [ha, twist_at_I]
  simpa only [ha] using normalizedExpProduct_anchor lambda (by norm_num : (1 : ℝ) ≠ 0) c

/-- Zero data and the anchor value do not justify dropping a zero-free factor.
The twisted function is OUTSIDE the asserted affine-exponential model class. -/
theorem twisted_anchor_mass_defect (S : Finset ℝ) (lambda : ι → ℝ) (r : ℝ) :
    -(logDeriv (twist S (normalizedExpProduct lambda 1 (r : ℂ))) Complex.I).im =
      anchorMass lambda 1 + 2 := by
  have hne := normalizedExpProduct_ne_zero lambda (by norm_num : (1 : ℝ) ≠ 0)
    (r : ℂ) (by simp : Complex.I.im ≠ 0)
  rw [twist_logDeriv_at_I S (differentiable_normalizedExpProduct lambda 1 (r : ℂ) Complex.I) hne]
  have hbase : (logDeriv (normalizedExpProduct lambda 1 (r : ℂ)) Complex.I).im =
      -anchorMass lambda 1 := by
    simpa [anchor] using im_logDeriv_normalizedExpProduct_anchor lambda
      (by norm_num : (1 : ℝ) ≠ 0) (r : ℂ)
  simp [Complex.mul_im, hbase] <;> ring

/-- A nonempty repeated divisor survives; the obstruction is not confined to empty spectra. -/
theorem twisted_triple_root (S : Finset ℝ) (x : ℝ) :
    analyticOrderAt (twist S (normalizedExpProduct (fun _ : Fin 3 => x) 1 0)) x = 3 := by
  rw [twisted_spectral_orders S _ (by norm_num : (1 : ℝ) ≠ 0)]
  simp [occurrenceCount]

end FiniteSpectra

/-- Empty samples still give a nonconstant even exponent fixing 0 and both anchors. -/
theorem empty_exponent (z : ℂ) : exponent ∅ z = z ^ 4 + z ^ 2 := by
  rw [exponent, empty_samples_control]
  ring

end GRWTSK.NumberTheory.DivisorNormalizationObstruction
