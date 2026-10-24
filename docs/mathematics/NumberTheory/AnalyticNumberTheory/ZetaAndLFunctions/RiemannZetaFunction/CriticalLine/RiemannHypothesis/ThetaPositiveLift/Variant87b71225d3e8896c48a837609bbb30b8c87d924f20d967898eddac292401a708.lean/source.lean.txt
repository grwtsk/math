import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourCompactThreeModeTail

/-!
# Exact compact rank-four three-mode determinant

This module certifies positivity of the exact first-three-mode rank-four
determinant on the compact source range 3.14 <= A <= 12.

The third-mode correction is expanded exactly relative to the already verified
two-mode determinant.  Its negative part is collected in one polynomial
majorant with nonnegative coefficients; the remaining correction terms are
manifestly nonnegative.  The same rational compact boxes used by the two-mode
certificate then prove a strict positive margin.

The n >= 4 source restoration is not performed here.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- First negative coefficient polynomial in the reduced third-mode determinant correction. -/
def thetaPhiThreeModeNeg1 (x z : ℝ) : ℝ :=
  (884736000000 * x ^ 7 + 14145454080000 * x ^ 6 +
    95474715033600 * x ^ 5 + 350365949300736 * x ^ 4 +
    747506728654848 * x ^ 3 + 911673473384448 * x ^ 2 +
    569443676497920 * x + 129502981398528) * z ^ 3 +
  (358318080000 * x ^ 9 + 7644268339200 * x ^ 8 +
    73079564802048 * x ^ 7 + 410883882595200 * x ^ 6 +
    1496774046183552 * x ^ 5 + 3661508504632608 * x ^ 4 +
    6010772335155072 * x ^ 3 + 6380551669469760 * x ^ 2 +
    3971586498448896 * x + 1103926432733856) * z ^ 2 +
  (14332723200 * x ^ 9 + 291593281536 * x ^ 8 +
    2676701510784 * x ^ 7 + 14560337424528 * x ^ 6 +
    51707258175240 * x ^ 5 + 124180585185060 * x ^ 4 +
    201363264566658 * x ^ 3 + 212206082328252 * x ^ 2 +
    131655033968454 * x + 36581794427700) * z +
  (56623104 * x ^ 7 + 850526208 * x ^ 6 +
    5712353280 * x ^ 5 + 22191489216 * x ^ 4 +
    53247784320 * x ^ 3 + 77674962528 * x ^ 2 +
    62849767968 * x + 21550187052)

/-- Second negative coefficient polynomial in the reduced third-mode determinant correction. -/
def thetaPhiThreeModeNeg2 (x z : ℝ) : ℝ :=
  (29023764480000 * x ^ 9 + 653973942067200 * x ^ 8 +
    6585409658613888 * x ^ 7 + 38899213843729680 * x ^ 6 +
    148524171741322632 * x ^ 5 + 380064021122577348 * x ^ 4 +
    651600795901635522 * x ^ 3 + 721438590258014220 * x ^ 2 +
    467849543434350246 * x + 135326437776447876) * z

/-- Third negative coefficient polynomial in the reduced third-mode determinant correction. -/
def thetaPhiThreeModeNeg3 (x z : ℝ) : ℝ :=
  (258280326000000 * x ^ 7 + 4547025139230000 * x ^ 6 +
    34248226638144600 * x ^ 5 + 142973846578976076 * x ^ 4 +
    357016458818255958 * x ^ 3 + 532790981047079028 * x ^ 2 +
    439533077988802050 * x + 154437506114969628) * z +
  (270826551115776 * x ^ 7 + 4993364536197120 * x ^ 6 +
    39551049919125504 * x ^ 5 + 174498639731464896 * x ^ 4 +
    463247433902922624 * x ^ 3 + 740123019994059360 * x ^ 2 +
    659039451145456032 * x + 252341709556456332)

/-- Manifestly nonnegative quadratic-in-w coefficient polynomial in the
reduced third-mode correction. -/
def thetaPhiThreeModePos2 (x z : ℝ) : ℝ :=
  (31492800000000 * x ^ 8 + 590699952000000 * x ^ 7 +
    4820258720520000 * x ^ 6 + 22337252243236800 * x ^ 5 +
    64268687724644016 * x ^ 4 + 117582680630553408 * x ^ 3 +
    133736287021577568 * x ^ 2 + 86701904103951360 * x +
    24668591321953008) * z ^ 2 +
  (1320903770112 * x ^ 8 + 25647548203008 * x ^ 7 +
    220070317326336 * x ^ 6 + 1091939308277760 * x ^ 5 +
    3431452663329120 * x ^ 4 + 6998966238724416 * x ^ 3 +
    9048857463352944 * x ^ 2 + 6776019742609008 * x +
    2247498779030550)

/-- Manifestly nonnegative quartic-in-w coefficient polynomial in the
reduced third-mode correction. -/
def thetaPhiThreeModePos4 (x : ℝ) : ℝ :=
  366028679279376 * x ^ 4 +
  4148325031832928 * x ^ 3 +
  17671051238543208 * x ^ 2 +
  33526268843871240 * x +
  23899093233843393

/-- Exact reduced correction caused by restoring the third theta mode. -/
def thetaPhiThreeModeDeltaReduced (x z w : ℝ) : ℝ :=
  -thetaPhiThreeModeNeg1 x z * w +
  thetaPhiThreeModePos2 x z * w ^ 2 -
  thetaPhiThreeModeNeg2 x z * w ^ 2 -
  thetaPhiThreeModeNeg3 x z * w ^ 3 +
  thetaPhiThreeModePos4 x * w ^ 4

/-- The complete negative part of the reduced third-mode correction. -/
def thetaPhiThreeModeDeltaMajorant (x z w : ℝ) : ℝ :=
  thetaPhiThreeModeNeg1 x z * w +
  thetaPhiThreeModeNeg2 x z * w ^ 2 +
  thetaPhiThreeModeNeg3 x z * w ^ 3

/-- Exact symbolic reduction of the third-mode determinant correction. -/
theorem thetaPhiJetDet4_three_mode_sub_two_mode_identity
    (A z w : ℝ) :
    thetaPhiJetDet4 (thetaPhiThreeModeJet7 A z w) -
      thetaPhiJetDet4 (thetaPhiTwoModeJet7 A z) =
    201326592 * A ^ 6 *
      thetaPhiThreeModeDeltaReduced (A - 3) z w := by
  dsimp [thetaPhiJetDet4, thetaPhiThreeModeJet7,
    thetaPhiTwoModeJet7, thetaPhiJetPolynomial7,
    thetaPhiThreeModeDeltaReduced, thetaPhiThreeModeNeg1,
    thetaPhiThreeModeNeg2, thetaPhiThreeModeNeg3,
    thetaPhiThreeModePos2, thetaPhiThreeModePos4]
  ring

private theorem thetaPhiThreeModePos2_nonneg
    {x z : ℝ} (hx : 0 ≤ x) (_hz : 0 ≤ z) :
    0 ≤ thetaPhiThreeModePos2 x z := by
  unfold thetaPhiThreeModePos2
  positivity

private theorem thetaPhiThreeModePos4_nonneg
    {x : ℝ} (hx : 0 ≤ x) :
    0 ≤ thetaPhiThreeModePos4 x := by
  unfold thetaPhiThreeModePos4
  positivity

/-- Discarding the manifestly positive correction terms gives a rigorous lower
bound for the exact third-mode determinant correction. -/
theorem thetaPhiThreeModeDeltaReduced_ge_neg_majorant
    {x z w : ℝ} (hx : 0 ≤ x) (hz : 0 ≤ z) (hw : 0 ≤ w) :
    -thetaPhiThreeModeDeltaMajorant x z w ≤
      thetaPhiThreeModeDeltaReduced x z w := by
  have hp2 := thetaPhiThreeModePos2_nonneg hx hz
  have hp4 := thetaPhiThreeModePos4_nonneg hx
  unfold thetaPhiThreeModeDeltaMajorant
    thetaPhiThreeModeDeltaReduced
  nlinarith [mul_nonneg hp2 (pow_nonneg hw 2),
    mul_nonneg hp4 (pow_nonneg hw 4)]

private theorem thetaPhiThreeModeNeg1_mono
    {x y z r : ℝ}
    (hx : 0 ≤ x) (hxy : x ≤ y)
    (hz : 0 ≤ z) (hzr : z ≤ r) :
    thetaPhiThreeModeNeg1 x z ≤
      thetaPhiThreeModeNeg1 y r := by
  have hy : 0 ≤ y := hx.trans hxy
  have hr : 0 ≤ r := hz.trans hzr
  unfold thetaPhiThreeModeNeg1
  gcongr

private theorem thetaPhiThreeModeNeg2_mono
    {x y z r : ℝ}
    (hx : 0 ≤ x) (hxy : x ≤ y)
    (hz : 0 ≤ z) (hzr : z ≤ r) :
    thetaPhiThreeModeNeg2 x z ≤
      thetaPhiThreeModeNeg2 y r := by
  have hy : 0 ≤ y := hx.trans hxy
  have hr : 0 ≤ r := hz.trans hzr
  unfold thetaPhiThreeModeNeg2
  gcongr

private theorem thetaPhiThreeModeNeg3_mono
    {x y z r : ℝ}
    (hx : 0 ≤ x) (hxy : x ≤ y)
    (hz : 0 ≤ z) (hzr : z ≤ r) :
    thetaPhiThreeModeNeg3 x z ≤
      thetaPhiThreeModeNeg3 y r := by
  have hy : 0 ≤ y := hx.trans hxy
  have hr : 0 ≤ r := hz.trans hzr
  unfold thetaPhiThreeModeNeg3
  gcongr

private theorem thetaPhiThreeModeNeg1_nonneg
    {x z : ℝ} (hx : 0 ≤ x) (hz : 0 ≤ z) :
    0 ≤ thetaPhiThreeModeNeg1 x z := by
  unfold thetaPhiThreeModeNeg1
  positivity

private theorem thetaPhiThreeModeNeg2_nonneg
    {x z : ℝ} (hx : 0 ≤ x) (hz : 0 ≤ z) :
    0 ≤ thetaPhiThreeModeNeg2 x z := by
  unfold thetaPhiThreeModeNeg2
  positivity

private theorem thetaPhiThreeModeNeg3_nonneg
    {x z : ℝ} (hx : 0 ≤ x) (hz : 0 ≤ z) :
    0 ≤ thetaPhiThreeModeNeg3 x z := by
  unfold thetaPhiThreeModeNeg3
  positivity

/-- The negative correction majorant is monotone in every nonnegative box
coordinate. -/
theorem thetaPhiThreeModeDeltaMajorant_mono
    {x y z r w s : ℝ}
    (hx : 0 ≤ x) (hxy : x ≤ y)
    (hz : 0 ≤ z) (hzr : z ≤ r)
    (hw : 0 ≤ w) (hws : w ≤ s) :
    thetaPhiThreeModeDeltaMajorant x z w ≤
      thetaPhiThreeModeDeltaMajorant y r s := by
  have hy : 0 ≤ y := hx.trans hxy
  have hr : 0 ≤ r := hz.trans hzr
  have h1 := thetaPhiThreeModeNeg1_mono hx hxy hz hzr
  have h2 := thetaPhiThreeModeNeg2_mono hx hxy hz hzr
  have h3 := thetaPhiThreeModeNeg3_mono hx hxy hz hzr
  have hw2 := pow_le_pow_left₀ hw hws 2
  have hw3 := pow_le_pow_left₀ hw hws 3
  unfold thetaPhiThreeModeDeltaMajorant
  exact add_le_add
    (add_le_add
      (mul_le_mul h1 hws hw
        (thetaPhiThreeModeNeg1_nonneg hy hr))
      (mul_le_mul h2 hw2 (pow_nonneg hw 2)
        (thetaPhiThreeModeNeg2_nonneg hy hr)))
    (mul_le_mul h3 hw3 (pow_nonneg hw 3)
      (thetaPhiThreeModeNeg3_nonneg hy hr))

/-- A convenient comparison between the third-mode exponential and the square
of the second-mode exponential. -/
theorem thetaExpNegEight_le_sq_expNegThree
    {A : ℝ} (hA : 0 ≤ A) :
    Real.exp (-8 * A) ≤ Real.exp (-3 * A) ^ 2 := by
  calc
    Real.exp (-8 * A) ≤ Real.exp (-6 * A) :=
      Real.exp_le_exp.mpr (by linarith)
    _ = Real.exp (-3 * A) * Real.exp (-3 * A) := by
      rw [← Real.exp_add]
      congr 1
      ring
    _ = Real.exp (-3 * A) ^ 2 := by ring

/-- Exact first-three-mode determinant with the reduced correction exposed. -/
theorem thetaPhiJetDet4_three_mode_identity
    (A z w : ℝ) :
    thetaPhiJetDet4 (thetaPhiThreeModeJet7 A z w) =
      201326592 * A ^ 6 *
        (thetaPhiTwoModeReduced (A - 3) z +
          thetaPhiThreeModeDeltaReduced (A - 3) z w) := by
  rw [show thetaPhiJetDet4 (thetaPhiThreeModeJet7 A z w) =
      thetaPhiJetDet4 (thetaPhiTwoModeJet7 A z) +
        (thetaPhiJetDet4 (thetaPhiThreeModeJet7 A z w) -
          thetaPhiJetDet4 (thetaPhiTwoModeJet7 A z)) by ring,
    thetaPhiJetDet4_three_mode_sub_two_mode_identity,
    thetaPhiJetDet4_two_mode_identity]
  ring

private theorem thetaPhiJetDet4_three_mode_pos_of_box
    {A l u r s : ℝ}
    (hA : 3 ≤ A)
    (hl0 : 0 ≤ l) (hl : l ≤ A - 3) (hu : A - 3 ≤ u)
    (hz : Real.exp (-3 * A) ≤ r)
    (hw : Real.exp (-8 * A) ≤ s)
    (hmargin :
      thetaPhiThreeModeDeltaMajorant u r s <
        thetaPhiTwoModeBoxMargin l u r) :
    0 < thetaPhiJetDet4
      (thetaPhiThreeModeJet7 A
        (Real.exp (-3 * A)) (Real.exp (-8 * A))) := by
  have hx : 0 ≤ A - 3 := by linarith
  have hz0 : 0 ≤ Real.exp (-3 * A) := Real.exp_nonneg _
  have hw0 : 0 ≤ Real.exp (-8 * A) := Real.exp_nonneg _
  have hred := thetaPhiTwoModeReduced_ge_box_margin
    hl0 hl hu hz0 hz
  have hmaj := thetaPhiThreeModeDeltaMajorant_mono
    hx hu hz0 hz hw0 hw
  have hgap :
      thetaPhiThreeModeDeltaMajorant
          (A - 3) (Real.exp (-3 * A)) (Real.exp (-8 * A)) <
        thetaPhiTwoModeReduced (A - 3) (Real.exp (-3 * A)) := by
    linarith
  have hdelta := thetaPhiThreeModeDeltaReduced_ge_neg_majorant
    hx hz0 hw0
  have hsum :
      0 <
        thetaPhiTwoModeReduced (A - 3) (Real.exp (-3 * A)) +
          thetaPhiThreeModeDeltaReduced
            (A - 3) (Real.exp (-3 * A)) (Real.exp (-8 * A)) := by
    linarith
  rw [thetaPhiJetDet4_three_mode_identity]
  exact mul_pos (by positivity) hsum

/-- The exact first-three-mode determinant is strictly positive throughout the
compact source range. -/
theorem thetaPhiJetDet4_three_mode_pos_compact
    {A : ℝ} (hlo : (157 / 50 : ℝ) ≤ A) (hhi : A ≤ 12) :
    0 < thetaPhiJetDet4
      (thetaPhiThreeModeJet7 A
        (Real.exp (-3 * A)) (Real.exp (-8 * A))) := by
  have hA : 3 ≤ A := by linarith
  have hw20 : Real.exp (-8 * A) ≤ 1 / 20 ^ 8 :=
    thetaGaussian_exp_neg_eight_le hA
  have hz0 : 0 ≤ Real.exp (-3 * A) := Real.exp_nonneg _
  have hwsq :
      Real.exp (-8 * A) ≤ Real.exp (-3 * A) ^ 2 :=
    thetaExpNegEight_le_sq_expNegThree (by linarith)
  by_cases h1 : A ≤ (167 / 50 : ℝ)
  · exact thetaPhiJetDet4_three_mode_pos_of_box
      hA (l := 7 / 50) (u := 17 / 50)
      (r := 1 / 12000) (s := 1 / 20 ^ 8)
      (by norm_num) (by linarith) (by linarith)
      (thetaExpNegThree_le_inv_12000 hlo) hw20
      (by norm_num [thetaPhiThreeModeDeltaMajorant,
        thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
        thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
        thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
  · have hlo2 : (167 / 50 : ℝ) ≤ A :=
      le_of_lt (lt_of_not_ge h1)
    by_cases h2 : A ≤ (71 / 20 : ℝ)
    · exact thetaPhiJetDet4_three_mode_pos_of_box
        hA (l := 17 / 50) (u := 11 / 20)
        (r := 1 / 20000) (s := 1 / 20 ^ 8)
        (by norm_num) (by linarith) (by linarith)
        (thetaExpNegThree_le_inv_20000 hlo2) hw20
        (by norm_num [thetaPhiThreeModeDeltaMajorant,
          thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
          thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
          thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
    · have hlo3 : (71 / 20 : ℝ) ≤ A :=
        le_of_lt (lt_of_not_ge h2)
      by_cases h3 : A ≤ (19 / 5 : ℝ)
      · exact thetaPhiJetDet4_three_mode_pos_of_box
          hA (l := 11 / 20) (u := 4 / 5)
          (r := 1 / 35000) (s := 1 / 20 ^ 8)
          (by norm_num) (by linarith) (by linarith)
          (thetaExpNegThree_le_inv_35000 hlo3) hw20
          (by norm_num [thetaPhiThreeModeDeltaMajorant,
            thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
            thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
            thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
      · have hlo4 : (19 / 5 : ℝ) ≤ A :=
          le_of_lt (lt_of_not_ge h3)
        by_cases h4 : A ≤ (4 : ℝ)
        · exact thetaPhiJetDet4_three_mode_pos_of_box
            hA (l := 4 / 5) (u := 1)
            (r := 1 / 80000) (s := 1 / 20 ^ 8)
            (by norm_num) (by linarith) (by linarith)
            (thetaExpNegThree_le_inv_80000 hlo4) hw20
            (by norm_num [thetaPhiThreeModeDeltaMajorant,
              thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
              thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
              thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
        · have hlo5 : (4 : ℝ) ≤ A :=
            le_of_lt (lt_of_not_ge h4)
          by_cases h5 : A ≤ (9 / 2 : ℝ)
          · exact thetaPhiJetDet4_three_mode_pos_of_box
              hA (l := 1) (u := 3 / 2)
              (r := 1 / 160000) (s := 1 / 20 ^ 8)
              (by norm_num) (by linarith) (by linarith)
              (thetaExpNegThree_le_inv_160000 hlo5) hw20
              (by norm_num [thetaPhiThreeModeDeltaMajorant,
                thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
                thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
                thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
          · have hlo6 : (9 / 2 : ℝ) ≤ A :=
              le_of_lt (lt_of_not_ge h5)
            have hz6 := thetaExpNegThree_le_inv_700000 hlo6
            have hw6 :
                Real.exp (-8 * A) ≤ (1 / 700000 : ℝ) ^ 2 :=
              hwsq.trans (pow_le_pow_left₀ hz0 hz6 2)
            by_cases h6 : A ≤ (5 : ℝ)
            · exact thetaPhiJetDet4_three_mode_pos_of_box
                hA (l := 3 / 2) (u := 2)
                (r := 1 / 700000) (s := (1 / 700000 : ℝ) ^ 2)
                (by norm_num) (by linarith) (by linarith) hz6 hw6
                (by norm_num [thetaPhiThreeModeDeltaMajorant,
                  thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
                  thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
                  thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
            · have hlo7 : (5 : ℝ) ≤ A :=
                le_of_lt (lt_of_not_ge h6)
              have hz7 := thetaExpNegThree_le_inv_3200000 hlo7
              have hw7 :
                  Real.exp (-8 * A) ≤ (1 / 3200000 : ℝ) ^ 2 :=
                hwsq.trans (pow_le_pow_left₀ hz0 hz7 2)
              by_cases h7 : A ≤ (6 : ℝ)
              · exact thetaPhiJetDet4_three_mode_pos_of_box
                  hA (l := 2) (u := 3)
                  (r := 1 / 3200000)
                  (s := (1 / 3200000 : ℝ) ^ 2)
                  (by norm_num) (by linarith) (by linarith) hz7 hw7
                  (by norm_num [thetaPhiThreeModeDeltaMajorant,
                    thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
                    thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
                    thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
              · have hlo8 : (6 : ℝ) ≤ A :=
                  le_of_lt (lt_of_not_ge h7)
                have hz8 := thetaExpNegThree_le_inv_64000000 hlo8
                have hw8 :
                    Real.exp (-8 * A) ≤ (1 / 64000000 : ℝ) ^ 2 :=
                  hwsq.trans (pow_le_pow_left₀ hz0 hz8 2)
                exact thetaPhiJetDet4_three_mode_pos_of_box
                  hA (l := 3) (u := 9)
                  (r := 1 / 64000000)
                  (s := (1 / 64000000 : ℝ) ^ 2)
                  (by norm_num) (by linarith) (by linarith) hz8 hw8
                  (by norm_num [thetaPhiThreeModeDeltaMajorant,
                    thetaPhiThreeModeNeg1, thetaPhiThreeModeNeg2,
                    thetaPhiThreeModeNeg3, thetaPhiTwoModeBoxMargin,
                    thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])

/-- Source-specialized compact positivity for the exact first three modes. -/
theorem thetaPhiJetDet4_three_mode_pos_of_modeA_le_twelve
    {t : ℝ} (ht : 0 ≤ t) (hhi : thetaModeA t ≤ 12) :
    0 < thetaPhiJetDet4
      (thetaPhiThreeModeJet7
        (thetaModeA t)
        (Real.exp (-3 * thetaModeA t))
        (Real.exp (-8 * thetaModeA t))) := by
  have he : 1 ≤ Real.exp (4 * t) :=
    Real.one_le_exp (by linarith)
  have hpi : (157 / 50 : ℝ) < Real.pi := by
    have h := Real.pi_gt_d2
    norm_num at h ⊢
    exact h
  have hlo : (157 / 50 : ℝ) ≤ thetaModeA t := by
    unfold thetaModeA
    exact hpi.le.trans
      (le_mul_of_one_le_right Real.pi_pos.le he)
  exact thetaPhiJetDet4_three_mode_pos_compact hlo hhi

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
