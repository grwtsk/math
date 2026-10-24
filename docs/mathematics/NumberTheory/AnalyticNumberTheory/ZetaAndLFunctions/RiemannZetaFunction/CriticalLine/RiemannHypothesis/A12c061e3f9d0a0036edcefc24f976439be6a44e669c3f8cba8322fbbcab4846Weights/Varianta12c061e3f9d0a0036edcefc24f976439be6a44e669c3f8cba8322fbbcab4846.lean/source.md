# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846Weights.Varianta12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ea35ff706d7ae4d376b6f727a856b127baa700b` · SHA-256 `a12c061e3f9d0a0036edcefc24f976439be6a44e669c3f8cba8322fbbcab4846`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section

def thetaModeWeight (m : ℕ) (t : ℝ) : ℝ := thetaPhiTerm m t / thetaPhi t

lemma thetaModeWeight_positive (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    0 < thetaModeWeight m t :=
  div_pos (thetaPhiTerm_positive m ht) (thetaPhi_positive t ht)

lemma thetaModeWeight_summable (t : ℝ) : Summable (fun m => thetaModeWeight m t) :=
  (thetaPhi_summable t).div_const _

lemma thetaModeWeight_sum_one {t : ℝ} (ht : 0 ≤ t) :
    ∑' m, thetaModeWeight m t = 1 := by
  simp only [thetaModeWeight, tsum_div_const]
  change thetaPhi t / thetaPhi t = 1
  exact div_self (thetaPhi_positive t ht).ne'

lemma thetaPhiTerm_zero_le {t : ℝ} (ht : 0 ≤ t) : thetaPhiTerm 0 t ≤ thetaPhi t :=
  (thetaPhi_summable t).le_tsum 0 (fun m _ => (thetaPhiTerm_positive m ht).le)

lemma thetaModeWeight_le_modeRatio (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaModeWeight m t ≤ thetaPhiTerm m t / thetaPhiTerm 0 t := by
  unfold thetaModeWeight
  exact div_le_div_of_nonneg_left (thetaPhiTerm_positive m ht).le
    (thetaPhiTerm_positive 0 ht) (thetaPhiTerm_zero_le ht)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
