# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant4dc7a3b64dff74e11daf57e5a48ebb482969f94bf5c47544416d51252d14adb4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4615f492f459c95b8d6a729d5e9ffd1ab37eb1e` · SHA-256 `4dc7a3b64dff74e11daf57e5a48ebb482969f94bf5c47544416d51252d14adb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourAsymptotic
import Mathlib.Analysis.Real.Pi.Bounds

/-!
# Compact rank-four two-mode certificate

The remaining rank-four source problem is compact after the asymptotic theorem.
This module keeps the first two normalized theta modes exactly and proves that
their order-four Hankel determinant is strictly positive throughout the source
range 3.14 <= A <= 12.

The proof is exact.  It factors the determinant into an alternating polynomial
in z = exp(-3A), shifts A by three so every coefficient polynomial is
nonnegative, and uses eight rational A-boxes with finite Taylor lower bounds
for the exponential.

The modes n >= 3 are not restored here.  Their perturbation is the next compact
source obligation.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- First two normalized theta modes, with z standing for exp(-3A). -/
def thetaPhiTwoModeJet7 (A z : ℝ) (k : Fin 7) : ℝ :=
  thetaPhiJetPolynomial7 k A +
    4 * z * thetaPhiJetPolynomial7 k (4 * A)

/-- Positive coefficient of z^0 after the shift A = x + 3. -/
def thetaPhiTwoModeQ0 (x : ℝ) : ℝ :=
  16 * x ^ 4 + 96 * x ^ 3 + 360 * x ^ 2 + 456 * x + 369

/-- Absolute coefficient of the negative z term after A = x + 3. -/
def thetaPhiTwoModeQ1 (x : ℝ) : ℝ :=
  31104 * x ^ 7 + 366768 * x ^ 6 + 1983960 * x ^ 5 +
  6114476 * x ^ 4 + 10976790 * x ^ 3 + 11020068 * x ^ 2 +
  5500578 * x + 853452

/-- Positive coefficient of z^2 after A = x + 3. -/
def thetaPhiTwoModeQ2 (x : ℝ) : ℝ :=
  8957952 * x ^ 8 + 141585408 * x ^ 7 + 1008956736 * x ^ 6 +
  4217918400 * x ^ 5 + 11243292720 * x ^ 4 +
  19458835776 * x ^ 3 + 21290999904 * x ^ 2 +
  13465317888 * x + 3779276400

/-- Absolute coefficient of the negative z^3 term after A = x + 3. -/
def thetaPhiTwoModeQ3 (x : ℝ) : ℝ :=
  509607936 * x ^ 7 + 8174960640 * x ^ 6 + 57338855424 * x ^ 5 +
  227481030656 * x ^ 4 + 549649127424 * x ^ 3 +
  806090342400 * x ^ 2 + 662393874432 * x + 234910605312

/-- Positive coefficient of z^4 after A = x + 3. -/
def thetaPhiTwoModeQ4 (x : ℝ) : ℝ :=
  4294967296 * x ^ 4 + 45097156608 * x ^ 3 +
  179985973248 * x ^ 2 + 322625863680 * x + 218725613568

/-- Shifted reduced two-mode determinant. -/
def thetaPhiTwoModeReduced (x z : ℝ) : ℝ :=
  thetaPhiTwoModeQ0 x -
  thetaPhiTwoModeQ1 x * z +
  thetaPhiTwoModeQ2 x * z ^ 2 -
  thetaPhiTwoModeQ3 x * z ^ 3 +
  thetaPhiTwoModeQ4 x * z ^ 4

/-- Exact factorization of the first-two-mode rank-four determinant. -/
theorem thetaPhiJetDet4_two_mode_identity (A z : ℝ) :
    thetaPhiJetDet4 (thetaPhiTwoModeJet7 A z) =
      201326592 * A ^ 6 * thetaPhiTwoModeReduced (A - 3) z := by
  dsimp [thetaPhiJetDet4, thetaPhiTwoModeJet7, thetaPhiJetPolynomial7,
    thetaPhiTwoModeReduced, thetaPhiTwoModeQ0, thetaPhiTwoModeQ1,
    thetaPhiTwoModeQ2, thetaPhiTwoModeQ3, thetaPhiTwoModeQ4]
  ring

private theorem thetaPhiTwoModeQ0_mono
    {x y : ℝ} (hx : 0 ≤ x) (hxy : x ≤ y) :
    thetaPhiTwoModeQ0 x ≤ thetaPhiTwoModeQ0 y := by
  have h2 := pow_le_pow_left₀ hx hxy 2
  have h3 := pow_le_pow_left₀ hx hxy 3
  have h4 := pow_le_pow_left₀ hx hxy 4
  unfold thetaPhiTwoModeQ0
  linarith

private theorem thetaPhiTwoModeQ1_mono
    {x y : ℝ} (hx : 0 ≤ x) (hxy : x ≤ y) :
    thetaPhiTwoModeQ1 x ≤ thetaPhiTwoModeQ1 y := by
  have h2 := pow_le_pow_left₀ hx hxy 2
  have h3 := pow_le_pow_left₀ hx hxy 3
  have h4 := pow_le_pow_left₀ hx hxy 4
  have h5 := pow_le_pow_left₀ hx hxy 5
  have h6 := pow_le_pow_left₀ hx hxy 6
  have h7 := pow_le_pow_left₀ hx hxy 7
  unfold thetaPhiTwoModeQ1
  linarith

private theorem thetaPhiTwoModeQ3_mono
    {x y : ℝ} (hx : 0 ≤ x) (hxy : x ≤ y) :
    thetaPhiTwoModeQ3 x ≤ thetaPhiTwoModeQ3 y := by
  have h2 := pow_le_pow_left₀ hx hxy 2
  have h3 := pow_le_pow_left₀ hx hxy 3
  have h4 := pow_le_pow_left₀ hx hxy 4
  have h5 := pow_le_pow_left₀ hx hxy 5
  have h6 := pow_le_pow_left₀ hx hxy 6
  have h7 := pow_le_pow_left₀ hx hxy 7
  unfold thetaPhiTwoModeQ3
  linarith

private theorem thetaPhiTwoModeQ1_nonneg {x : ℝ} (hx : 0 ≤ x) :
    0 ≤ thetaPhiTwoModeQ1 x := by
  unfold thetaPhiTwoModeQ1
  positivity

private theorem thetaPhiTwoModeQ2_nonneg {x : ℝ} (hx : 0 ≤ x) :
    0 ≤ thetaPhiTwoModeQ2 x := by
  unfold thetaPhiTwoModeQ2
  positivity

private theorem thetaPhiTwoModeQ3_nonneg {x : ℝ} (hx : 0 ≤ x) :
    0 ≤ thetaPhiTwoModeQ3 x := by
  unfold thetaPhiTwoModeQ3
  positivity

private theorem thetaPhiTwoModeQ4_nonneg {x : ℝ} (hx : 0 ≤ x) :
    0 ≤ thetaPhiTwoModeQ4 x := by
  unfold thetaPhiTwoModeQ4
  positivity

/-- Quantitative lower margin used by later compact perturbation
certificates. -/
def thetaPhiTwoModeBoxMargin (l u r : ℝ) : ℝ :=
  thetaPhiTwoModeQ0 l -
    thetaPhiTwoModeQ1 u * r -
      thetaPhiTwoModeQ3 u * r ^ 3

/-- The same monotonicity argument underlying compact positivity gives an
explicit lower margin for the two-mode reduced determinant. -/
theorem thetaPhiTwoModeReduced_ge_box_margin
    {x z l u r : ℝ}
    (hl0 : 0 ≤ l) (hl : l ≤ x) (hu : x ≤ u)
    (hz0 : 0 ≤ z) (hz : z ≤ r) :
    thetaPhiTwoModeBoxMargin l u r ≤
      thetaPhiTwoModeReduced x z := by
  have hx0 : 0 ≤ x := hl0.trans hl
  have hu0 : 0 ≤ u := hx0.trans hu
  have hq0 := thetaPhiTwoModeQ0_mono hl0 hl
  have hq1 := thetaPhiTwoModeQ1_mono hx0 hu
  have hq3 := thetaPhiTwoModeQ3_mono hx0 hu
  have hz3 := pow_le_pow_left₀ hz0 hz 3
  have hneg1 :
      thetaPhiTwoModeQ1 x * z ≤
        thetaPhiTwoModeQ1 u * r :=
    mul_le_mul hq1 hz hz0
      (thetaPhiTwoModeQ1_nonneg hu0)
  have hneg3 :
      thetaPhiTwoModeQ3 x * z ^ 3 ≤
        thetaPhiTwoModeQ3 u * r ^ 3 :=
    mul_le_mul hq3 hz3 (pow_nonneg hz0 3)
      (thetaPhiTwoModeQ3_nonneg hu0)
  have hpos2 :
      0 ≤ thetaPhiTwoModeQ2 x * z ^ 2 :=
    mul_nonneg (thetaPhiTwoModeQ2_nonneg hx0)
      (pow_nonneg hz0 2)
  have hpos4 :
      0 ≤ thetaPhiTwoModeQ4 x * z ^ 4 :=
    mul_nonneg (thetaPhiTwoModeQ4_nonneg hx0)
      (pow_nonneg hz0 4)
  unfold thetaPhiTwoModeBoxMargin
    thetaPhiTwoModeReduced
  linarith

private theorem thetaPhiTwoModeReduced_pos_of_box
    {x z l u r : ℝ}
    (hl0 : 0 ≤ l) (hl : l ≤ x) (hu : x ≤ u)
    (hz0 : 0 ≤ z) (hz : z ≤ r) (_hr0 : 0 ≤ r)
    (hnum :
      thetaPhiTwoModeQ1 u * r +
        thetaPhiTwoModeQ3 u * r ^ 3 <
      thetaPhiTwoModeQ0 l) :
    0 < thetaPhiTwoModeReduced x z := by
  have hx0 : 0 ≤ x := hl0.trans hl
  have hu0 : 0 ≤ u := hx0.trans hu
  have hq0 := thetaPhiTwoModeQ0_mono hl0 hl
  have hq1 := thetaPhiTwoModeQ1_mono hx0 hu
  have hq3 := thetaPhiTwoModeQ3_mono hx0 hu
  have hz3 := pow_le_pow_left₀ hz0 hz 3
  have hneg1 :
      thetaPhiTwoModeQ1 x * z ≤ thetaPhiTwoModeQ1 u * r :=
    mul_le_mul hq1 hz hz0 (thetaPhiTwoModeQ1_nonneg hu0)
  have hneg3 :
      thetaPhiTwoModeQ3 x * z ^ 3 ≤ thetaPhiTwoModeQ3 u * r ^ 3 :=
    mul_le_mul hq3 hz3 (pow_nonneg hz0 3) (thetaPhiTwoModeQ3_nonneg hu0)
  have hpos2 :
      0 ≤ thetaPhiTwoModeQ2 x * z ^ 2 :=
    mul_nonneg (thetaPhiTwoModeQ2_nonneg hx0) (pow_nonneg hz0 2)
  have hpos4 :
      0 ≤ thetaPhiTwoModeQ4 x * z ^ 4 :=
    mul_nonneg (thetaPhiTwoModeQ4_nonneg hx0) (pow_nonneg hz0 4)
  unfold thetaPhiTwoModeReduced
  linarith

private theorem thetaExp_471_div_50_gt_12000 :
    (12000 : ℝ) < Real.exp (471 / 50) := by
  have h := Real.sum_le_exp_of_nonneg
    (by norm_num : (0 : ℝ) ≤ 471 / 50) 17
  norm_num [Finset.sum_range_succ, Nat.factorial] at h
  linarith

private theorem thetaExp_501_div_50_gt_20000 :
    (20000 : ℝ) < Real.exp (501 / 50) := by
  have h := Real.sum_le_exp_of_nonneg
    (by norm_num : (0 : ℝ) ≤ 501 / 50) 15
  norm_num [Finset.sum_range_succ, Nat.factorial] at h
  linarith

private theorem thetaExp_213_div_20_gt_35000 :
    (35000 : ℝ) < Real.exp (213 / 20) := by
  have h := Real.sum_le_exp_of_nonneg
    (by norm_num : (0 : ℝ) ≤ 213 / 20) 15
  norm_num [Finset.sum_range_succ, Nat.factorial] at h
  linarith

private theorem thetaExp_57_div_5_gt_80000 :
    (80000 : ℝ) < Real.exp (57 / 5) := by
  have h := Real.sum_le_exp_of_nonneg
    (by norm_num : (0 : ℝ) ≤ 57 / 5) 17
  norm_num [Finset.sum_range_succ, Nat.factorial] at h
  linarith

private theorem thetaExp_twelve_gt_160000 :
    (160000 : ℝ) < Real.exp 12 := by
  have hp := pow_lt_pow_left₀ thetaExpThree_gt_twenty
    (by norm_num : (0 : ℝ) ≤ 20) (by decide : (4 : ℕ) ≠ 0)
  have he : Real.exp (12 : ℝ) = Real.exp 3 ^ 4 := by
    convert! Real.exp_nat_mul (3 : ℝ) 4 using 1
    norm_num
  norm_num at hp
  rwa [he]

private theorem thetaExp_27_div_2_gt_700000 :
    (700000 : ℝ) < Real.exp (27 / 2) := by
  have h := Real.sum_le_exp_of_nonneg
    (by norm_num : (0 : ℝ) ≤ 27 / 2) 21
  norm_num [Finset.sum_range_succ, Nat.factorial] at h
  linarith

private theorem thetaExp_fifteen_gt_3200000 :
    (3200000 : ℝ) < Real.exp 15 := by
  have hp := pow_lt_pow_left₀ thetaExpThree_gt_twenty
    (by norm_num : (0 : ℝ) ≤ 20) (by decide : (5 : ℕ) ≠ 0)
  have he : Real.exp (15 : ℝ) = Real.exp 3 ^ 5 := by
    convert! Real.exp_nat_mul (3 : ℝ) 5 using 1
    norm_num
  norm_num at hp
  rwa [he]

private theorem thetaExp_eighteen_gt_64000000 :
    (64000000 : ℝ) < Real.exp 18 := by
  have hp := pow_lt_pow_left₀ thetaExpThree_gt_twenty
    (by norm_num : (0 : ℝ) ≤ 20) (by decide : (6 : ℕ) ≠ 0)
  have he : Real.exp (18 : ℝ) = Real.exp 3 ^ 6 := by
    convert! Real.exp_nat_mul (3 : ℝ) 6 using 1
    norm_num
  norm_num at hp
  rwa [he]

private theorem thetaExpNegThree_le_inv_of
    {A c N : ℝ} (hA : c ≤ A) (hN : 0 < N)
    (hexp : N ≤ Real.exp (3 * c)) :
    Real.exp (-3 * A) ≤ 1 / N := by
  have hmono : Real.exp (3 * c) ≤ Real.exp (3 * A) :=
    Real.exp_le_exp.mpr (by nlinarith)
  have hNexp : N ≤ Real.exp (3 * A) := hexp.trans hmono
  rw [show -3 * A = -(3 * A) by ring, Real.exp_neg, ← one_div]
  exact one_div_le_one_div_of_le hN hNexp

theorem thetaExpNegThree_le_inv_12000
    {A : ℝ} (hA : (157 / 50 : ℝ) ≤ A) :
    Real.exp (-3 * A) ≤ 1 / 12000 := by
  apply thetaExpNegThree_le_inv_of hA (by norm_num)
  have h := thetaExp_471_div_50_gt_12000.le
  norm_num at h ⊢
  exact h

theorem thetaExpNegThree_le_inv_20000
    {A : ℝ} (hA : (167 / 50 : ℝ) ≤ A) :
    Real.exp (-3 * A) ≤ 1 / 20000 := by
  apply thetaExpNegThree_le_inv_of hA (by norm_num)
  have h := thetaExp_501_div_50_gt_20000.le
  norm_num at h ⊢
  exact h

theorem thetaExpNegThree_le_inv_35000
    {A : ℝ} (hA : (71 / 20 : ℝ) ≤ A) :
    Real.exp (-3 * A) ≤ 1 / 35000 := by
  apply thetaExpNegThree_le_inv_of hA (by norm_num)
  have h := thetaExp_213_div_20_gt_35000.le
  norm_num at h ⊢
  exact h

theorem thetaExpNegThree_le_inv_80000
    {A : ℝ} (hA : (19 / 5 : ℝ) ≤ A) :
    Real.exp (-3 * A) ≤ 1 / 80000 := by
  apply thetaExpNegThree_le_inv_of hA (by norm_num)
  have h := thetaExp_57_div_5_gt_80000.le
  norm_num at h ⊢
  exact h

theorem thetaExpNegThree_le_inv_160000
    {A : ℝ} (hA : (4 : ℝ) ≤ A) :
    Real.exp (-3 * A) ≤ 1 / 160000 := by
  apply thetaExpNegThree_le_inv_of hA (by norm_num)
  have h := thetaExp_twelve_gt_160000.le
  norm_num at h ⊢
  exact h

theorem thetaExpNegThree_le_inv_700000
    {A : ℝ} (hA : (9 / 2 : ℝ) ≤ A) :
    Real.exp (-3 * A) ≤ 1 / 700000 := by
  apply thetaExpNegThree_le_inv_of hA (by norm_num)
  have h := thetaExp_27_div_2_gt_700000.le
  norm_num at h ⊢
  exact h

theorem thetaExpNegThree_le_inv_3200000
    {A : ℝ} (hA : (5 : ℝ) ≤ A) :
    Real.exp (-3 * A) ≤ 1 / 3200000 := by
  apply thetaExpNegThree_le_inv_of hA (by norm_num)
  have h := thetaExp_fifteen_gt_3200000.le
  norm_num at h ⊢
  exact h

theorem thetaExpNegThree_le_inv_64000000
    {A : ℝ} (hA : (6 : ℝ) ≤ A) :
    Real.exp (-3 * A) ≤ 1 / 64000000 := by
  apply thetaExpNegThree_le_inv_of hA (by norm_num)
  have h := thetaExp_eighteen_gt_64000000.le
  norm_num at h ⊢
  exact h

/-- Exact positivity of the reduced first-two-mode determinant throughout the
compact A-range needed before the asymptotic theorem takes over. -/
theorem thetaPhiTwoModeReduced_pos_compact
    {A : ℝ} (hlo : (157 / 50 : ℝ) ≤ A) (hhi : A ≤ 12) :
    0 < thetaPhiTwoModeReduced (A - 3) (Real.exp (-3 * A)) := by
  have hz0 : 0 ≤ Real.exp (-3 * A) := Real.exp_nonneg _
  by_cases h1 : A ≤ (167 / 50 : ℝ)
  · exact thetaPhiTwoModeReduced_pos_of_box
      (l := 7 / 50) (u := 17 / 50) (r := 1 / 12000)
      (by norm_num) (by linarith) (by linarith) hz0
      (thetaExpNegThree_le_inv_12000 hlo) (by norm_num)
      (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
  · have hlo2 : (167 / 50 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h1)
    by_cases h2 : A ≤ (71 / 20 : ℝ)
    · exact thetaPhiTwoModeReduced_pos_of_box
        (l := 17 / 50) (u := 11 / 20) (r := 1 / 20000)
        (by norm_num) (by linarith) (by linarith) hz0
        (thetaExpNegThree_le_inv_20000 hlo2) (by norm_num)
        (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
    · have hlo3 : (71 / 20 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h2)
      by_cases h3 : A ≤ (19 / 5 : ℝ)
      · exact thetaPhiTwoModeReduced_pos_of_box
          (l := 11 / 20) (u := 4 / 5) (r := 1 / 35000)
          (by norm_num) (by linarith) (by linarith) hz0
          (thetaExpNegThree_le_inv_35000 hlo3) (by norm_num)
          (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
      · have hlo4 : (19 / 5 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h3)
        by_cases h4 : A ≤ (4 : ℝ)
        · exact thetaPhiTwoModeReduced_pos_of_box
            (l := 4 / 5) (u := 1) (r := 1 / 80000)
            (by norm_num) (by linarith) (by linarith) hz0
            (thetaExpNegThree_le_inv_80000 hlo4) (by norm_num)
            (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
        · have hlo5 : (4 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h4)
          by_cases h5 : A ≤ (9 / 2 : ℝ)
          · exact thetaPhiTwoModeReduced_pos_of_box
              (l := 1) (u := 3 / 2) (r := 1 / 160000)
              (by norm_num) (by linarith) (by linarith) hz0
              (thetaExpNegThree_le_inv_160000 hlo5) (by norm_num)
              (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
          · have hlo6 : (9 / 2 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h5)
            by_cases h6 : A ≤ (5 : ℝ)
            · exact thetaPhiTwoModeReduced_pos_of_box
                (l := 3 / 2) (u := 2) (r := 1 / 700000)
                (by norm_num) (by linarith) (by linarith) hz0
                (thetaExpNegThree_le_inv_700000 hlo6) (by norm_num)
                (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1, thetaPhiTwoModeQ3])
            · have hlo7 : (5 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h6)
              by_cases h7 : A ≤ (6 : ℝ)
              · exact thetaPhiTwoModeReduced_pos_of_box
                  (l := 2) (u := 3) (r := 1 / 3200000)
                  (by norm_num) (by linarith) (by linarith) hz0
                  (thetaExpNegThree_le_inv_3200000 hlo7) (by norm_num)
                  (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1,
                    thetaPhiTwoModeQ3])
              · have hlo8 : (6 : ℝ) ≤ A := le_of_lt (lt_of_not_ge h7)
                exact thetaPhiTwoModeReduced_pos_of_box
                  (l := 3) (u := 9) (r := 1 / 64000000)
                  (by norm_num) (by linarith) (by linarith) hz0
                  (thetaExpNegThree_le_inv_64000000 hlo8) (by norm_num)
                  (by norm_num [thetaPhiTwoModeQ0, thetaPhiTwoModeQ1,
                    thetaPhiTwoModeQ3])

/-- Strict positivity of the exact first-two-mode determinant on the compact
A-range. -/
theorem thetaPhiJetDet4_two_mode_pos_compact
    {A : ℝ} (hlo : (157 / 50 : ℝ) ≤ A) (hhi : A ≤ 12) :
    0 < thetaPhiJetDet4
      (thetaPhiTwoModeJet7 A (Real.exp (-3 * A))) := by
  rw [thetaPhiJetDet4_two_mode_identity]
  have hA0 : 0 < A := lt_of_lt_of_le (by norm_num) hlo
  have hred := thetaPhiTwoModeReduced_pos_compact hlo hhi
  positivity

/-- Source-specialized first-two-mode positivity whenever A(t) has not yet
reached the asymptotic threshold. -/
theorem thetaPhiJetDet4_two_mode_pos_of_modeA_le_twelve
    {t : ℝ} (ht : 0 ≤ t) (hhi : thetaModeA t ≤ 12) :
    0 < thetaPhiJetDet4
      (thetaPhiTwoModeJet7 (thetaModeA t)
        (Real.exp (-3 * thetaModeA t))) := by
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by linarith)
  have hpi : (157 / 50 : ℝ) < Real.pi := by
    have h := Real.pi_gt_d2
    norm_num at h ⊢
    exact h
  have hlo : (157 / 50 : ℝ) ≤ thetaModeA t := by
    unfold thetaModeA
    exact hpi.le.trans
      (le_mul_of_one_le_right Real.pi_pos.le he)
  exact thetaPhiJetDet4_two_mode_pos_compact hlo hhi

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
