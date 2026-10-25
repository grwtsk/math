# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.All.Variant348f0e86a67f9caf59a2e0220cc98d5e5a735ddc7360f77e80df975b6c7d5c9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7bfc38a70d3aee926d96c8473e4254ef8fbd623` · SHA-256 `348f0e86a67f9caf59a2e0220cc98d5e5a735ddc7360f77e80df975b6c7d5c9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.OrdinalTally.Syntax
import Mathematics.StratifiedBoundary.OrdinalTally.Semantics
import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm
import Mathematics.StratifiedBoundary.OrdinalTally.FundamentalSequence
import Mathematics.StratifiedBoundary.OrdinalTally.Stratum
import Mathematics.StratifiedBoundary.OrdinalTally.Limit
import Mathematics.StratifiedBoundary.Frontier.MajorityCrossing
import Mathematics.StratifiedBoundary.Frontier.LocalRank
import Mathematics.StratifiedBoundary.Frontier.OrdinalIndex
import Mathematics.StratifiedBoundary.Frontier.AutomorphismIndex
import Mathematics.StratifiedBoundary.Boundary.FiniteCut
import Mathematics.StratifiedBoundary.Boundary.SuccessorConnector
import Mathematics.StratifiedBoundary.Boundary.ProjectiveSystem
import Mathematics.StratifiedBoundary.Boundary.LimitState
import Mathematics.StratifiedBoundary.Boundary.LimitKernel
import Mathematics.StratifiedBoundary.Boundary.ProjectiveCertificates
import Mathematics.StratifiedBoundary.Boundary.Perturbation
import Mathematics.StratifiedBoundary.Symmetry.CutAction
import Mathematics.StratifiedBoundary.Symmetry.SuccessorCompatibility
import Mathematics.StratifiedBoundary.Symmetry.LimitAction
import Mathematics.StratifiedBoundary.Trace.StableInvariantTrace
import Mathematics.StratifiedBoundary.Trace.FiniteCrossedProduct
import Mathematics.StratifiedBoundary.Trace.CrossedProductConnector
import Mathematics.StratifiedBoundary.Trace.SuccessorTrace
import Mathematics.StratifiedBoundary.Trace.CylinderTrace
import Mathematics.StratifiedBoundary.Trace.InductiveLimit
import Mathematics.StratifiedBoundary.Trace.LimitObservable
import Mathematics.StratifiedBoundary.Trace.TraceStability
import Mathematics.StratifiedBoundary.Arithmetic.FiniteCorrespondence
import Mathematics.StratifiedBoundary.Arithmetic.SuccessorCorrespondence
import Mathematics.StratifiedBoundary.Arithmetic.LimitCorrespondence
import Mathematics.StratifiedBoundary.SquareRoot.OrdinalFamily
import Mathematics.StratifiedBoundary.SquareRoot.LimitClosure
import Mathematics.StratifiedBoundary.Separation
import Mathematics.StratifiedBoundary.Contract
import Mathematics.StratifiedBoundary.UnknownLedger
import Mathematics.StratifiedBoundary.Noninterference

/-!
# Stratified ordinal-tally boundary closure

Finite Connes--bitfield closure packages are indexed by executable ordinal
normal forms or separately registered countable limits.  Ordinal stratum,
compatible boundary address, persistent identity, projective boundary state,
and limit spectral observable are distinct objects.  A formal limit is a
certified nonempty compatible family, never one enumerated runtime bitfield.
Finite contractions reach the limit only through a direct Wasserstein proof
or compatible coupling.  Covariant crossed-product embeddings form the
observable direct system; common-stage equivalence yields its algebraic
inductive-limit trace.  The default limit mode is convergence of finite trace
observables, not an inferred operator.  Arithmetic closure concerns normalized
weak-star limits on a compatible test space, with unnormalized convergence
explicitly unclaimed.
-/
```
