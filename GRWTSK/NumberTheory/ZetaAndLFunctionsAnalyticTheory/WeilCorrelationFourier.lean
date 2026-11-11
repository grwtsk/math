/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSourcePrimeCorrelation
import GRWTSK.MeasureAndIntegration.FourierCollisionBound
import Mathlib.Analysis.Convolution
import Mathlib.MeasureTheory.Function.LpSpace.Indicator
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

/-!
# Complex Fourier return for the original arithmetic correlation

MSC2020: 11M06, 11M26, 11M41, 42A38.

This file uses the EXISTING `SourcePrimeCorrelation.correlation`:
`C_f(r) = integral conj(f(t)) * f(t+r) dt`, with Lebesgue measure.
The transform convention is the literal integral with kernel `exp(I*z*t)`.
For supported integrable complex f, its complex-frequency transform is
`F(z) * conj(F(conj(z)))`, not an absolute square off the real axis.

The proof twists the two factors before applying Mathlib's integrable
convolution and integral-convolution theorems. Their integrability is supplied
by `FourierCollisionBound.integrable_fourier_integrand`, including the reflected
factor. Thus no Fubini hypothesis is replaced by a formal exchange of integrals.
For merely L1 inputs convolution exists almost everywhere; the smooth compact
specialization additionally proves existence of every inner correlation integral
using the existing L2 correlation theorem.

The two imaginary orientations are retained. At y = 1/2 their sum is exactly
the zeta pole functional applied to C_f, expressed as two CROSS products of
oppositely weighted moments. They are not replaced by a sum of norm squares.

This is an analytic component of the full arithmetic explicit formula, NOT a
zero-divisor formula, a construction of an off-line zero, or a sign theorem.
The original prime inventory, conductor, gamma/parity terms and arithmetic
value definitions are unchanged. RP-OC-01/02 and supplement C consume this
source-return component; coordination: grwtsk/math#1801.

Local consequence of the supplied research execution mandate (2026-11-11),
section 3 (transform/reflected pairing) and RP-OC-02, using pinned Mathlib.
Individual source maps and the full analytic argument are adjacent in
`WeilCorrelationFourier.provenance/`. Novelty UNASSESSED; no novelty claim.
SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit,
and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped ContDiff

open MeasureTheory
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

open GRWTSK.MeasureAndIntegration.FourierCollisionBound

private theorem reflected_integrable {f : ℝ → ℂ} (hf : Integrable f volume) :
    Integrable (fun t : ℝ => conj (f (-t))) volume := by
  have hn : Integrable (fun t : ℝ => f (-t)) volume := hf.comp_neg
  refine hn.norm.mono'
    (Complex.continuous_conj.comp_aestronglyMeasurable hn.aestronglyMeasurable) ?_
  exact Filter.Eventually.of_forall (fun t => by simp)

private theorem reflected_fourier_integrable (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (z : ℂ) :
    Integrable (fun t : ℝ => conj (f (-t)) *
      Complex.exp (Complex.I * z * (t : ℂ))) volume := by
  apply integrable_fourier_integrand (fun t : ℝ => conj (f (-t))) A
    (reflected_integrable hf) _ z
  intro t ht
  rw [hs (-t) (by simpa only [abs_neg] using ht)]
  simp

/-- An algebraic change-of-variable identity, used below only after proving
integrability of both twisted factors. -/
private theorem correlation_mul_exp_eq_convolution (f : ℝ → ℂ) (z : ℂ) (r : ℝ) :
    correlation f r * Complex.exp (Complex.I * z * (r : ℂ)) =
      convolution
        (fun t : ℝ => conj (f (-t)) * Complex.exp (Complex.I * z * (t : ℂ)))
        (fun t : ℝ => f t * Complex.exp (Complex.I * z * (t : ℂ)))
        (ContinuousLinearMap.mul ℂ ℂ) volume r := by
  change (∫ t : ℝ, conj (f t) * f (t + r)) *
      Complex.exp (Complex.I * z * (r : ℂ)) =
    ∫ t : ℝ, (conj (f (-t)) * Complex.exp (Complex.I * z * (t : ℂ))) *
      (f (r - t) * Complex.exp (Complex.I * z * ((r - t : ℝ) : ℂ)))
  rw [← integral_mul_const]
  calc
    _ = ∫ t : ℝ, conj (f (-t)) * f (-t + r) *
        Complex.exp (Complex.I * z * (r : ℂ)) :=
      (integral_neg_eq_self (fun t : ℝ => conj (f t) * f (t + r) *
        Complex.exp (Complex.I * z * (r : ℂ))) volume).symm
    _ = _ := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun t => by
        have hk : Complex.exp (Complex.I * z * (t : ℂ)) *
            Complex.exp (Complex.I * z * ((r - t : ℝ) : ℂ)) =
            Complex.exp (Complex.I * z * (r : ℂ)) := by
          rw [← Complex.exp_add]
          congr 1
          rw [Complex.ofReal_sub]
          ring
        rw [show -t + r = r - t by ring]
        calc
          _ = (conj (f (-t)) * f (r - t)) *
              (Complex.exp (Complex.I * z * (t : ℂ)) *
                Complex.exp (Complex.I * z * ((r - t : ℝ) : ℂ))) := by rw [hk]
          _ = _ := by ring)

private theorem reflected_fourier_integral (f : ℝ → ℂ) (z : ℂ) :
    (∫ t : ℝ, conj (f (-t)) * Complex.exp (Complex.I * z * (t : ℂ))) =
      conj (∫ t : ℝ, f t * Complex.exp (Complex.I * conj z * (t : ℂ))) := by
  calc
    _ = ∫ t : ℝ, conj (f t) * Complex.exp (Complex.I * z * ((-t : ℝ) : ℂ)) := by
      simpa only [neg_neg] using
        (integral_neg_eq_self (fun t : ℝ => conj (f (-t)) *
          Complex.exp (Complex.I * z * (t : ℂ))) volume).symm
    _ = ∫ t : ℝ, conj (f t * Complex.exp (Complex.I * conj z * (t : ℂ))) := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun t => by
        rw [map_mul, ← Complex.exp_conj]
        congr 1
        congr 1
        simp [map_mul])
    _ = _ := integral_conj

/-- The complex-frequency transform of the original correlation is an actual
integrable function. Only a.e. existence of inner integrals is needed at L1. -/
theorem integrable_correlation_fourier_integrand (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (z : ℂ) :
    Integrable (fun r : ℝ => correlation f r *
      Complex.exp (Complex.I * z * (r : ℂ))) volume := by
  have hleft := reflected_fourier_integrable f A hf hs z
  have hright := integrable_fourier_integrand f A hf hs z
  have hconv := hleft.integrable_convolution (ContinuousLinearMap.mul ℂ ℂ) hright
  exact hconv.congr (Filter.Eventually.of_forall
    (fun r => (correlation_mul_exp_eq_convolution f z r).symm))

/-- Exact complex-frequency return for the SAME correlation used in the
signed prime term. Complex reflection cannot be removed off the real axis. -/
theorem fourier_correlation_eq_reflected_product (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (z : ℂ) :
    (∫ r : ℝ, correlation f r * Complex.exp (Complex.I * z * (r : ℂ))) =
      (∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))) *
        conj (∫ t : ℝ, f t * Complex.exp (Complex.I * conj z * (t : ℂ))) := by
  have hleft := reflected_fourier_integrable f A hf hs z
  have hright := integrable_fourier_integrand f A hf hs z
  calc
    _ = ∫ r : ℝ, convolution
        (fun t : ℝ => conj (f (-t)) * Complex.exp (Complex.I * z * (t : ℂ)))
        (fun t : ℝ => f t * Complex.exp (Complex.I * z * (t : ℂ)))
        (ContinuousLinearMap.mul ℂ ℂ) volume r :=
      integral_congr_ae (Filter.Eventually.of_forall
        (correlation_mul_exp_eq_convolution f z))
    _ = (∫ t : ℝ, conj (f (-t)) * Complex.exp (Complex.I * z * (t : ℂ))) *
        (∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))) :=
      integral_convolution (ContinuousLinearMap.mul ℂ ℂ) hleft hright
    _ = _ := by rw [reflected_fourier_integral]; exact mul_comm _ _

private theorem imaginary_kernel (y t : ℝ) :
    Complex.exp (Complex.I * (Complex.I * (y : ℂ)) * (t : ℂ)) =
      (Real.exp (-y * t) : ℂ) := by
  have h : Complex.I * (Complex.I * (y : ℂ)) * (t : ℂ) =
      ((-y * t : ℝ) : ℂ) := by
    apply Complex.ext <;> simp [Complex.mul_re, Complex.mul_im] <;> ring
  rw [h, ← Complex.ofReal_exp]

/-- Both real exponential orientations are integrable; no pole-neutral
restriction is imposed. -/
theorem integrable_correlation_laplace_integrand (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (y : ℝ) :
    Integrable (fun r : ℝ => correlation f r * (Real.exp (-y * r) : ℂ)) volume := by
  simpa only [imaginary_kernel] using
    integrable_correlation_fourier_integrand f A hf hs (Complex.I * (y : ℂ))

/-- On the imaginary axis the two factors are oppositely weighted moments,
not the modulus square of a single moment. -/
theorem laplace_correlation_eq_reflected_product (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (y : ℝ) :
    (∫ r : ℝ, correlation f r * (Real.exp (-y * r) : ℂ)) =
      (∫ t : ℝ, f t * (Real.exp (-y * t) : ℂ)) *
        conj (∫ t : ℝ, f t * (Real.exp (y * t) : ℂ)) := by
  have h := fourier_correlation_eq_reflected_product f A hf hs (Complex.I * (y : ℂ))
  have hc : conj (Complex.I * (y : ℂ)) = Complex.I * ((-y : ℝ) : ℂ) := by simp
  rw [hc] at h
  simpa only [imaginary_kernel, neg_neg] using h

/-- The sum of both oriented exponential moments is a sum of conjugate CROSS
products. This retains the complete pair of zeta pole orientations at y=1/2. -/
theorem correlation_two_oriented_moments (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (y : ℝ) :
    Integrable (fun r : ℝ => correlation f r *
      ((Real.exp (-y * r) + Real.exp (y * r) : ℝ) : ℂ)) volume ∧
    (∫ r : ℝ, correlation f r *
      ((Real.exp (-y * r) + Real.exp (y * r) : ℝ) : ℂ)) =
      (∫ t : ℝ, f t * (Real.exp (-y * t) : ℂ)) *
        conj (∫ t : ℝ, f t * (Real.exp (y * t) : ℂ)) +
      (∫ t : ℝ, f t * (Real.exp (y * t) : ℂ)) *
        conj (∫ t : ℝ, f t * (Real.exp (-y * t) : ℂ)) := by
  have hm := integrable_correlation_laplace_integrand f A hf hs y
  have hp : Integrable (fun r : ℝ => correlation f r * (Real.exp (y * r) : ℂ)) volume := by
    simpa only [neg_neg] using integrable_correlation_laplace_integrand f A hf hs (-y)
  have hmval := laplace_correlation_eq_reflected_product f A hf hs y
  have hpval := laplace_correlation_eq_reflected_product f A hf hs (-y)
  simp only [neg_neg] at hpval
  constructor
  · simpa only [Complex.ofReal_add, mul_add] using hm.add hp
  · simp_rw [Complex.ofReal_add, mul_add]
    rw [integral_add hm hp, hmval, hpval]

/-- Explicit conductor-one pole term: both +1/2 and -1/2 exponential
orientations of the existing correlation, with no pole-neutral assumption.
This identifies the pole component only, not the complete zeta explicit formula. -/
theorem zeta_pole_correlation (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) :
    Integrable (fun r : ℝ => correlation f r *
      ((Real.exp (r / 2) + Real.exp (-r / 2) : ℝ) : ℂ)) volume ∧
    (∫ r : ℝ, correlation f r *
      ((Real.exp (r / 2) + Real.exp (-r / 2) : ℝ) : ℂ)) =
      (∫ t : ℝ, f t * (Real.exp (t / 2) : ℂ)) *
        conj (∫ t : ℝ, f t * (Real.exp (-t / 2) : ℂ)) +
      (∫ t : ℝ, f t * (Real.exp (-t / 2) : ℂ)) *
        conj (∫ t : ℝ, f t * (Real.exp (t / 2) : ℂ)) := by
  have hp (t : ℝ) : -(-(1 / 2 : ℝ)) * t = t / 2 := by ring
  have hm (t : ℝ) : (-(1 / 2 : ℝ)) * t = -t / 2 := by ring
  simpa only [hp, hm] using correlation_two_oriented_moments f A hf hs (-(1 / 2 : ℝ))

/-- The actual compact-smooth test domain supplies L1, L2, every inner integral,
and the complete complex-frequency identity. No new admissibility predicate.
Domain migration v2 (2026-11-11): the smooth order is scoped `∞`, not `⊤`.
The adjacent declaration-local v2 record supersedes the old domain description. -/
theorem smooth_fourier_correlation (f : ℝ → ℂ) (A : ℝ)
    (hf : ContDiff ℝ ∞ f) (hc : HasCompactSupport f)
    (hs : ∀ t, t ∉ Set.Icc (-A) A → f t = 0) (z : ℂ) :
    (∀ r : ℝ, Integrable (fun t : ℝ => conj (f t) * f (t + r)) volume) ∧
    Integrable (fun r : ℝ => correlation f r *
      Complex.exp (Complex.I * z * (r : ℂ))) volume ∧
    (∫ r : ℝ, correlation f r * Complex.exp (Complex.I * z * (r : ℂ))) =
      (∫ t : ℝ, f t * Complex.exp (Complex.I * z * (t : ℂ))) *
        conj (∫ t : ℝ, f t * Complex.exp (Complex.I * conj z * (t : ℂ))) := by
  have hf1 : Integrable f volume := hf.continuous.integrable_of_hasCompactSupport hc
  have hf2 : MemLp f 2 volume := hf.continuous.memLp_of_hasCompactSupport hc
  have hb : ∀ t, A < |t| → f t = 0 := by
    intro t ht
    apply hs t
    intro hmem
    exact (not_le_of_gt ht) (abs_le.mpr hmem)
  exact ⟨integrable_correlation_integrand hf2,
    integrable_correlation_fourier_integrand f A hf1 hb z,
    fourier_correlation_eq_reflected_product f A hf1 hb z⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
