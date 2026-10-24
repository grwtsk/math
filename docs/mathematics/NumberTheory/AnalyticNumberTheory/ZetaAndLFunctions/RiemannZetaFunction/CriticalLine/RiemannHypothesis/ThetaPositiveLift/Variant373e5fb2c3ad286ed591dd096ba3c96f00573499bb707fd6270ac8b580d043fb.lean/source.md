# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51b90303ccec066bdb172fb1d5e3be978adabb2b` · SHA-256 `373e5fb2c3ad286ed591dd096ba3c96f00573499bb707fd6270ac8b580d043fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourCompactThreeModeDeterminant
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourDeterminantBound

/-!
# Global rank-four theta source sign

This module restores the literal n >= 4 theta tail around the exact positive
three-mode jet.  The seven coordinate tail box is fed into the verified
quartic determinant perturbation theorem.  On each rational compact box the
resulting determinant error is proved, by exact rational arithmetic, to be
strictly smaller than the certified three-mode determinant margin.

The compact result is then combined with the already verified A >= 12
asymptotic theorem to prove the outstanding rank-four source proposition.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- Scalar coefficient in a compact absolute box for one exact three-mode jet
coordinate. -/
def thetaPhiThreeModeCoordinateCoefficient
    (k : Fin 7) (r s : ℝ) : ℝ :=
  2 * 4 ^ k.val +
  8 * 4 ^ k.val * 4 ^ (k.val + 1) * r +
  18 * 4 ^ k.val * 9 ^ (k.val + 1) * s

/-- Compact absolute box for an exact three-mode jet coordinate. -/
def thetaPhiThreeModeCoordinateBox
    (A r s : ℝ) (k : Fin 7) : ℝ :=
  thetaPhiThreeModeCoordinateCoefficient k r s *
    A ^ (k.val + 1)

/-- Compact absolute box for one n >= 4 remainder coordinate. -/
def thetaPhiThreeModeTailCoordinateBox
    (A v : ℝ) (k : Fin 7) : ℝ :=
  thetaPhiThreeModeTailErrorCoefficient k *
    A ^ (k.val + 1) * v

/-- The exact three-mode jet is controlled coordinatewise by rational
exponential endpoint bounds. -/
theorem thetaPhiThreeModeJet7_abs_le_box
    (k : Fin 7) {A z w r s : ℝ}
    (hA : 3 ≤ A)
    (hz0 : 0 ≤ z) (hz : z ≤ r) (_hr0 : 0 ≤ r)
    (hw0 : 0 ≤ w) (hw : w ≤ s) (_hs0 : 0 ≤ s) :
    |thetaPhiThreeModeJet7 A z w k| ≤
      thetaPhiThreeModeCoordinateBox A r s k := by
  have hp1 :=
    thetaPhiJetPolynomial7_abs_le k hA
  have hp4 :=
    thetaPhiJetPolynomial7_abs_le k
      (y := 4 * A) (by nlinarith)
  have hp9 :=
    thetaPhiJetPolynomial7_abs_le k
      (y := 9 * A) (by nlinarith)
  have hsecond :
      |4 * z * thetaPhiJetPolynomial7 k (4 * A)| ≤
        4 * r *
          (2 * 4 ^ k.val *
            (4 * A) ^ (k.val + 1)) := by
    rw [abs_mul, abs_mul,
      abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 4),
      abs_of_nonneg hz0]
    gcongr
  have hthird :
      |9 * w * thetaPhiJetPolynomial7 k (9 * A)| ≤
        9 * s *
          (2 * 4 ^ k.val *
            (9 * A) ^ (k.val + 1)) := by
    rw [abs_mul, abs_mul,
      abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 9),
      abs_of_nonneg hw0]
    gcongr
  unfold thetaPhiThreeModeJet7 thetaPhiTwoModeJet7
  calc
    _ ≤
        |thetaPhiJetPolynomial7 k A +
          4 * z * thetaPhiJetPolynomial7 k (4 * A)| +
        |9 * w * thetaPhiJetPolynomial7 k (9 * A)| :=
      abs_add_le _ _
    _ ≤
        (|thetaPhiJetPolynomial7 k A| +
          |4 * z * thetaPhiJetPolynomial7 k (4 * A)|) +
        |9 * w * thetaPhiJetPolynomial7 k (9 * A)| := by
      gcongr
      exact abs_add_le _ _
    _ ≤
        (2 * 4 ^ k.val * A ^ (k.val + 1) +
          4 * r *
            (2 * 4 ^ k.val *
              (4 * A) ^ (k.val + 1))) +
        9 * s *
          (2 * 4 ^ k.val *
            (9 * A) ^ (k.val + 1)) := by
      gcongr
    _ = thetaPhiThreeModeCoordinateBox A r s k := by
      unfold thetaPhiThreeModeCoordinateBox
        thetaPhiThreeModeCoordinateCoefficient
      rw [mul_pow, mul_pow]
      ring

/-- The n >= 4 source remainder is controlled by any scalar upper bound for
its exponential factor. -/
theorem thetaPhiThreeModeRemainderJet7_abs_le_box
    (k : Fin 7) {t v : ℝ} (ht : 0 ≤ t)
    (hv : Real.exp (-15 * thetaModeA t) ≤ v)
    (_hv0 : 0 ≤ v) :
    |thetaPhiThreeModeRemainderJet7 t k| ≤
      thetaPhiThreeModeTailCoordinateBox
        (thetaModeA t) v k := by
  have h :=
    thetaPhiThreeModeRemainderJet7_abs_le k ht
  have hA0 : 0 ≤ thetaModeA t := by
    unfold thetaModeA
    positivity
  have hcoeff :
      0 ≤ thetaPhiThreeModeTailErrorCoefficient k *
        thetaModeA t ^ (k.val + 1) := by
    unfold thetaPhiThreeModeTailErrorCoefficient
    positivity
  unfold thetaPhiThreeModeTailCoordinateBox
  exact h.trans
    (mul_le_mul_of_nonneg_left hv hcoeff)

/-- Scalar quartic error majorant after the common A^16 factor has been
removed. -/
def thetaPhiThreeModeTailDetErrorScalar
    (r s v : ℝ) : ℝ :=
  thetaPhiJetDet4Majorant
      (fun k =>
        thetaPhiThreeModeCoordinateCoefficient k r s +
          thetaPhiThreeModeTailErrorCoefficient k * v) -
    thetaPhiJetDet4Majorant
      (fun k => thetaPhiThreeModeCoordinateCoefficient k r s)

/-- Every quartic monomial in the compact determinant perturbation has total
A-degree sixteen. -/
theorem thetaPhiThreeModeTail_box_majorant_identity
    (A r s v : ℝ) :
    thetaPhiJetDet4Majorant
        (fun k =>
          thetaPhiThreeModeCoordinateBox A r s k +
            thetaPhiThreeModeTailCoordinateBox A v k) -
      thetaPhiJetDet4Majorant
        (thetaPhiThreeModeCoordinateBox A r s) =
    A ^ 16 *
      thetaPhiThreeModeTailDetErrorScalar r s v := by
  norm_num [thetaPhiJetDet4Majorant,
    thetaPhiThreeModeCoordinateBox,
    thetaPhiThreeModeTailCoordinateBox,
    thetaPhiThreeModeCoordinateCoefficient,
    thetaPhiThreeModeTailErrorCoefficient,
    thetaPhiThreeModeTailDetErrorScalar]
  ring

/-- Reduced lower margin for the exact compact three-mode determinant. -/
def thetaPhiThreeModeBoxMargin
    (l u r s : ℝ) : ℝ :=
  thetaPhiTwoModeBoxMargin l u r -
    thetaPhiThreeModeDeltaMajorant u r s

/-- The exact three-mode determinant dominates its rational compact-box
margin. -/
theorem thetaPhiJetDet4_three_mode_ge_box_margin
    {A l u r s : ℝ}
    (hA : 3 ≤ A)
    (hl0 : 0 ≤ l) (hl : l ≤ A - 3) (hu : A - 3 ≤ u)
    (hz : Real.exp (-3 * A) ≤ r)
    (hw : Real.exp (-8 * A) ≤ s) :
    201326592 * A ^ 6 *
        thetaPhiThreeModeBoxMargin l u r s ≤
      thetaPhiJetDet4
        (thetaPhiThreeModeJet7 A
          (Real.exp (-3 * A))
          (Real.exp (-8 * A))) := by
  have hx : 0 ≤ A - 3 := by linarith
  have hz0 : 0 ≤ Real.exp (-3 * A) := Real.exp_nonneg _
  have hw0 : 0 ≤ Real.exp (-8 * A) := Real.exp_nonneg _
  have htwo :=
    thetaPhiTwoModeReduced_ge_box_margin
      hl0 hl hu hz0 hz
  have hmaj :=
    thetaPhiThreeModeDeltaMajorant_mono
      hx hu hz0 hz hw0 hw
  have hdelta :=
    thetaPhiThreeModeDeltaReduced_ge_neg_majorant
      hx hz0 hw0
  have hred :
      thetaPhiThreeModeBoxMargin l u r s ≤
        thetaPhiTwoModeReduced
            (A - 3) (Real.exp (-3 * A)) +
          thetaPhiThreeModeDeltaReduced
            (A - 3) (Real.exp (-3 * A))
              (Real.exp (-8 * A)) := by
    unfold thetaPhiThreeModeBoxMargin
    linarith
  rw [thetaPhiJetDet4_three_mode_identity]
  exact mul_le_mul_of_nonneg_left hred (by positivity)

/-- Exact exponential identity used to convert a compact exp(-3A) bound into
the n >= 4 tail factor. -/
theorem thetaExpNegFifteen_eq_fifth_expNegThree
    (A : ℝ) :
    Real.exp (-15 * A) =
      Real.exp (-3 * A) ^ 5 := by
  (convert! Real.exp_nat_mul (-3 * A) 5 using 1; ring_nf)

set_option maxHeartbeats 1000000 in
-- Exact normalization at denominator 64000000^5 exceeds the default heartbeat budget.
private theorem thetaPhiThreeModeTailDetErrorScalar_last_box_nonneg :
    0 ≤ thetaPhiThreeModeTailDetErrorScalar
      (1 / 64000000 : ℝ)
      ((1 / 64000000 : ℝ) ^ 2)
      ((1 / 64000000 : ℝ) ^ 5) := by
  norm_num [thetaPhiThreeModeTailDetErrorScalar,
    thetaPhiJetDet4Majorant,
    thetaPhiThreeModeCoordinateCoefficient,
    thetaPhiThreeModeTailErrorCoefficient]

set_option maxHeartbeats 1000000 in
-- Exact last-box margin arithmetic at denominator 64000000^5 needs extra heartbeats.
private theorem thetaPhiThreeModeTailDetErrorScalar_last_box_lt_margin :
    (12 : ℝ) ^ 10 *
        thetaPhiThreeModeTailDetErrorScalar
          (1 / 64000000 : ℝ)
          ((1 / 64000000 : ℝ) ^ 2)
          ((1 / 64000000 : ℝ) ^ 5) <
      201326592 *
        thetaPhiThreeModeBoxMargin
          3 9
          (1 / 64000000 : ℝ)
          ((1 / 64000000 : ℝ) ^ 2) := by
  norm_num [thetaPhiThreeModeTailDetErrorScalar,
    thetaPhiJetDet4Majorant,
    thetaPhiThreeModeCoordinateCoefficient,
    thetaPhiThreeModeTailErrorCoefficient,
    thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
    thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
    thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
    thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3]

private theorem thetaPhiNormalizedJet7_det_pos_of_compact_box
    {t l u r s U : ℝ}
    (ht : 0 ≤ t)
    (hA : 3 ≤ thetaModeA t)
    (hl0 : 0 ≤ l)
    (hl : l ≤ thetaModeA t - 3)
    (hu : thetaModeA t - 3 ≤ u)
    (hAU : thetaModeA t ≤ U)
    (hz : Real.exp (-3 * thetaModeA t) ≤ r)
    (hr0 : 0 ≤ r)
    (hw : Real.exp (-8 * thetaModeA t) ≤ s)
    (hs0 : 0 ≤ s)
    (hscalar0 :
      0 ≤ thetaPhiThreeModeTailDetErrorScalar
        r s (r ^ 5))
    (hnum :
      U ^ 10 *
          thetaPhiThreeModeTailDetErrorScalar
            r s (r ^ 5) <
        201326592 *
          thetaPhiThreeModeBoxMargin l u r s) :
    0 < thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) := by
  have hz0 :
      0 ≤ Real.exp (-3 * thetaModeA t) :=
    Real.exp_nonneg _
  have hw0 :
      0 ≤ Real.exp (-8 * thetaModeA t) :=
    Real.exp_nonneg _
  have hv :
      Real.exp (-15 * thetaModeA t) ≤ r ^ 5 := by
    rw [thetaExpNegFifteen_eq_fifth_expNegThree]
    exact pow_le_pow_left₀ hz0 hz 5
  have hv0 : 0 ≤ r ^ 5 := pow_nonneg hr0 5
  have ha (k : Fin 7) :
      |thetaPhiThreeModeJet7
          (thetaModeA t)
          (Real.exp (-3 * thetaModeA t))
          (Real.exp (-8 * thetaModeA t)) k| ≤
        thetaPhiThreeModeCoordinateBox
          (thetaModeA t) r s k :=
    thetaPhiThreeModeJet7_abs_le_box
      k hA hz0 hz hr0 hw0 hw hs0
  have he (k : Fin 7) :
      |thetaPhiThreeModeRemainderJet7 t k| ≤
        thetaPhiThreeModeTailCoordinateBox
          (thetaModeA t) (r ^ 5) k :=
    thetaPhiThreeModeRemainderJet7_abs_le_box
      k ht hv hv0
  have hbox :=
    thetaPhiJetDet4_perturbation_bound
      (thetaPhiThreeModeJet7
        (thetaModeA t)
        (Real.exp (-3 * thetaModeA t))
        (Real.exp (-8 * thetaModeA t)))
      (thetaPhiThreeModeRemainderJet7 t)
      (thetaPhiThreeModeCoordinateBox
        (thetaModeA t) r s)
      (thetaPhiThreeModeTailCoordinateBox
        (thetaModeA t) (r ^ 5))
      ha he
  rw [thetaPhiThreeModeTail_box_majorant_identity] at hbox
  have hdecomp :
      thetaPhiNormalizedJet7 t =
        fun k =>
          thetaPhiThreeModeJet7
              (thetaModeA t)
              (Real.exp (-3 * thetaModeA t))
              (Real.exp (-8 * thetaModeA t)) k +
            thetaPhiThreeModeRemainderJet7 t k := by
    funext k
    exact thetaPhiNormalizedJet7_eq_three_mode_add_remainder
      t k
  have herror :
      |thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) -
          thetaPhiJetDet4
            (thetaPhiThreeModeJet7
              (thetaModeA t)
              (Real.exp (-3 * thetaModeA t))
              (Real.exp (-8 * thetaModeA t)))| ≤
        thetaModeA t ^ 16 *
          thetaPhiThreeModeTailDetErrorScalar
            r s (r ^ 5) := by
    rw [hdecomp]
    exact hbox
  have hA0 : 0 ≤ thetaModeA t := by linarith
  have hpow10 :=
    pow_le_pow_left₀ hA0 hAU 10
  have hscaled :
      thetaModeA t ^ 16 *
          thetaPhiThreeModeTailDetErrorScalar
            r s (r ^ 5) <
        201326592 * thetaModeA t ^ 6 *
          thetaPhiThreeModeBoxMargin l u r s := by
    calc
      _ =
          thetaModeA t ^ 6 *
            (thetaModeA t ^ 10 *
              thetaPhiThreeModeTailDetErrorScalar
                r s (r ^ 5)) := by ring
      _ ≤
          thetaModeA t ^ 6 *
            (U ^ 10 *
              thetaPhiThreeModeTailDetErrorScalar
                r s (r ^ 5)) := by
        exact mul_le_mul_of_nonneg_left
          (mul_le_mul_of_nonneg_right
            hpow10 hscalar0)
          (by positivity)
      _ <
          thetaModeA t ^ 6 *
            (201326592 *
              thetaPhiThreeModeBoxMargin l u r s) :=
        mul_lt_mul_of_pos_left hnum (by positivity)
      _ =
          201326592 * thetaModeA t ^ 6 *
            thetaPhiThreeModeBoxMargin l u r s := by
        ring
  have hdet :=
    thetaPhiJetDet4_three_mode_ge_box_margin
      hA hl0 hl hu hz hw
  have herrdet :
      |thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) -
          thetaPhiJetDet4
            (thetaPhiThreeModeJet7
              (thetaModeA t)
              (Real.exp (-3 * thetaModeA t))
              (Real.exp (-8 * thetaModeA t)))| <
        thetaPhiJetDet4
          (thetaPhiThreeModeJet7
            (thetaModeA t)
            (Real.exp (-3 * thetaModeA t))
            (Real.exp (-8 * thetaModeA t))) :=
    lt_of_le_of_lt herror (hscaled.trans_le hdet)
  have hlower := (abs_lt.mp herrdet).1
  linarith

/-- The full normalized rank-four determinant is positive throughout the
compact source regime A <= 12. -/
theorem thetaPhiNormalizedJet7_det_pos_of_modeA_le_twelve
    {t : ℝ} (ht : 0 ≤ t)
    (hhi : thetaModeA t ≤ 12) :
    0 < thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) := by
  have he : 1 ≤ Real.exp (4 * t) :=
    Real.one_le_exp (by linarith)
  have hA : 3 ≤ thetaModeA t := by
    unfold thetaModeA
    exact (le_of_lt Real.pi_gt_three).trans
      (le_mul_of_one_le_right Real.pi_pos.le he)
  have hpi : (157 / 50 : ℝ) < Real.pi := by
    have h := Real.pi_gt_d2
    norm_num at h ⊢
    exact h
  have hlo :
      (157 / 50 : ℝ) ≤ thetaModeA t := by
    unfold thetaModeA
    exact hpi.le.trans
      (le_mul_of_one_le_right Real.pi_pos.le he)
  have hw20 :
      Real.exp (-8 * thetaModeA t) ≤ 1 / 20 ^ 8 :=
    thetaGaussian_exp_neg_eight_le hA
  have hz0 :
      0 ≤ Real.exp (-3 * thetaModeA t) :=
    Real.exp_nonneg _
  have hwsq :
      Real.exp (-8 * thetaModeA t) ≤
        Real.exp (-3 * thetaModeA t) ^ 2 :=
    thetaExpNegEight_le_sq_expNegThree (by linarith)
  by_cases h1 : thetaModeA t ≤ (167 / 50 : ℝ)
  · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
      ht hA (l := 7 / 50) (u := 17 / 50)
      (r := 1 / 12000) (s := 1 / 20 ^ 8)
      (U := 167 / 50)
      (by norm_num) (by linarith) (by linarith) h1
      (thetaExpNegThree_le_inv_12000 hlo) (by norm_num)
      hw20 (by norm_num)
      (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
        thetaPhiJetDet4Majorant,
        thetaPhiThreeModeCoordinateCoefficient,
        thetaPhiThreeModeTailErrorCoefficient])
      (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
        thetaPhiJetDet4Majorant,
        thetaPhiThreeModeCoordinateCoefficient,
        thetaPhiThreeModeTailErrorCoefficient,
        thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
        thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
        thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
        thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
  · have hlo2 : (167 / 50 : ℝ) ≤ thetaModeA t :=
      le_of_lt (lt_of_not_ge h1)
    by_cases h2 : thetaModeA t ≤ (71 / 20 : ℝ)
    · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
        ht hA (l := 17 / 50) (u := 11 / 20)
        (r := 1 / 20000) (s := 1 / 20 ^ 8)
        (U := 71 / 20)
        (by norm_num) (by linarith) (by linarith) h2
        (thetaExpNegThree_le_inv_20000 hlo2) (by norm_num)
        hw20 (by norm_num)
        (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
          thetaPhiJetDet4Majorant,
          thetaPhiThreeModeCoordinateCoefficient,
          thetaPhiThreeModeTailErrorCoefficient])
        (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
          thetaPhiJetDet4Majorant,
          thetaPhiThreeModeCoordinateCoefficient,
          thetaPhiThreeModeTailErrorCoefficient,
          thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
          thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
          thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
          thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
    · have hlo3 : (71 / 20 : ℝ) ≤ thetaModeA t :=
        le_of_lt (lt_of_not_ge h2)
      by_cases h3 : thetaModeA t ≤ (19 / 5 : ℝ)
      · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
          ht hA (l := 11 / 20) (u := 4 / 5)
          (r := 1 / 35000) (s := 1 / 20 ^ 8)
          (U := 19 / 5)
          (by norm_num) (by linarith) (by linarith) h3
          (thetaExpNegThree_le_inv_35000 hlo3) (by norm_num)
          hw20 (by norm_num)
          (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
            thetaPhiJetDet4Majorant,
            thetaPhiThreeModeCoordinateCoefficient,
            thetaPhiThreeModeTailErrorCoefficient])
          (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
            thetaPhiJetDet4Majorant,
            thetaPhiThreeModeCoordinateCoefficient,
            thetaPhiThreeModeTailErrorCoefficient,
            thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
            thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
            thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
            thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
      · have hlo4 : (19 / 5 : ℝ) ≤ thetaModeA t :=
          le_of_lt (lt_of_not_ge h3)
        by_cases h4 : thetaModeA t ≤ (4 : ℝ)
        · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
            ht hA (l := 4 / 5) (u := 1)
            (r := 1 / 80000) (s := 1 / 20 ^ 8)
            (U := 4)
            (by norm_num) (by linarith) (by linarith) h4
            (thetaExpNegThree_le_inv_80000 hlo4) (by norm_num)
            hw20 (by norm_num)
            (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
              thetaPhiJetDet4Majorant,
              thetaPhiThreeModeCoordinateCoefficient,
              thetaPhiThreeModeTailErrorCoefficient])
            (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
              thetaPhiJetDet4Majorant,
              thetaPhiThreeModeCoordinateCoefficient,
              thetaPhiThreeModeTailErrorCoefficient,
              thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
              thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
              thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
              thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
        · have hlo5 : (4 : ℝ) ≤ thetaModeA t :=
            le_of_lt (lt_of_not_ge h4)
          by_cases h5 : thetaModeA t ≤ (9 / 2 : ℝ)
          · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
              ht hA (l := 1) (u := 3 / 2)
              (r := 1 / 160000) (s := 1 / 20 ^ 8)
              (U := 9 / 2)
              (by norm_num) (by linarith) (by linarith) h5
              (thetaExpNegThree_le_inv_160000 hlo5) (by norm_num)
              hw20 (by norm_num)
              (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
                thetaPhiJetDet4Majorant,
                thetaPhiThreeModeCoordinateCoefficient,
                thetaPhiThreeModeTailErrorCoefficient])
              (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
                thetaPhiJetDet4Majorant,
                thetaPhiThreeModeCoordinateCoefficient,
                thetaPhiThreeModeTailErrorCoefficient,
                thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
                thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
                thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
                thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
          · have hlo6 : (9 / 2 : ℝ) ≤ thetaModeA t :=
              le_of_lt (lt_of_not_ge h5)
            have hz6 := thetaExpNegThree_le_inv_700000 hlo6
            have hw6 :
                Real.exp (-8 * thetaModeA t) ≤
                  (1 / 700000 : ℝ) ^ 2 :=
              hwsq.trans (pow_le_pow_left₀ hz0 hz6 2)
            by_cases h6 : thetaModeA t ≤ (5 : ℝ)
            · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
                ht hA (l := 3 / 2) (u := 2)
                (r := 1 / 700000)
                (s := (1 / 700000 : ℝ) ^ 2)
                (U := 5)
                (by norm_num) (by linarith) (by linarith) h6
                hz6 (by norm_num) hw6 (by norm_num)
                (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
                  thetaPhiJetDet4Majorant,
                  thetaPhiThreeModeCoordinateCoefficient,
                  thetaPhiThreeModeTailErrorCoefficient])
                (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
                  thetaPhiJetDet4Majorant,
                  thetaPhiThreeModeCoordinateCoefficient,
                  thetaPhiThreeModeTailErrorCoefficient,
                  thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
                  thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
                  thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
                  thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
            · have hlo7 : (5 : ℝ) ≤ thetaModeA t :=
                le_of_lt (lt_of_not_ge h6)
              have hz7 := thetaExpNegThree_le_inv_3200000 hlo7
              have hw7 :
                  Real.exp (-8 * thetaModeA t) ≤
                    (1 / 3200000 : ℝ) ^ 2 :=
                hwsq.trans (pow_le_pow_left₀ hz0 hz7 2)
              by_cases h7 : thetaModeA t ≤ (6 : ℝ)
              · exact thetaPhiNormalizedJet7_det_pos_of_compact_box
                  ht hA (l := 2) (u := 3)
                  (r := 1 / 3200000)
                  (s := (1 / 3200000 : ℝ) ^ 2)
                  (U := 6)
                  (by norm_num) (by linarith) (by linarith) h7
                  hz7 (by norm_num) hw7 (by norm_num)
                  (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
                    thetaPhiJetDet4Majorant,
                    thetaPhiThreeModeCoordinateCoefficient,
                    thetaPhiThreeModeTailErrorCoefficient])
                  (by norm_num [thetaPhiThreeModeTailDetErrorScalar,
                    thetaPhiJetDet4Majorant,
                    thetaPhiThreeModeCoordinateCoefficient,
                    thetaPhiThreeModeTailErrorCoefficient,
                    thetaPhiThreeModeBoxMargin, thetaPhiTwoModeBoxMargin,
                    thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3,
                    thetaPhiThreeModeDeltaMajorant, thetaPhiThreeModeNeg1,
                    thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3])
              · have hlo8 : (6 : ℝ) ≤ thetaModeA t :=
                  le_of_lt (lt_of_not_ge h7)
                have hz8 := thetaExpNegThree_le_inv_64000000 hlo8
                have hw8 :
                    Real.exp (-8 * thetaModeA t) ≤
                      (1 / 64000000 : ℝ) ^ 2 :=
                  hwsq.trans (pow_le_pow_left₀ hz0 hz8 2)
                exact thetaPhiNormalizedJet7_det_pos_of_compact_box
                  ht hA (l := 3) (u := 9)
                  (r := 1 / 64000000)
                  (s := (1 / 64000000 : ℝ) ^ 2)
                  (U := 12)
                  (by norm_num) (by linarith) (by linarith) hhi
                  hz8 (by norm_num) hw8 (by norm_num)
                  thetaPhiThreeModeTailDetErrorScalar_last_box_nonneg
                  thetaPhiThreeModeTailDetErrorScalar_last_box_lt_margin

/-- The literal rank-four source Wronskian is positive whenever its mode
coordinate remains below the asymptotic threshold. -/
theorem thetaPhiWronskianFour_pos_of_modeA_le_twelve
    {t : ℝ} (ht : 0 ≤ t)
    (hhi : thetaModeA t ≤ 12) :
    0 < thetaPhiWronskianFour t := by
  rw [thetaPhiWronskianFour_eq_normalized]
  exact mul_pos
    (thetaPhiWronskianFour_commonFactor_pos t)
    (thetaPhiNormalizedJet7_det_pos_of_modeA_le_twelve
      ht hhi)

/-- The outstanding rank-four theta-source sign proposition is now proved on
the complete nonnegative source half-line. -/
theorem thetaPhiWronskianFour_positive :
    ThetaPhiWronskianFourPositive := by
  intro t ht
  by_cases hhi : thetaModeA t ≤ 12
  · exact thetaPhiWronskianFour_pos_of_modeA_le_twelve
      ht hhi
  · have hge : 12 ≤ thetaModeA t :=
      le_of_lt (lt_of_not_ge hhi)
    exact thetaPhiWronskianFour_pos_of_perturbation_lt_budget
      ht
      (thetaPhiRankFour_determinant_error_lt_budget_of_modeA_ge_twelve
        ht hge)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
