/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilOddSineVariationalH1
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.Tactic

/-!
# Classical source return for the physical odd-sine variational IBP identity

The input is the original zero-extended Dirichlet sine basis, the literal
sineCoordinates and the exact physical residual/derivative profile from
WeilOddSineVariationalH1. The previous source assumed NativeVariationalIBP.
Here the same identity is derived from genuine classical first and second
derivatives and compact support, not by postulating the needed energy equality.

The proof differentiates smooth INTERIOR sine modes. It never differentiates
the piecewise derivative profile at either endpoint. Both physical
whole-line integrands are supported inside [-T,T], so the corresponding
Lebesgue integrals equal the interval integrals. At the endpoints only the
Dirichlet trace f(-T)=f(T)=0 is needed for the integration by parts.

The source constructs NativeVariationalIBP and supplies it to the
previous conditional sharp physical H1 estimate for genuine supported,
odd C2 tests. No cosine Parseval, new matrix, or spectral positivity is used.

All this is a MANUAL LEAN SOURCE CANDIDATE. Lean elaboration, fresh kernel
checking, transitive axiom audit and independent review: NOT_RUN.
RH and Dirichlet GRH are not proved, and the off-critical-zero amplification
and global cofinal all-mode arithmetic Weil lower sign remain unproved.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped Interval BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSineVariationalIBP

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm
open GRWTSK.NumberTheory.WeilQuadraticForm.OddGammaOutput
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineH2SpectralTail
open GRWTSK.NumberTheory.WeilQuadraticForm.OddSineVariationalH1

private def interiorSine (T : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  Real.sin (OddOutputTrace.frequency T n * t) / Real.sqrt T

private def interiorCosine (T : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  Real.cos (OddOutputTrace.frequency T n * t) / Real.sqrt T

private def interiorFirstMode (T : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  OddOutputTrace.frequency T n * interiorCosine T n t

private def interiorSecondMode (T : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  -(OddOutputTrace.frequency T n) ^ 2 * interiorSine T n t

private theorem hasDerivAt_interiorSine (T : ℝ) (n : ℕ) (t : ℝ) :
    HasDerivAt (interiorSine T n) (interiorFirstMode T n t) t := by
  convert (((hasDerivAt_id t).const_mul (OddOutputTrace.frequency T n)).sin.div_const
    (Real.sqrt T)) using 1 <;>
    simp [interiorSine, interiorFirstMode, interiorCosine] <;> ring

private theorem hasDerivAt_interiorFirstMode (T : ℝ) (n : ℕ) (t : ℝ) :
    HasDerivAt (interiorFirstMode T n) (interiorSecondMode T n t) t := by
  convert ((((hasDerivAt_id t).const_mul (OddOutputTrace.frequency T n)).cos.div_const
    (Real.sqrt T)).const_mul (OddOutputTrace.frequency T n)) using 1 <;>
    simp [interiorFirstMode, interiorCosine, interiorSecondMode, interiorSine] <;> ring

private theorem frequency_mul_radius (T : ℝ) (hT : 0 < T) (n : ℕ) :
    OddOutputTrace.frequency T n * T = (n : ℝ) * Real.pi := by
  unfold OddOutputTrace.frequency
  field_simp [hT.ne']
  ring

private theorem interiorSine_right (T : ℝ) (hT : 0 < T) (n : ℕ) :
    interiorSine T n T = 0 := by
  simp [interiorSine, frequency_mul_radius T hT n, Real.sin_nat_mul_pi]

private theorem interiorSine_left (T : ℝ) (hT : 0 < T) (n : ℕ) :
    interiorSine T n (-T) = 0 := by
  simp [interiorSine, mul_neg, frequency_mul_radius T hT n,
    Real.sin_neg, Real.sin_nat_mul_pi]

private def interiorProjection (T : ℝ) (M : ℕ) (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  ∑ i : Fin M, sineCoordinates T M f i * interiorSine T (i.val + 1) t

private def interiorProjectionFirst (T : ℝ) (M : ℕ) (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  ∑ i : Fin M, sineCoordinates T M f i * interiorFirstMode T (i.val + 1) t

private def interiorProjectionSecond (T : ℝ) (M : ℕ) (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  ∑ i : Fin M, sineCoordinates T M f i * interiorSecondMode T (i.val + 1) t

private theorem hasDerivAt_interiorProjection
    (T : ℝ) (M : ℕ) (f : ℝ → ℝ) (t : ℝ) :
    HasDerivAt (interiorProjection T M f) (interiorProjectionFirst T M f t) t := by
  unfold interiorProjection interiorProjectionFirst
  apply HasDerivAt.fun_sum
  intro i _
  exact (hasDerivAt_interiorSine T (i.val + 1) t).const_mul (sineCoordinates T M f i)

private theorem hasDerivAt_interiorProjectionFirst
    (T : ℝ) (M : ℕ) (f : ℝ → ℝ) (t : ℝ) :
    HasDerivAt (interiorProjectionFirst T M f)
      (interiorProjectionSecond T M f t) t := by
  unfold interiorProjectionFirst interiorProjectionSecond
  apply HasDerivAt.fun_sum
  intro i _
  exact (hasDerivAt_interiorFirstMode T (i.val + 1) t).const_mul
    (sineCoordinates T M f i)

private theorem interiorProjection_right (T : ℝ) (hT : 0 < T)
    (M : ℕ) (f : ℝ → ℝ) :
    interiorProjection T M f T = 0 := by
  simp [interiorProjection, interiorSine_right T hT]

private theorem interiorProjection_left (T : ℝ) (hT : 0 < T)
    (M : ℕ) (f : ℝ → ℝ) :
    interiorProjection T M f (-T) = 0 := by
  simp [interiorProjection, interiorSine_left T hT]

private theorem nativeProjection_eq_interior (T : ℝ) (M : ℕ)
    (f : ℝ → ℝ) (t : ℝ) (ht : t ∈ Icc (-T) T) :
    nativeProjection T M f t = interiorProjection T M f t := by
  unfold nativeProjection finiteSine interiorProjection
  apply Finset.sum_congr rfl
  intro i _
  have hphase :
      Real.pi * (((i.val + 1 : ℕ) : ℝ)) * t / T =
        OddOutputTrace.frequency T (i.val + 1) * t := by
    unfold OddOutputTrace.frequency
    ring
  simp only [zeroExtendedSine, ht, ite_true, interiorSine, hphase]

private theorem nativeProjectedDerivative_eq_interior (T : ℝ) (M : ℕ)
    (f : ℝ → ℝ) (t : ℝ) (ht : t ∈ Icc (-T) T) :
    nativeProjectedDerivative T M f t = interiorProjectionFirst T M f t := by
  unfold nativeProjectedDerivative interiorProjectionFirst
  apply Finset.sum_congr rfl
  intro i _
  simp [sourceSineDerivativeProfile, ht, interiorFirstMode, interiorCosine]

private theorem projectedSecondMode_eq_interior (T : ℝ) (M : ℕ)
    (f : ℝ → ℝ) (t : ℝ) (ht : t ∈ Icc (-T) T) :
    projectedSecondMode T M f t = interiorProjectionSecond T M f t := by
  unfold projectedSecondMode finiteSine interiorProjectionSecond
  apply Finset.sum_congr rfl
  intro i _
  have hphase :
      Real.pi * (((i.val + 1 : ℕ) : ℝ)) * t / T =
        OddOutputTrace.frequency T (i.val + 1) * t := by
    unfold OddOutputTrace.frequency
    ring
  simp only [zeroExtendedSine, ht, ite_true, interiorSecondMode, interiorSine, hphase]
  ring

/-- Transfer a WHOLE-LINE integral to a finite interval only after verifying
both that the physical integrand vanishes outside and that it agrees with the
smooth interior expression on the original window. -/
private theorem wholeLine_integral_eq_interior
    (T : ℝ) (hT : 0 < T) (F G : ℝ → ℝ)
    (hOutside : ∀ t, t ∉ Icc (-T) T → F t = 0)
    (hInside : ∀ t, t ∈ Icc (-T) T → F t = G t) :
    (∫ t : ℝ, F t) = ∫ t in (-T)..T, G t := by
  have hIndicator : (Icc (-T) T).indicator F = F := by
    funext t
    by_cases ht : t ∈ Icc (-T) T
    · simp [ht]
    · simp [ht, hOutside t ht]
  calc
    _ = ∫ t : ℝ, (Icc (-T) T).indicator F t := by rw [hIndicator]
    _ = ∫ t in Icc (-T) T, F t := by rw [integral_indicator measurableSet_Icc]
    _ = ∫ t in Icc (-T) T, G t := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
      exact hInside t ht
    _ = ∫ t in (-T)..T, G t := by
      rw [integral_Icc_eq_integral_Ioc,
        ← intervalIntegral.integral_of_le (by linarith : -T ≤ T)]

/-- The missing variational identity is derived for genuine supported C2
sources and the ORIGINAL finite-sine physical first derivative.
Endpoint values f(-T)=f(T)=0 suffice; no cosine Parseval input is used. -/
theorem nativeVariationalIBP_of_classical_supported
    (T : ℝ) (hT : 0 < T) (M : ℕ) (f first second : ℝ → ℝ)
    (hf : ∀ t, HasDerivAt f (first t) t)
    (hfirst : ∀ t, HasDerivAt first (second t) t)
    (hsecond : Continuous second)
    (hleft : f (-T) = 0) (hright : f T = 0)
    (hfOutside : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hfirstOutside : ∀ t, t ∉ Icc (-T) T → first t = 0) :
    NativeVariationalIBP T M f first second := by
  let p := interiorProjection T M f
  let pFirst := interiorProjectionFirst T M f
  let pSecond := interiorProjectionSecond T M f
  let e := fun t : ℝ => f t - p t
  let g := fun t : ℝ => first t - pFirst t
  let h := fun t : ℝ => second t - pSecond t
  have heDeriv (t : ℝ) : HasDerivAt e (g t) t := by
    dsimp [e, g]
    exact (hf t).sub (hasDerivAt_interiorProjection T M f t)
  have hgDeriv (t : ℝ) : HasDerivAt g (h t) t := by
    dsimp [g, h]
    exact (hfirst t).sub (hasDerivAt_interiorProjectionFirst T M f t)
  have hgCont : Continuous g := fun t => (hgDeriv t).continuousAt
  have hhCont : Continuous h := by
    dsimp [h, pSecond, interiorProjectionSecond, interiorSecondMode,
      interiorSine]
    fun_prop
  have heLeft : e (-T) = 0 := by
    dsimp [e, p]
    rw [hleft, interiorProjection_left T hT M f]
    ring
  have heRight : e T = 0 := by
    dsimp [e, p]
    rw [hright, interiorProjection_right T hT M f]
    ring
  have hParts :
      (∫ t in (-T)..T, e t * h t) =
        e T * g T - e (-T) * g (-T) -
          ∫ t in (-T)..T, g t * g t := by
    exact intervalIntegral.integral_mul_deriv_eq_deriv_mul
      (a := -T) (b := T)
      (u := e) (u' := g) (v := g) (v' := h)
      (fun t _ => heDeriv t) (fun t _ => hgDeriv t)
      (hgCont.intervalIntegrable _ _)
      (hhCont.intervalIntegrable _ _)
  have hInsideIBP :
      (∫ t in (-T)..T, g t ^ 2) =
        -(∫ t in (-T)..T, e t * h t) := by
    have hpart' := hParts
    rw [heLeft, heRight] at hpart'
    simp only [zero_mul, zero_sub] at hpart'
    calc
      _ = ∫ t in (-T)..T, g t * g t := by
        congr 1
        funext t
        ring
      _ = _ := by linarith
  have hFirstWhole :
      physicalDerivativeError T M f first =
        ∫ t in (-T)..T, g t ^ 2 := by
    change (∫ t : ℝ,
      (first t - nativeProjectedDerivative T M f t) ^ 2) = _
    apply wholeLine_integral_eq_interior T hT
      (fun t => (first t - nativeProjectedDerivative T M f t) ^ 2)
      (fun t => g t ^ 2)
    · intro t ht
      have hp : nativeProjectedDerivative T M f t = 0 := by
        simp [nativeProjectedDerivative, sourceSineDerivativeProfile, ht]
      simp [hfirstOutside t ht, hp]
    · intro t ht
      rw [nativeProjectedDerivative_eq_interior T M f t ht]
      rfl
  have hCrossWhole :
      (∫ t : ℝ, nativeResidual T M f t *
        (second t - projectedSecondMode T M f t)) =
        ∫ t in (-T)..T, e t * h t := by
    apply wholeLine_integral_eq_interior T hT
      (fun t => nativeResidual T M f t *
        (second t - projectedSecondMode T M f t))
      (fun t => e t * h t)
    · intro t ht
      have hp : nativeProjection T M f t = 0 :=
        finiteSine_eq_zero_off_window T _ ht
      simp [nativeResidual, hfOutside t ht, hp]
    · intro t ht
      have hres : nativeResidual T M f t = e t := by
        dsimp [nativeResidual, e, p]
        rw [nativeProjection_eq_interior T M f t ht]
      have hpSecond : projectedSecondMode T M f t = pSecond t :=
        projectedSecondMode_eq_interior T M f t ht
      rw [hres, hpSecond]
      rfl
  change physicalDerivativeError T M f first =
    -(∫ t : ℝ, nativeResidual T M f t *
      (second t - projectedSecondMode T M f t))
  rw [hFirstWhole, hCrossWhole]
  exact hInsideIBP

/-- The full sharp PHYSICAL H1 bound now follows from actual classical
derivatives and pointwise window support, without an extra variational
IBP axiom or an assumed Fourier L2 rate. It still depends on the
imported source Parseval, Green and finite fourth-moment proof candidates. -/
theorem physical_H1_error_of_classical_supported
    (T : ℝ) (hT : 0 < T) (M : ℕ) (f first second : ℝ → ℝ)
    (hfder : ∀ t, HasDerivAt f (first t) t)
    (hfirstDer : ∀ t, HasDerivAt first (second t) t)
    (hsecondCont : Continuous second)
    (hleft : f (-T) = 0) (hright : f T = 0)
    (hfOutside : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hfirstOutside : ∀ t, t ∉ Icc (-T) T → first t = 0)
    (hf : MemLp f 2 volume) (hodd : Function.Odd f)
    (hs : MemLp second 2 volume) (hoddSecond : Function.Odd second)
    (hsupportSecond : ∀ t, t ∉ Icc (-T) T → second t = 0) :
    physicalL2Error T M f + physicalDerivativeError T M f first ≤
      (∫ t : ℝ, second t ^ 2) /
        (sourceModeFrequency T M) ^ 4 +
      (∫ t : ℝ, second t ^ 2) /
        (sourceModeFrequency T M) ^ 2 := by
  exact physical_H1_error_le_of_classical_C2_and_variational
    T hT M f first second hfder hfirstDer hsecondCont
    hleft hright hf hodd hfOutside hs hoddSecond hsupportSecond
    (nativeVariationalIBP_of_classical_supported T hT M f first second
      hfder hfirstDer hsecondCont hleft hright hfOutside hfirstOutside)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSineVariationalIBP
