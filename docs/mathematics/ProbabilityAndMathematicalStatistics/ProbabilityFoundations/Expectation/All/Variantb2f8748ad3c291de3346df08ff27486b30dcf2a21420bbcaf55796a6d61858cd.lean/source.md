# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.All.Variantb2f8748ad3c291de3346df08ff27486b30dcf2a21420bbcaf55796a6d61858cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccc7bb02d61206db05309707a72fb372a8005964` · SHA-256 `b2f8748ad3c291de3346df08ff27486b30dcf2a21420bbcaf55796a6d61858cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SpectralClosure.Bitfield
import Mathematics.SpectralClosure.Metric
import Mathematics.SpectralClosure.Kernel
import Mathematics.SpectralClosure.Contraction
import Mathematics.SpectralClosure.InvariantLaw
import Mathematics.SpectralClosure.GroupAction
import Mathematics.SpectralClosure.CrossedProduct
import Mathematics.SpectralClosure.SelfAdjoint
import Mathematics.SpectralClosure.FunctionalSymmetry
import Mathematics.SpectralClosure.Trace
import Mathematics.SpectralClosure.TraceStability
import Mathematics.SpectralClosure.Influence
import Mathematics.SpectralClosure.Concentration
import Mathematics.SpectralClosure.Typicality
import Mathematics.SpectralClosure.Correspondence
import Mathematics.SpectralClosure.SquareRoot
import Mathematics.SpectralClosure.Noninterference

/-!
# Invariant-law spectral-closure proof boundary

The umbrella exports exact finite structures and kernel-checked algebraic
implications.  The seven genuinely analytic or arithmetic obligations remain
typed as open in `requiredFormalObligationStatuses`.  The layer has no mutation,
admission, theorem-status, or committed-realization authority.

The common-boundary extension binds each scale to one shared contraction margin,
derives uniqueness and automorphism invariance only after an invariant law is
supplied, records variable traversal defects without certifying their infinite
tail, and treats positivity, traciality, and automorphism invariance of the full
crossed-product trace as explicit proof-bearing premises.  In particular it
does not close invariant-law existence, cross-schedule convergence,
Wasserstein trace stability, or arithmetic correspondence.

The amended family interface additionally proves the finite-step contraction
bound for every arbitrary schedule sequence, conditional on a supplied common
invariant law and uniform per-schedule contraction certificates.  Matrix-fiber
conjugation is explicit and its normalized trace invariance is proved; global
crossed-product trace laws remain conditional.  Reduced traces select either a
central-sector or corner-algebra contract, and trace stability cannot stand in
for the separate uniform trace-scale certificate.  Boundary-law mode retains
exactly five terminal unknown interfaces and requires neither concentration nor
typical-realization evidence.
-/
```
