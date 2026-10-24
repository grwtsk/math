# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aebRankThree012Pare.Variant49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aeb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `459315258fb6b9793b9f67ac03ac5e738fb80353` · SHA-256 `49551f8523cd3eb86a0cb4bd1459540756477995c5c6ac468fdbec6cf9f40aeb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaTailRankThreeGaps

/-!
# Exact source obligation for the first rank-three theta-tail flag

The compound-gap quotient has a strictly positive denominator. Its derivative
is the explicit numerator below divided by the square of that denominator.
The polynomial identity and the equivalence with antitonicity isolate the new
source inequality without assuming its sign.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open Set
noncomputable section

/-- Exact derivative numerator for the compound ratio `G₀₄ / G₀₂`. -/
def thetaTailRankThreeNumerator (t : ℝ) : ℝ :=
  (deriv (deriv thetaPhi) t * thetaTail 4 t - thetaPhi t * thetaTail 2 t) *
      thetaTailGap 0 2 t -
    thetaTailGap 0 4 t *
      (deriv (deriv thetaPhi) t * thetaTail 2 t - thetaPhi t ^ 2)

/-- Scalar expansion of the rank-three compound numerator, including every sign. -/
theorem rankThree_compound_numerator_identity (p d dd t1 t2 t3 t4 : ℝ) :
    (dd * t4 - p * t2) * (d * t2 + p * t1) -
      (d * t4 + p * t3) * (dd * t2 - p ^ 2) =
    p * (dd * (t4 * t1 - t3 * t2) +
      d * (p * t4 - t2 ^ 2) + p * (p * t3 - t2 * t1)) := by
  ring

/-- The source numerator is exactly the displayed combination of three tail minors. -/
theorem thetaTailRankThreeNumerator_eq (t : ℝ) :
    thetaTailRankThreeNumerator t =
      thetaPhi t *
        (deriv (deriv thetaPhi) t *
          (thetaTail 4 t * thetaTail 1 t - thetaTail 3 t * thetaTail 2 t) +
        deriv thetaPhi t * (thetaPhi t * thetaTail 4 t - thetaTail 2 t ^ 2) +
        thetaPhi t * (thetaPhi t * thetaTail 3 t - thetaTail 2 t * thetaTail 1 t)) := by
  unfold thetaTailRankThreeNumerator
  rw [thetaTailGap_zero_succ 1, thetaTailGap_zero_succ 3]
  exact rankThree_compound_numerator_identity _ _ _ _ _ _ _

/-- Differentiation of the compound ratio is legitimate, including at zero. -/
theorem hasDerivAt_thetaTail_compoundRatio {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt (fun u => thetaTailGap 0 4 u / thetaTailGap 0 2 u)
      (thetaTailRankThreeNumerator t / thetaTailGap 0 2 t ^ 2) t := by
  convert! (hasDerivAt_thetaTailGap_zero_succ_succ 2 ht).div
    (hasDerivAt_thetaTailGap_zero_succ_succ 0 ht)
    (thetaTailGap_zero_two_positive ht).ne' using 1
  simp only [thetaTailRankThreeNumerator, thetaTail_zero]
  ring

/-- Pointwise nonpositivity of the explicit numerator is exactly the new
compound-ratio monotonicity obligation. No source sign premise is discharged here. -/
theorem thetaTail_compoundRatio_antitone_iff :
    AntitoneOn (fun t : ℝ => thetaTailGap 0 4 t / thetaTailGap 0 2 t) (Ici 0) ↔
      ∀ t : ℝ, 0 ≤ t → thetaTailRankThreeNumerator t ≤ 0 := by
  constructor
  · intro ha t ht
    have h := ha.derivWithin_nonpos (x := t)
    rw [(hasDerivAt_thetaTail_compoundRatio ht).hasDerivWithinAt.derivWithin
      (uniqueDiffOn_Ici 0 t ht)] at h
    exact (div_le_iff₀ (sq_pos_of_pos (thetaTailGap_zero_two_positive ht))).mp h |>.trans_eq
      (by ring)
  · intro hn
    apply antitoneOn_of_deriv_nonpos (convex_Ici 0)
    · intro t ht
      exact (hasDerivAt_thetaTail_compoundRatio ht).continuousAt.continuousWithinAt
    · intro t ht
      exact (hasDerivAt_thetaTail_compoundRatio (interior_subset ht)).differentiableAt
        |>.differentiableWithinAt
    · intro t ht
      rw [(hasDerivAt_thetaTail_compoundRatio (interior_subset ht)).deriv]
      exact div_nonpos_of_nonpos_of_nonneg (hn t (interior_subset ht)) (sq_nonneg _)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
