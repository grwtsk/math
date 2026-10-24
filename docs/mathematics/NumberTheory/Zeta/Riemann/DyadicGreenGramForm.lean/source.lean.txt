/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenSourceFrame
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact finite Green Gram form

The exact dyadic source frame has a finite PSD quadratic expansion.  Write

  S_X(t) = sum_n coefficient(n) * feature(location(X,n),t)
  g_0(t) = centeredLogarithmAtom(t).

Then the centered residual is S_X-g_0, and

  ||S_X-g_0||²
   = primeGram_X
     - 2 * primeBackgroundCross_X
     + backgroundEnergy.

The prime-prime block uses the already-proved Green kernel covariance exactly.
No diagonal approximation or dropped mixed entry is used.

Adding mass0² and mass1² gives exactly augmentedEnergy.  The coordinate count is
X arithmetic slots + one fixed background slot + two endpoint slots = X+3.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXACT_FINITE_GREEN_GRAM_FORM_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

open _root_.MeasureTheory Set
open GRWTSK.Analysis.Integral.UnitIntervalPrimitives
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def greenPrimeFrameSum (X : ℕ) (t : ℝ) : ℝ :=
  ∑ n ∈ window X, coefficient n * feature (location X n) t

theorem greenSourceFrameValue_eq_primeSum_sub_background
    (X : ℕ) (t : ℝ) :
    greenSourceFrameValue X t =
      greenPrimeFrameSum X t - centeredLogarithmAtom t := by
  rfl

theorem centeredLogarithmAtom_continuousOn :
    ContinuousOn centeredLogarithmAtom (Icc (0 : ℝ) 1) := by
  unfold centeredLogarithmAtom
  exact logarithm_continuousOn.sub continuousOn_const

theorem centeredLogarithmAtom_integrable :
    Integrable centeredLogarithmAtom unitVolume :=
  centeredLogarithmAtom_continuousOn.integrableOn_Icc

theorem centeredLogarithmAtom_sq_integrable :
    Integrable (fun t => (centeredLogarithmAtom t)^2) unitVolume :=
  (centeredLogarithmAtom_continuousOn.pow 2).integrableOn_Icc

theorem feature_mul_centeredLogarithmAtom_integrable
    (r : ℝ) :
    Integrable
      (fun t => feature r t * centeredLogarithmAtom t)
      unitVolume := by
  have hstep :
      Integrable
        (fun t => step r t * centeredLogarithmAtom t)
        unitVolume := by
    have heq :
        (fun t => step r t * centeredLogarithmAtom t) =
          (Ici r).indicator centeredLogarithmAtom := by
      funext t
      by_cases h : r ≤ t <;> simp [step, Set.indicator, h]
    rw [heq]
    exact centeredLogarithmAtom_integrable.indicator measurableSet_Ici
  have hconst :
      Integrable
        (fun t => (1-r) * centeredLogarithmAtom t)
        unitVolume :=
    centeredLogarithmAtom_integrable.const_mul _
  apply Integrable.congr
    (hstep.sub hconst)
  filter_upwards with t
  simp only [Pi.sub_apply, feature]
  ring

theorem greenPrimeFrameSum_sq_integrable
    {X : ℕ} (_hX : 0 < X) :
    Integrable
      (fun t => (greenPrimeFrameSum X t)^2)
      unitVolume := by
  have hex (t : ℝ) :
      (greenPrimeFrameSum X t)^2 =
        ∑ n ∈ window X, ∑ m ∈ window X,
          coefficient n * coefficient m *
            (feature (location X n) t *
              feature (location X m) t) := by
    unfold greenPrimeFrameSum
    rw [pow_two, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n hn
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m hm
    ring
  simp_rw [hex]
  exact integrable_finsetSum (window X) (fun n hn =>
    integrable_finsetSum (window X) (fun m hm =>
      (feature_product_integrable (location X n) (location X m)).const_mul _))

theorem greenPrimeFrameSum_mul_background_integrable
    (X : ℕ) :
    Integrable
      (fun t =>
        greenPrimeFrameSum X t * centeredLogarithmAtom t)
      unitVolume := by
  have hex (t : ℝ) :
      greenPrimeFrameSum X t * centeredLogarithmAtom t =
        ∑ n ∈ window X,
          coefficient n *
            (feature (location X n) t * centeredLogarithmAtom t) := by
    unfold greenPrimeFrameSum
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n hn
    ring
  simp_rw [hex]
  exact integrable_finsetSum (window X) (fun n hn =>
    (feature_mul_centeredLogarithmAtom_integrable (location X n)).const_mul _)

/-- Exact prime-prime Green Gram block. -/
def greenPrimeGram (X : ℕ) : ℝ :=
  ∑ n ∈ window X, ∑ m ∈ window X,
    coefficient n * coefficient m *
      kernel (location X n) (location X m)

/-- Exact prime/background mixed block. -/
def greenPrimeBackgroundCross (X : ℕ) : ℝ :=
  ∑ n ∈ window X,
    coefficient n *
      (∫ t,
        feature (location X n) t * centeredLogarithmAtom t
        ∂unitVolume)

/-- Fixed background norm. -/
def greenBackgroundEnergy : ℝ :=
  ∫ t, (centeredLogarithmAtom t)^2 ∂unitVolume

/-- Exact finite quadratic expression for the centered residual energy. -/
def finiteGreenFrameQuadratic (X : ℕ) : ℝ :=
  greenPrimeGram X -
    2 * greenPrimeBackgroundCross X +
    greenBackgroundEnergy

theorem greenPrimeFrameSum_sq_integral
    {X : ℕ} (hX : 0 < X) :
    (∫ t, (greenPrimeFrameSum X t)^2 ∂unitVolume) =
      greenPrimeGram X := by
  unfold greenPrimeGram greenPrimeFrameSum
  exact finite_signed_gram
    (window X) coefficient (location X)
    (fun n hn => location_mem hX hn)

theorem greenPrimeFrameSum_mul_background_integral
    (X : ℕ) :
    (∫ t,
      greenPrimeFrameSum X t * centeredLogarithmAtom t
      ∂unitVolume) =
      greenPrimeBackgroundCross X := by
  have hex (t : ℝ) :
      greenPrimeFrameSum X t * centeredLogarithmAtom t =
        ∑ n ∈ window X,
          coefficient n *
            (feature (location X n) t * centeredLogarithmAtom t) := by
    unfold greenPrimeFrameSum
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n hn
    ring
  simp_rw [hex]
  rw [integral_finsetSum]
  · unfold greenPrimeBackgroundCross
    apply Finset.sum_congr rfl
    intro n hn
    rw [integral_const_mul]
  · intro n hn
    exact
      (feature_mul_centeredLogarithmAtom_integrable (location X n)).const_mul _

/-- Exact finite Gram expansion of the Green energy. -/
theorem greenEnergy_eq_finiteGreenFrameQuadratic
    {X : ℕ} (hX : 0 < X) :
    greenEnergy X = finiteGreenFrameQuadratic X := by
  rw [greenEnergy_eq_sourceFrame]
  have hS2 := greenPrimeFrameSum_sq_integrable hX
  have hSg := greenPrimeFrameSum_mul_background_integrable X
  have hg2 := centeredLogarithmAtom_sq_integrable
  have hex (t : ℝ) :
      (greenSourceFrameValue X t)^2 =
        (greenPrimeFrameSum X t)^2 -
          2 * (greenPrimeFrameSum X t * centeredLogarithmAtom t) +
          (centeredLogarithmAtom t)^2 := by
    rw [greenSourceFrameValue_eq_primeSum_sub_background]
    ring
  simp_rw [hex]
  have hadd := integral_add (hS2.sub (hSg.const_mul 2)) hg2
  have hsub := integral_sub hS2 (hSg.const_mul 2)
  simp only [Pi.sub_def] at hadd hsub
  rw [hadd, hsub,
    greenPrimeFrameSum_sq_integral hX,
    integral_const_mul,
    greenPrimeFrameSum_mul_background_integral]
  rfl

theorem finiteGreenFrameQuadratic_nonnegative
    {X : ℕ} (hX : 0 < X) :
    0 ≤ finiteGreenFrameQuadratic X := by
  rw [← greenEnergy_eq_finiteGreenFrameQuadratic hX]
  exact greenEnergy_nonneg X

/-- Full finite PSD source form including both endpoint moment coordinates. -/
def fullFiniteGreenSourceQuadratic (X : ℕ) : ℝ :=
  finiteGreenFrameQuadratic X + (mass0 X)^2 + (mass1 X)^2

theorem fullFiniteGreenSourceQuadratic_eq_augmentedEnergy
    {X : ℕ} (hX : 0 < X) :
    fullFiniteGreenSourceQuadratic X = augmentedEnergy X := by
  unfold fullFiniteGreenSourceQuadratic augmentedEnergy
  rw [← greenEnergy_eq_finiteGreenFrameQuadratic hX]

theorem fullFiniteGreenSourceQuadratic_nonnegative
    {X : ℕ} (hX : 0 < X) :
    0 ≤ fullFiniteGreenSourceQuadratic X := by
  rw [fullFiniteGreenSourceQuadratic_eq_augmentedEnergy hX]
  exact augmentedEnergy_nonneg X

/-- Source coordinate count: X arithmetic atoms, one background, two endpoints. -/
def fullFiniteGreenSourceCoordinateCount (X : ℕ) : ℕ :=
  greenSourceFrameAtomCount X + 2

theorem fullFiniteGreenSourceCoordinateCount_eq
    (X : ℕ) :
    fullFiniteGreenSourceCoordinateCount X = X + 3 := by
  simp [fullFiniteGreenSourceCoordinateCount, greenSourceFrameAtomCount_eq]

end GRWTSK.RiemannHypothesis
