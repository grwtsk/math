/-
Copyright (c) 2026 R. A. Jacob Martone. All rights reserved.
Original contributions: MIT (repository LICENSE).
Mathematical provenance: Alex Kontorovich, Terry Tao and
PrimeNumberTheoremAnd contributors (upstream Apache-2.0).
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaCompactSchwartzCutoff
import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier
import Mathlib.Analysis.Distribution.SchwartzSpace.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Genuine additivity of the pinned Wiener--Ikehara q=1 remainder

The actual Fourier arithmetic series, rescaled Fourier pole tail,
and Wiener remainder were defined in
WienerIkeharaQuantitativeSchwartzError.lean.

For T>=1 this module sources the ADDITIVITY and SUBTRACTION
identities needed to compare compact truncations with the original
Schwartz test:

  E_T(g) = E_T(g_R) + E_T(g-g_R).

The arithmetic tsum step uses the real absolute summability already
supplied by the quantitative Lambda Fourier source, rather than
pretending all infinite sums commute with subtraction.

The Fourier tail step uses actual integrability of the rescaled
Schwartz Fourier transform and a real integral_add/integral_neg
theorem. The arithmetic frequency is +log(n/T)/(2*pi), and the
tail frequency is u/(2*pi), as in the maintained Wiener proof.

These algebraic source proofs are substantive, but do NOT imply
E_T(g_R)->0 or Schwartz convergence g_R->g. The cutoff construction
is genuine and separately sourced. The next theorem must prove the
weighted-derivative seminorm convergence, for every k,n:

   sup_x |x|^k |D^n[(1-c(x/(R+1)))g(x)]| -> 0.

No unproved lemma is installed as a proof-producing field.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis

open Real Complex Filter Set MeasureTheory FourierTransform SchwartzMap
open scoped FourierTransform

/-- Actual additivity of each Fourier-weighted von Mangoldt
L-series term. The fixed coefficient does not depend on g. -/
theorem wienerSigmaFourierTerm_add
    (g h : 𝓢(ℝ, ℂ)) (T sigma : ℝ) (n : ℕ) :
    wienerSigmaFourierTerm (g + h) T sigma n =
      wienerSigmaFourierTerm g T sigma n +
        wienerSigmaFourierTerm h T sigma n := by
  unfold wienerSigmaFourierTerm
  change LSeries.term wienerFubiniLambda (sigma : ℂ) n *
      (𝓕 (g + h : 𝓢(ℝ, ℂ))) (wienerFubiniFrequency n T) =
    LSeries.term wienerFubiniLambda (sigma : ℂ) n *
        (𝓕 g : 𝓢(ℝ, ℂ)) (wienerFubiniFrequency n T) +
      LSeries.term wienerFubiniLambda (sigma : ℂ) n *
        (𝓕 h : 𝓢(ℝ, ℂ)) (wienerFubiniFrequency n T)
  simp only [FourierTransform.fourier_add, Pi.add_apply, mul_add]

/-- Actual negation, retaining the original complex Fourier phase. -/
theorem wienerSigmaFourierTerm_neg
    (g : 𝓢(ℝ, ℂ)) (T sigma : ℝ) (n : ℕ) :
    wienerSigmaFourierTerm (-g) T sigma n =
      -wienerSigmaFourierTerm g T sigma n := by
  unfold wienerSigmaFourierTerm
  change LSeries.term wienerFubiniLambda (sigma : ℂ) n *
      (𝓕 (-g : 𝓢(ℝ, ℂ))) (wienerFubiniFrequency n T) =
    -(LSeries.term wienerFubiniLambda (sigma : ℂ) n *
        (𝓕 g : 𝓢(ℝ, ℂ)) (wienerFubiniFrequency n T))
  simp only [FourierTransform.fourier_neg, Pi.neg_apply, mul_neg]

/-- True absolute summability of the q=1 arithmetic Fourier terms
at sigma=1, from the SOURCE-LEVEL uniform Chebyshev bound. -/
theorem wienerSchwartzArithmetic_summable
    (g : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    Summable (wienerSigmaFourierTerm g T 1) := by
  obtain ⟨C, hC, h⟩ :=
    wienerSigmaFourier_uniform_norm_tsum g
  exact ((h T 1 hT (le_refl _)).1).of_norm

/-- Actual tsum additivity, with the two separate absolute
summability hypotheses discharged using the pinned von Mangoldt
logarithmic kernel. -/
theorem wienerSchwartzBoundaryArithmetic_add
    (g h : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    wienerSchwartzBoundaryArithmetic (g + h) T =
      wienerSchwartzBoundaryArithmetic g T +
        wienerSchwartzBoundaryArithmetic h T := by
  have hg := wienerSchwartzArithmetic_summable g hT
  have hh := wienerSchwartzArithmetic_summable h hT
  calc
    wienerSchwartzBoundaryArithmetic (g + h) T =
        ∑' n : ℕ,
          (wienerSigmaFourierTerm g T 1 n +
            wienerSigmaFourierTerm h T 1 n) := by
      unfold wienerSchwartzBoundaryArithmetic
      apply tsum_congr
      intro n
      exact wienerSigmaFourierTerm_add g h T 1 n
    _ = wienerSchwartzBoundaryArithmetic g T +
          wienerSchwartzBoundaryArithmetic h T := by
      simpa only [wienerSchwartzBoundaryArithmetic] using
        hg.tsum_add hh

/-- The original arithmetic series is also compatible with the
negative of a Schwartz function, without losing its zero term. -/
theorem wienerSchwartzBoundaryArithmetic_neg
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) :
    wienerSchwartzBoundaryArithmetic (-g) T =
      -wienerSchwartzBoundaryArithmetic g T := by
  unfold wienerSchwartzBoundaryArithmetic
  simp_rw [wienerSigmaFourierTerm_neg]
  exact tsum_neg

/-- Actual integrability of the rescaled Schwartz Fourier transform
on the entire real line, hence on the true pole half-line. -/
theorem wienerSchwartzBoundaryTail_integrable
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) :
    IntegrableOn
      (fun u : ℝ =>
        (𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi)))
      (Set.Ici (-Real.log T)) volume := by
  have hc : (2 * Real.pi : ℝ) ≠ 0 := by positivity
  have hwhole :
      Integrable
        (fun u : ℝ =>
          (𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi))) := by
    simpa only [SchwartzMap.fourier_coe] using
      (𝓕 g : 𝓢(ℝ, ℂ)).integrable.comp_div hc
  exact hwhole.integrableOn

/-- The pole Fourier integral respects addition, using
integrability proofs for BOTH terms. -/
theorem wienerSchwartzBoundaryTail_add
    (g h : 𝓢(ℝ, ℂ)) (T : ℝ) :
    wienerSchwartzBoundaryTail (g + h) T =
      wienerSchwartzBoundaryTail g T +
        wienerSchwartzBoundaryTail h T := by
  have hg := wienerSchwartzBoundaryTail_integrable g T
  have hh := wienerSchwartzBoundaryTail_integrable h T
  calc
    wienerSchwartzBoundaryTail (g + h) T =
      ∫ u in Set.Ici (-Real.log T),
        ((𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi)) +
          (𝓕 (h : ℝ → ℂ)) (u / (2 * Real.pi))) := by
      unfold wienerSchwartzBoundaryTail
      apply setIntegral_congr_fun measurableSet_Ici
      intro u hu
      change (𝓕 (g + h : 𝓢(ℝ, ℂ))) (u / (2 * Real.pi)) =
        (𝓕 g : 𝓢(ℝ, ℂ)) (u / (2 * Real.pi)) +
          (𝓕 h : 𝓢(ℝ, ℂ)) (u / (2 * Real.pi))
      simp
    _ = wienerSchwartzBoundaryTail g T +
          wienerSchwartzBoundaryTail h T := by
      simpa [wienerSchwartzBoundaryTail] using
        (integral_add hg hh)

/-- The pole Fourier integral also respects negation, without an
illegal interchange of a nonintegrable function. -/
theorem wienerSchwartzBoundaryTail_neg
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) :
    wienerSchwartzBoundaryTail (-g) T =
      -wienerSchwartzBoundaryTail g T := by
  unfold wienerSchwartzBoundaryTail
  have h : ∀ u : ℝ,
      (𝓕 ((-g : 𝓢(ℝ, ℂ)) : ℝ → ℂ)) (u / (2 * Real.pi)) =
        -(𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi)) := by
    intro u
    change (𝓕 (-g : 𝓢(ℝ, ℂ))) (u / (2 * Real.pi)) =
      -(𝓕 g : 𝓢(ℝ, ℂ)) (u / (2 * Real.pi))
    simp
  simp_rw [h]
  exact integral_neg

/-- The actual q=1 Wiener error is ADDITIVE, not an opaque
term evaluated on differences. All series and integrals are
legitimately linearly combined. -/
theorem wienerSchwartzBoundaryRemainder_add
    (g h : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    wienerSchwartzBoundaryRemainder (g + h) T =
      wienerSchwartzBoundaryRemainder g T +
        wienerSchwartzBoundaryRemainder h T := by
  unfold wienerSchwartzBoundaryRemainder
  rw [wienerSchwartzBoundaryArithmetic_add g h hT,
    wienerSchwartzBoundaryTail_add g h T]
  ring

theorem wienerSchwartzBoundaryRemainder_neg
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) :
    wienerSchwartzBoundaryRemainder (-g) T =
      -wienerSchwartzBoundaryRemainder g T := by
  unfold wienerSchwartzBoundaryRemainder
  rw [wienerSchwartzBoundaryArithmetic_neg,
    wienerSchwartzBoundaryTail_neg]
  ring

/-- The exact subtraction identity, used for cutoff errors. -/
theorem wienerSchwartzBoundaryRemainder_sub
    (g h : 𝓢(ℝ, ℂ)) {T : ℝ} (hT : 1 ≤ T) :
    wienerSchwartzBoundaryRemainder (g - h) T =
      wienerSchwartzBoundaryRemainder g T -
        wienerSchwartzBoundaryRemainder h T := by
  rw [sub_eq_add_neg,
    wienerSchwartzBoundaryRemainder_add g (-h) hT,
    wienerSchwartzBoundaryRemainder_neg]
  ring

/-- The ACTUAL compact truncation from the companion module
satisfies the exact remainder decomposition at all T>=1.

The still-open result is that these truncations converge in the
Schwartz topology, not the algebraic identity below. -/
theorem wienerSchwartzBoundaryRemainder_truncation_split
    (g : 𝓢(ℝ, ℂ)) (R : ℕ)
    {T : ℝ} (hT : 1 ≤ T) :
    wienerSchwartzBoundaryRemainder g T =
      wienerSchwartzBoundaryRemainder
        (wienerCompactSchwartzTruncation g R) T +
      wienerSchwartzBoundaryRemainder
        (g - wienerCompactSchwartzTruncation g R) T := by
  calc
    wienerSchwartzBoundaryRemainder g T =
      wienerSchwartzBoundaryRemainder
        (wienerCompactSchwartzTruncation g R +
          (g - wienerCompactSchwartzTruncation g R)) T := by
      congr 1
      abel
    _ = wienerSchwartzBoundaryRemainder
          (wienerCompactSchwartzTruncation g R) T +
        wienerSchwartzBoundaryRemainder
          (g - wienerCompactSchwartzTruncation g R) T :=
      wienerSchwartzBoundaryRemainder_add _ _ hT

end GRWTSK.RiemannHypothesis
