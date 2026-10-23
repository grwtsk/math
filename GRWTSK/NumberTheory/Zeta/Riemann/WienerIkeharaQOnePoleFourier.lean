/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Original contributions: MIT (repository LICENSE).
Analytic source adaptation from PrimeNumberTheoremAnd/Wiener.lean by
Alex Kontorovich, Terry Tao and collaborators (Apache-2.0 upstream).
Maintained source at 127b50e33f6033e2147921167a117af96d9ba4ea,
Wiener.lean blob 59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac.
Formalization assistance: OpenAI ChatGPT.
-/
import Mathlib.Analysis.Fourier.FourierTransform
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.ExpDecay
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

open Real Complex Filter Set MeasureTheory FourierTransform LSeries
open scoped FourierTransform ArithmeticFunction

/-!
# Genuine finite-sigma Fourier identity for the residue-one pole

The maintained PrimeNumberTheoremAnd proof has two Fourier identities:
first_fourier for the von Mangoldt L-series and second_fourier for its
pole 1/(s-1). The previous source module supplied a genuine first
Fourier/Fubini proof with integrated-norm summability.

This source ports the DIFFERENT pole identity. It uses the actual
product-measure Fubini theorem and proves integrability of the
two-variable integrand by the explicit product majorant

   exp(-u*(sigma-1)) * norm(psi(t)),

on u >= -log(T), t in all of R. sigma>1 is essential: it makes the
exponential tail integrable. The pinned improper-integral theorem
integral_exp_mul_complex_Ioi evaluates its complex Laplace transform,
so no unverified boundary term at infinity is discarded.

For sigma>1, T>0 and continuous compactly supported complex psi:

 integral_(u>=-log T)
   exp(-u*(sigma-1))*Fourier(psi)(u/(2*pi)) du
  = T^(sigma-1) * integral_t
      (sigma+it-1)^(-1)*psi(t)*T^(it) dt.

The sign is the Fourier exp(-2*pi*i*t*xi) convention, with xi=u/(2*pi).
It yields (1-sigma-it) u in the exponent. This is the SECOND Fourier
identity and not the full Wiener--Ikehara Schwartz limit.

This module is independently importable without the still-unverified
first Fourier or q=1 boundary source. Once both have separate kernel
receipts, the two finite-sigma Fourier identities and the actual pinned
q=1 pole formula compose to G(s)=LSeries(Lambda,s)-1/(s-1).

Remaining: the uniform Chebyshev logarithmic-kernel bound_sum_log',
the controlled sigma↓1 arithmetic limit, and the compact-to-Schwartz
extension. These are not postulated or inferred from boundary continuity.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. No RH or PNT claim.
-/

namespace GRWTSK.RiemannHypothesis

/-- The actual pole integrand on the product of a half-line and R.
The Circle character makes the phase have unit complex norm. -/
def wienerPoleProduct (sigma : ℝ) (psi : ℝ → ℂ)
    (u t : ℝ) : ℂ :=
  (Real.exp (-u * (sigma - 1)) : ℂ) *
    (𝐞 (-(t * (u / (2 * Real.pi)))) • psi t)

/-- The decaying real factor is integrable on the closed half-line:
singletons have zero Lebesgue measure and the parameter sigma>1
supplies the strictly positive exponential decay exponent. -/
theorem wienerPole_real_decay_integrable
    (sigma T : ℝ) (hsigma : 1 < sigma) :
    IntegrableOn (fun u : ℝ => Real.exp (-u * (sigma - 1)))
      (Set.Ici (-Real.log T)) volume := by
  rw [integrableOn_Ici_iff_integrableOn_Ioi]
  simpa only [mul_comm] using
    (exp_neg_integrableOn_Ioi (-Real.log T)
      (show 0 < sigma - 1 by linarith))

/-- The complex exponential decay has exactly the real exponential
norm, hence is integrable on the same half-line. -/
theorem wienerPole_complex_decay_integrable
    (sigma T : ℝ) (hsigma : 1 < sigma) :
    Integrable
      (fun u : ℝ => (Real.exp (-u * (sigma - 1)) : ℂ))
      (volume.restrict (Set.Ici (-Real.log T))) := by
  exact (wienerPole_real_decay_integrable sigma T hsigma).ofReal

/-- REAL Fubini domination, not a Fubini assumption: the integrand is
integrable for the product measure because its pointwise complex norm
is exactly exp(-u*(sigma-1))*norm(psi(t)), and BOTH factors are L1.
The first factor requires sigma>1; the second requires Integrable psi.
-/
theorem wienerPoleProduct_integrable
    (sigma T : ℝ) (hsigma : 1 < sigma)
    (psi : ℝ → ℂ) (hpsi : Integrable psi) :
    Integrable
      (Function.uncurry (wienerPoleProduct sigma psi))
      ((volume.restrict (Set.Ici (-Real.log T))).prod volume) := by
  have hprod :
      Integrable
        (fun p : ℝ × ℝ =>
          (Real.exp (-p.1 * (sigma - 1)) : ℂ) * psi p.2)
        ((volume.restrict (Set.Ici (-Real.log T))).prod volume) :=
    (wienerPole_complex_decay_integrable sigma T hsigma).mul_prod hpsi
  have hmeas :
      AEStronglyMeasurable
        (Function.uncurry (wienerPoleProduct sigma psi))
        ((volume.restrict (Set.Ici (-Real.log T))).prod volume) := by
    apply Continuous.aestronglyMeasurable
    dsimp [Function.uncurry, wienerPoleProduct]
    fun_prop
  apply hprod.mono hmeas
  apply Eventually.of_forall
  intro p
  dsimp [Function.uncurry, wienerPoleProduct]
  simp [norm_mul, Circle.norm_smul]

/-- Exact exponential phase after the 2*pi Fourier character cancels
its frequency denominator: 1-sigma-i*t is the Laplace parameter,
not 1-sigma+i*t. -/
theorem wienerPoleProduct_eq_complexExp
    (sigma : ℝ) (psi : ℝ → ℂ) (u t : ℝ) :
    wienerPoleProduct sigma psi u t =
      Complex.exp
        (((1 : ℂ) - (sigma : ℂ) - (t : ℂ) * Complex.I) *
          (u : ℂ)) * psi t := by
  unfold wienerPoleProduct
  rw [Circle.smul_def, Real.fourierChar_apply]
  simp only [Complex.ofReal_exp, ← Complex.exp_add]
  congr 1
  have htwoPi : (2 * Real.pi : ℂ) ≠ 0 := by
    exact_mod_cast (show (2 * Real.pi : ℝ) ≠ 0 by positivity)
  push_cast
  field_simp [htwoPi]
  ring

/-- Evaluation of the complex Laplace tail in the ACTUAL pole
normalization: integral over (-log T, infinity) of the exponential
is T^(sigma-1)*(sigma+it-1)^(-1)*T^(it).

No complex improper-integral limit is assumed; pinned Mathlib's
integral_exp_mul_complex_Ioi carries that limit and integrability.
-/
theorem wienerPole_complexExp_integral
    (sigma t T : ℝ) (hsigma : 1 < sigma) (hT : 0 < T) :
    (∫ u in Set.Ici (-Real.log T),
      Complex.exp
        (((1 : ℂ) - (sigma : ℂ) - (t : ℂ) * Complex.I) *
          (u : ℂ))) =
      (T ^ (sigma - 1) : ℝ) *
        (((sigma : ℂ) + (t : ℂ) * Complex.I - 1)⁻¹) *
          (T : ℂ) ^ ((t : ℂ) * Complex.I) := by
  let c : ℂ := 1 - (sigma : ℂ) - (t : ℂ) * Complex.I
  have hc : c.re < 0 := by
    dsimp [c]
    simp
    linarith
  rw [integral_Ici_eq_integral_Ioi]
  have hint :=
    integral_exp_mul_complex_Ioi (a := c) hc (-Real.log T)
  have hcast :
      (fun u : ℝ =>
        Complex.exp
          (((1 : ℂ) - (sigma : ℂ) - (t : ℂ) * Complex.I) *
            (u : ℂ))) =
        (fun u : ℝ => Complex.exp (c * u)) := by
    rfl
  rw [hcast, hint]
  change
    -(Complex.exp
        (-((1 - (sigma : ℂ) - (t : ℂ) * Complex.I) *
          (Real.log T : ℂ))) /
        (1 - (sigma : ℂ) - (t : ℂ) * Complex.I)) =
      (T ^ (sigma - 1) : ℝ) *
        (((sigma : ℂ) + (t : ℂ) * Complex.I - 1)⁻¹) *
          (T : ℂ) ^ ((t : ℂ) * Complex.I)
  calc
    _ = Complex.exp
        ((Real.log T : ℂ) *
          (((sigma : ℂ) - 1) + (t : ℂ) * Complex.I)) *
        (((sigma : ℂ) + (t : ℂ) * Complex.I - 1)⁻¹) := by
      rw [← div_neg]
      ring
    _ = (T : ℂ) ^ (((sigma : ℂ) - 1) + (t : ℂ) * Complex.I) *
        (((sigma : ℂ) + (t : ℂ) * Complex.I - 1)⁻¹) := by
      rw [Complex.cpow_def_of_ne_zero
        (by exact_mod_cast hT.ne')]
      rw [Complex.ofReal_log hT.le]
    _ = (T : ℂ) ^ ((sigma : ℂ) - 1) *
          (T : ℂ) ^ ((t : ℂ) * Complex.I) *
          (((sigma : ℂ) + (t : ℂ) * Complex.I - 1)⁻¹) := by
      rw [Complex.cpow_add _ _
        (by exact_mod_cast hT.ne')]
    _ = _ := by
      rw [Complex.ofReal_cpow hT.le]
      push_cast
      ring

/-- Entire second Fourier/Fubini identity: the left-hand pole Fourier
integral is evaluated by Fubini under wienerPoleProduct_integrable,
and its inner Laplace integral is evaluated at the exact lower
endpoint by wienerPole_complexExp_integral. -/
theorem wienerPole_secondFourier
    (sigma T : ℝ) (hsigma : 1 < sigma) (hT : 0 < T)
    (psi : ℝ → ℂ)
    (hpsi : Continuous psi) (hcompact : HasCompactSupport psi) :
    (∫ u in Set.Ici (-Real.log T),
      (Real.exp (-u * (sigma - 1)) : ℂ) *
        (𝓕 psi) (u / (2 * Real.pi))) =
      (T ^ (sigma - 1) : ℝ) *
        ∫ t : ℝ,
          ((1 : ℂ) /
            ((sigma : ℂ) + (t : ℂ) * Complex.I - 1)) *
            psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I) := by
  have htest : Integrable psi :=
    hpsi.integrable_of_hasCompactSupport hcompact
  have hFubini := wienerPoleProduct_integrable
    sigma T hsigma psi htest
  have hswap :
      (∫ u in Set.Ici (-Real.log T),
        ∫ t : ℝ, wienerPoleProduct sigma psi u t) =
      (∫ t : ℝ,
        ∫ u in Set.Ici (-Real.log T),
          wienerPoleProduct sigma psi u t) :=
    integral_integral_swap hFubini
  calc
    (∫ u in Set.Ici (-Real.log T),
        (Real.exp (-u * (sigma - 1)) : ℂ) *
          (𝓕 psi) (u / (2 * Real.pi))) =
      ∫ u in Set.Ici (-Real.log T),
        ∫ t : ℝ, wienerPoleProduct sigma psi u t := by
      apply setIntegral_congr_fun measurableSet_Ici
      intro u _hu
      rw [Real.fourier_real_eq]
      rw [← integral_const_mul]
      congr 1
      ext t
      simp [wienerPoleProduct, mul_assoc]
    _ = ∫ t : ℝ,
        ∫ u in Set.Ici (-Real.log T),
          wienerPoleProduct sigma psi u t := hswap
    _ = (T ^ (sigma - 1) : ℝ) *
        ∫ t : ℝ,
          (1 / ((sigma : ℂ) + (t : ℂ) * Complex.I - 1)) *
            psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I) := by
      rw [← integral_const_mul]
      congr 1
      ext t
      simp_rw [wienerPoleProduct_eq_complexExp]
      rw [← integral_mul_const]
      rw [wienerPole_complexExp_integral sigma t T hsigma hT]
      ring

/-!
# Remaining after this source-only supplier

The finite-sigma first and second identities now have a source-level
path. The full Wiener--Ikehara Schwartz corollary still requires the
uniform-in-T logarithmic Chebyshev kernel estimate bound_sum_log',
its use as a dominating series while sigma decreases to one, and
compact truncation/Schwartz approximation. These are mathematically
independent; this file neither states their conclusions as Prop fields
nor invents an axiom to bridge them.

Source draft only, not a trusted Lean proof until actual pinned
--wfail and --trust=0 replay/axiom closure.
-/

end GRWTSK.RiemannHypothesis
