# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variante90284db4ad90c398761eec0e5f9a86f8b346d00bec520fe68a149526d610d49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f31c2ed23133d12676df5d51370d86da2fa2bb8e` · SHA-256 `e90284db4ad90c398761eec0e5f9a86f8b346d00bec520fe68a149526d610d49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourDominant

/-!
# Rank-four theta Wronskian perturbation reduction

The normalized seven-entry source jet is split into its exact first Gaussian
mode and a remainder.  This module then isolates the determinant perturbation
and proves a quantitative sufficient condition for positivity.

The analytic remainder estimate itself is deliberately left as the next source
obligation.  No numerical reconnaissance is promoted to a theorem here.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- The first normalized Gaussian mode of the seven-entry source jet. -/
def thetaPhiDominantJet7 (t : ℝ) (k : Fin 7) : ℝ :=
  thetaPhiJetPolynomial7 k (thetaModeA t)

/-- Everything in the normalized source jet beyond its first mode. -/
def thetaPhiRemainderJet7 (t : ℝ) (k : Fin 7) : ℝ :=
  thetaPhiNormalizedJet7 t k - thetaPhiDominantJet7 t k

/-- Exact source decomposition into dominant mode plus remainder. -/
theorem thetaPhiNormalizedJet7_eq_dominant_add_remainder (t : ℝ) (k : Fin 7) :
    thetaPhiNormalizedJet7 t k =
      thetaPhiDominantJet7 t k + thetaPhiRemainderJet7 t k := by
  unfold thetaPhiRemainderJet7
  ring

/-- The change in the normalized rank-four determinant caused by restoring the
Gaussian modes beyond the first. -/
def thetaPhiJetDet4Perturbation (t : ℝ) : ℝ :=
  thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) -
    thetaPhiJetDet4 (thetaPhiDominantJet7 t)

/-- Exact determinant decomposition into the positive dominant determinant and
its full-source perturbation. -/
theorem thetaPhiJetDet4_eq_dominant_add_perturbation (t : ℝ) :
    thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) =
      thetaPhiJetDet4 (thetaPhiDominantJet7 t) +
        thetaPhiJetDet4Perturbation t := by
  unfold thetaPhiJetDet4Perturbation
  ring

/-- The dominant jet determinant is strictly positive on the source half-line. -/
theorem thetaPhiDominantJet7_det_pos {t : ℝ} (ht : 0 ≤ t) :
    0 < thetaPhiJetDet4 (thetaPhiDominantJet7 t) := by
  change 0 < thetaPhiJetDet4
    (fun k => thetaPhiJetPolynomial7 k (thetaModeA t))
  exact thetaPhiJetDet4_dominant_mode_pos ht

/-- A convenient lower bound for the positive quartic appearing in the
single-mode determinant. -/
theorem thetaPhiJetDet4_single_mode_quartic_ge_369 {y : ℝ} (hy : 3 ≤ y) :
    369 ≤ 16 * y ^ 4 - 96 * y ^ 3 + 360 * y ^ 2 - 840 * y + 945 := by
  let x := y - 3
  have hx : 0 ≤ x := sub_nonneg.mpr hy
  have hyx : y = x + 3 := by
    dsimp [x]
    ring
  rw [hyx]
  have h :
      16 * (x + 3) ^ 4 - 96 * (x + 3) ^ 3 + 360 * (x + 3) ^ 2 -
          840 * (x + 3) + 945 =
        16 * x ^ 4 + 96 * x ^ 3 + 360 * x ^ 2 + 456 * x + 369 := by
    ring
  rw [h]
  nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4]

/-- Explicit positive budget carried by the dominant rank-four determinant. -/
def thetaPhiRankFourDominantBudget (t : ℝ) : ℝ :=
  (201326592 : ℝ) * 369 * thetaModeA t ^ 6

theorem thetaPhiRankFourDominantBudget_pos (t : ℝ) :
    0 < thetaPhiRankFourDominantBudget t := by
  unfold thetaPhiRankFourDominantBudget thetaModeA
  positivity

/-- The exact dominant determinant controls the explicit polynomial budget on
the whole nonnegative source half-line. -/
theorem thetaPhiDominantJet7_det_ge_budget {t : ℝ} (ht : 0 ≤ t) :
    thetaPhiRankFourDominantBudget t ≤
      thetaPhiJetDet4 (thetaPhiDominantJet7 t) := by
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by linarith)
  have hA : 3 ≤ thetaModeA t := by
    unfold thetaModeA
    exact (le_of_lt Real.pi_gt_three).trans
      (le_mul_of_one_le_right Real.pi_pos.le he)
  have hq := thetaPhiJetDet4_single_mode_quartic_ge_369 hA
  rw [show thetaPhiJetDet4 (thetaPhiDominantJet7 t) =
      201326592 * thetaModeA t ^ 6 *
        (16 * thetaModeA t ^ 4 - 96 * thetaModeA t ^ 3 +
          360 * thetaModeA t ^ 2 - 840 * thetaModeA t + 945) by
    change thetaPhiJetDet4
      (fun k => thetaPhiJetPolynomial7 k (thetaModeA t)) =
        201326592 * thetaModeA t ^ 6 *
          (16 * thetaModeA t ^ 4 - 96 * thetaModeA t ^ 3 +
            360 * thetaModeA t ^ 2 - 840 * thetaModeA t + 945)
    exact thetaPhiJetDet4_single_mode (thetaModeA t)]
  unfold thetaPhiRankFourDominantBudget
  calc
    (201326592 : ℝ) * 369 * thetaModeA t ^ 6 =
        ((201326592 : ℝ) * thetaModeA t ^ 6) * 369 := by ring
    _ ≤ ((201326592 : ℝ) * thetaModeA t ^ 6) *
        (16 * thetaModeA t ^ 4 - 96 * thetaModeA t ^ 3 +
          360 * thetaModeA t ^ 2 - 840 * thetaModeA t + 945) := by
      exact mul_le_mul_of_nonneg_left hq (by positivity)
    _ = _ := by ring

/-- A pointwise perturbation bound strictly below the explicit dominant budget
is sufficient for positivity of the full normalized determinant. -/
theorem thetaPhiJetDet4_normalized_pos_of_perturbation_lt_budget
    {t : ℝ} (ht : 0 ≤ t)
    (hpert :
      |thetaPhiJetDet4Perturbation t| < thetaPhiRankFourDominantBudget t) :
    0 < thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) := by
  have hdom := thetaPhiDominantJet7_det_ge_budget ht
  have hlower := (abs_lt.mp hpert).1
  rw [thetaPhiJetDet4_eq_dominant_add_perturbation]
  linarith

/-- The same perturbation budget gives positivity of the literal unnormalized
rank-four source Wronskian. -/
theorem thetaPhiWronskianFour_pos_of_perturbation_lt_budget
    {t : ℝ} (ht : 0 ≤ t)
    (hpert :
      |thetaPhiJetDet4Perturbation t| < thetaPhiRankFourDominantBudget t) :
    0 < thetaPhiWronskianFour t := by
  rw [thetaPhiWronskianFour_eq_normalized]
  exact mul_pos (thetaPhiWronskianFour_commonFactor_pos t)
    (thetaPhiJetDet4_normalized_pos_of_perturbation_lt_budget ht hpert)

/-- Uniform analytic obligation remaining on a tail interval. -/
def ThetaPhiRankFourPerturbationControlledFrom (T : ℝ) : Prop :=
  ∀ t : ℝ, T ≤ t →
    |thetaPhiJetDet4Perturbation t| < thetaPhiRankFourDominantBudget t

/-- Once the perturbation estimate is proved from a nonnegative threshold,
rank-four Wronskian positivity follows uniformly on that asymptotic region. -/
theorem thetaPhiWronskianFour_pos_from_perturbation_control
    {T : ℝ} (hT : 0 ≤ T)
    (hcontrol : ThetaPhiRankFourPerturbationControlledFrom T) :
    ∀ t : ℝ, T ≤ t → 0 < thetaPhiWronskianFour t := by
  intro t ht
  exact thetaPhiWronskianFour_pos_of_perturbation_lt_budget
    (hT.trans ht) (hcontrol t ht)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
