# Complete source: GRWTSK.Topology.GeneralTopology.09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481NeighborhoodProo.Variant09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b53be468b0ef426fbeeee3ea99bf67ba01d227f` · SHA-256 `09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaPhiInfiniteDerivativeTape
import Mathlib.Topology.Instances.Matrix

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open scoped Topology

/-- The signed determinant of ordinary source derivatives is continuous at
all ranks, independently of any sign claim. -/
theorem continuous_thetaPhi_signedJetDet_test (k : ℕ) :
    Continuous (fun t : ℝ => signedJetDet k (fun n => thetaPhiDerivativeTapeValue n t)) := by
  unfold signedJetDet
  refine continuous_const.mul (Continuous.matrix_det ?_)
  apply continuous_matrix
  intro i j
  exact continuous_iff_continuousAt.mpr fun t =>
    (hasDerivAt_thetaPhiDerivativeTapeValue (i.val + j.val) t).continuousAt

example (hneg : signedJetDet 5 (fun n => thetaPhiDerivativeTapeValue n 0) < 0) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ t : ℝ, |t| < ε →
      signedJetDet 5 (fun n => thetaPhiDerivativeTapeValue n t) < 0 := by
  have hnhds := (continuous_thetaPhi_signedJetDet_test 5).continuousAt.eventually_lt
    continuousAt_const hneg
  obtain ⟨ε, hε, he⟩ := Metric.eventually_nhds_iff.mp hnhds
  refine ⟨ε, hε, fun t ht => he ?_⟩
  simpa [Real.dist_eq] using ht

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
