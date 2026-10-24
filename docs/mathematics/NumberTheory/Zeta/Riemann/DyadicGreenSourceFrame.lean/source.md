# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenSourceFrame

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21eff5b8ad91d9884ad1b40437cbab9479abfcf6` · SHA-256 `9f36fdd7e9d2dfa01ca9517c3ff07fbd56c53e7828df3ff8d69fe9708ed07a3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedGrowingCellPacking
import GRWTSK.NumberTheory.VonMangoldt.ComplexReadout
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact dyadic Green source frame

The literal centered dyadic discrepancy is not an arbitrary L2 residual. It is
an exact finite source frame:

  cumulative_X(t) - center_X
    = sum_{X<n<=2X} (Lambda(n)/n) * feature(r_n,t)
      - centeredLogarithm(t).

Thus every octave carries X arithmetic atom slots plus one fixed background
atom. The atom count grows with X, and along dyadic scales it grows without
replacing the source by a bounded-rank surrogate.

The squared norm of this exact frame, together with the two endpoint moments,
is exactly augmentedEnergy.

Every complex Mellin action is an exact linear readout of this same frame and
the same two endpoint moments, via the existing centered integration-by-parts
identity.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXACT_DYADIC_GREEN_SOURCE_FRAME_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

open _root_.MeasureTheory Set
open GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence
open CanonicalZeroDivisor
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.Analysis.Integral.UnitIntervalPrimitives
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.VonMangoldt.CenteredReadout
open GRWTSK.NumberTheory.VonMangoldt.ComplexReadout
open GRWTSK.NumberTheory.VonMangoldt.MellinReadout

def centeredLogarithmAtom (t : ℝ) : ℝ :=
  logarithm t - (2 * Real.log 2 - 1)

def primeGreenFrameAtom (X n : ℕ) (t : ℝ) : ℝ :=
  coefficient n * feature (location X n) t

def greenSourceFrameValue (X : ℕ) (t : ℝ) : ℝ :=
  (∑ n ∈ window X, primeGreenFrameAtom X n t) -
    centeredLogarithmAtom t

theorem greenSourceFrameValue_eq_centeredResidual
    (X : ℕ) (t : ℝ) :
    greenSourceFrameValue X t =
      cumulative X t - center X := by
  unfold greenSourceFrameValue primeGreenFrameAtom
    centeredLogarithmAtom cumulative feature
  rw [center_expansion]
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib]
  ring

theorem greenEnergy_eq_sourceFrame
    (X : ℕ) :
    greenEnergy X =
      ∫ t, (greenSourceFrameValue X t)^2 ∂unitVolume := by
  unfold greenEnergy
  apply integral_congr_ae
  filter_upwards with t
  rw [greenSourceFrameValue_eq_centeredResidual]

def greenSourceFrameNormSq (X : ℕ) : ℝ :=
  (mass0 X)^2 + (mass1 X)^2 +
    ∫ t, (greenSourceFrameValue X t)^2 ∂unitVolume

theorem greenSourceFrameNormSq_eq_augmentedEnergy
    (X : ℕ) :
    greenSourceFrameNormSq X = augmentedEnergy X := by
  unfold greenSourceFrameNormSq augmentedEnergy
  rw [greenEnergy_eq_sourceFrame]
  ring

theorem greenSourceFrameNormSq_nonnegative
    (X : ℕ) :
    0 ≤ greenSourceFrameNormSq X := by
  rw [greenSourceFrameNormSq_eq_augmentedEnergy]
  exact augmentedEnergy_nonneg X

theorem window_card (X : ℕ) :
    (window X).card = X := by
  simp only [window, Nat.card_Ioc]
  omega

def greenSourceFrameAtomCount (X : ℕ) : ℕ :=
  (window X).card + 1

theorem greenSourceFrameAtomCount_eq
    (X : ℕ) :
    greenSourceFrameAtomCount X = X + 1 := by
  simp [greenSourceFrameAtomCount, window_card]

theorem dyadicGreenSourceFrameAtomCount_eq
    (j : ℕ) :
    greenSourceFrameAtomCount (dyadicScale j) =
      dyadicScale j + 1 := by
  exact greenSourceFrameAtomCount_eq _

def greenSourceFrameReadout
    (X : ℕ) (φ : ComplexTest) : ℂ :=
  φ.value 0 * (mass0 X : ℂ) +
    (φ.value 1 - φ.value 0) * (mass1 X : ℂ) -
    ∫ t,
      ((greenSourceFrameValue X t : ℝ) : ℂ) * φ.slope t
      ∂unitVolume

theorem action_eq_greenSourceFrameReadout
    {X : ℕ} (hX : 0 < X)
    (φ : ComplexTest) :
    action X φ.value = greenSourceFrameReadout X φ := by
  rw [GRWTSK.NumberTheory.VonMangoldt.ComplexReadout.centered_ibp φ hX]
  unfold greenSourceFrameReadout
  congr 1
  apply integral_congr_ae
  filter_upwards with t
  rw [greenSourceFrameValue_eq_centeredResidual]

theorem safePlusDyadicAction_eq_frameReadout
    (z : ZeroPoint) (j : ℕ) :
    safePlusDyadicAction z j =
      greenSourceFrameReadout
        (dyadicScale j) (mellinC1 (safeShiftPlus z.1)) := by
  unfold safePlusDyadicAction
  exact action_eq_greenSourceFrameReadout
    (dyadicScale_pos j) (mellinC1 (safeShiftPlus z.1))

theorem safeMinusDyadicAction_eq_frameReadout
    (z : ZeroPoint) (j : ℕ) :
    safeMinusDyadicAction z j =
      greenSourceFrameReadout
        (dyadicScale j) (mellinC1 (safeShiftMinus z.1)) := by
  unfold safeMinusDyadicAction
  exact action_eq_greenSourceFrameReadout
    (dyadicScale_pos j) (mellinC1 (safeShiftMinus z.1))

theorem safeCenterDyadicAction_eq_frameReadout
    (z : ZeroPoint) (j : ℕ) :
    safeCenterDyadicAction z j =
      greenSourceFrameReadout
        (dyadicScale j) (mellinC1 (safeShiftCenter z.1)) := by
  unfold safeCenterDyadicAction
  exact action_eq_greenSourceFrameReadout
    (dyadicScale_pos j) (mellinC1 (safeShiftCenter z.1))

end GRWTSK.RiemannHypothesis
```
