# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RhB33Continuation.Variantb67aaa13e719146d126710d7c12fa824c03f31adef0996140f7d273d4f861d0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `740e8ea9c5045eb2d08618be52a42ed82ada7407` · SHA-256 `b67aaa13e719146d126710d7c12fa824c03f31adef0996140f7d273d4f861d0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Laplace.Continuation

#print axioms FormalResearch.RiemannHypothesis.Laplace.Continuation.finite_occurrences_norm_le
#print axioms FormalResearch.RiemannHypothesis.Laplace.Continuation.isClosed_candidateSingularities
#print axioms FormalResearch.RiemannHypothesis.Laplace.Continuation.sourceKernel_compact_norms_summable
#print axioms FormalResearch.RiemannHypothesis.Laplace.Continuation.sourceKernel_hasSumLocallyUniformlyOn
#print axioms FormalResearch.RiemannHypothesis.Laplace.Continuation.continuedTransform_analytic
#print axioms FormalResearch.RiemannHypothesis.Laplace.Continuation.initial_agreement
#print axioms FormalResearch.RiemannHypothesis.Laplace.Continuation.candidate_free_continuation_checkpoint

example :
    FormalResearch.RiemannHypothesis.Laplace.Continuation.CandidateFreeContinuationCheckpoint :=
  FormalResearch.RiemannHypothesis.Laplace.Continuation.candidate_free_continuation_checkpoint
```
