# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant57b5f5cecad53f6e16cae1f28ed5193e58751fdf7d1b7ba2a00c4c0cce43340c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba9298afa69a341c0ce5a9b7215f6346ea0020fc` · SHA-256 `57b5f5cecad53f6e16cae1f28ed5193e58751fdf7d1b7ba2a00c4c0cce43340c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiWronskianFour

/-!
# Dominant-mode certificate for the rank-four theta Wronskian

The normalized source jet is a rapidly convergent sum of Gaussian modes.  This
module isolates its first mode and proves the corresponding order-four Hankel
determinant exactly.  The resulting polynomial is strictly positive throughout
the actual theta-source region.

This is an exact structural certificate for the dominant mode only.  It does
not prove positivity after the remaining modes are restored.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- Exact determinant of the first normalized theta mode. -/
theorem thetaPhiJetDet4_single_mode (y : ℝ) :
    thetaPhiJetDet4 (fun k => thetaPhiJetPolynomial7 k y) =
      201326592 * y ^ 6 *
        (16 * y ^ 4 - 96 * y ^ 3 + 360 * y ^ 2 - 840 * y + 945) := by
  dsimp [thetaPhiJetDet4, thetaPhiJetPolynomial7]
  ring

/-- The quartic factor in the dominant-mode determinant is strictly positive
once the mode coordinate is at least three. -/
theorem thetaPhiJetDet4_single_mode_quartic_pos {y : ℝ} (hy : 3 ≤ y) :
    0 < 16 * y ^ 4 - 96 * y ^ 3 + 360 * y ^ 2 - 840 * y + 945 := by
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
  positivity

/-- The exact dominant-mode rank-four determinant is strictly positive on
the entire region y >= 3. -/
theorem thetaPhiJetDet4_single_mode_pos {y : ℝ} (hy : 3 ≤ y) :
    0 < thetaPhiJetDet4 (fun k => thetaPhiJetPolynomial7 k y) := by
  rw [thetaPhiJetDet4_single_mode]
  have hy0 : 0 < y := lt_of_lt_of_le (by norm_num) hy
  have hq := thetaPhiJetDet4_single_mode_quartic_pos hy
  positivity

/-- The actual first theta mode lies in the positive dominant-mode region for
every nonnegative source coordinate. -/
theorem thetaPhiJetDet4_dominant_mode_pos {t : ℝ} (ht : 0 ≤ t) :
    0 < thetaPhiJetDet4
      (fun k => thetaPhiJetPolynomial7 k (thetaModeA t)) := by
  apply thetaPhiJetDet4_single_mode_pos
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by linarith)
  unfold thetaModeA
  exact (le_of_lt Real.pi_gt_three).trans
    (le_mul_of_one_le_right Real.pi_pos.le he)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
