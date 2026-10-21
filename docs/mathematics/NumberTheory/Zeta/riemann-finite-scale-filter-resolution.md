# Finite-scale filter witness resolution

## Disposition

The historical phrase **finite-scale filter witness** is no longer left as an
unidentified conversation label.

Its original repository owner is:

- repository: `grwtsk/formal-research`;
- issue: `#324`, **[RH16-FINITE-SCALE-FILTER.01] Realize a bounded discrete
  filter for the source-defect shape**;
- accepted source audit point:
  `dc96769a40980ba724fa248c00541f594ad00080`.

The original issue proposed a finite dyadic filter, moment cancellation through
order three, and a source-bound sign-compression comparison. That full discrete
construction was not completed.

The accepted source contains a narrower exact descendant: an independently
defined critical decay mode and a source-preserving removal theorem. The
registry therefore resolves the historical label to this exact chain without
claiming that the original dyadic filter exists.

## Accepted critical mode

In

```text
FormalResearch/RiemannHypothesis/SourceCriticalDecayWork.lean
```

the source defines

```lean
criticalDecay (u) = exp(-u/2).
```

It proves:

```lean
criticalDecayWork_eq_main
```

which identifies the corresponding signed work, for every real `A ≥ 1`, with

```text
diagonalMainCoefficient A * A - 1.
```

It also proves:

```lean
squareMinusDecayPairedWork_uniformly_bounded
```

so the independent signed correction created by replacing the square-tail mode
with the critical decay mode has one uniform absolute bound.

These theorems are exact source reductions. They do not prove the remaining
arithmetic sign.

## Open filtered witness

In

```text
FormalResearch/RiemannHypothesis/SourceCriticalRemovedPrimeWork.lean
```

the accepted source defines:

```lean
CriticalRemovedPairedTailLowerBound
```

with the form

```text
∃ D ≥ 0, ∃ R ≥ 1, ∀ A ≥ R,
  -D ≤ criticalRemovedPairedWork A.
```

No inhabitant is supplied.

The same file proves:

```lean
criticalRemoved_tail_iff_residual_tail :
  CriticalRemovedPairedTailLowerBound ↔
    MertensResidualTailUpperBound
```

after proving that all removed correction terms are uniformly bounded.

The existing accepted consumer then proves:

```lean
estimate_of_mertens_residual_tail :
  MertensResidualTailUpperBound →
    CorrelationAssembly.EstimateObligation
```

Hence the exact dependency path is:

```text
CriticalRemovedPairedTailLowerBound
  ↔ MertensResidualTailUpperBound
  → CorrelationAssembly.EstimateObligation.
```

`EstimateObligation` is the all-real lower bound for the actual arithmetic
quadratic source. Its premise remains open.

## Comparison with the boundary witness

The preceding registry increment resolved the boundary-layer label to:

```lean
CriticalAbelTailLowerBound.
```

The accepted source also proves:

```lean
MertensResidualTailUpperBound ↔ CriticalAbelTailLowerBound.
```

Therefore the two historical programs meet at one exact residual frontier:

```text
CriticalRemovedPairedTailLowerBound
  ↔ MertensResidualTailUpperBound
  ↔ CriticalAbelTailLowerBound.
```

The registry records this as `COMPARES_TO` with external-source authority. It is
not traversable inside `grwtsk/math`, because no cross-repository theorem has
been imported or replayed here.

## What remains false or unproved

This increment does not establish any of the following:

- the original finite dyadic filter from issue #324;
- uniform moment-cancelling coefficients with the proposed sign compression;
- `CriticalRemovedPairedTailLowerBound`;
- `MertensResidualTailUpperBound`;
- `CriticalAbelTailLowerBound`;
- `CorrelationAssembly.EstimateObligation`;
- the separate bridge from that estimate to the Riemann Hypothesis;
- a relation to the rectangle-edge, Möbius endpoint, or local-reflection
  witnesses.

The accepted critical mode is a source-derived exact comparison, not an
arithmetic positivity theorem.

## Registry state

The finite-scale-filter node is now:

```text
kind          = witness
scope         = globalRiemann
availability  = externalBranch
source        = CriticalRemovedPairedTailLowerBound
evidence      = KERNEL_CHECKED, TRUST_AUDITED
```

Those evidence labels describe the accepted source repository at the pinned
revision. The `grwtsk/math` overlay remains `SOURCE_DRAFT`.

The remaining unresolved historical label is:

```text
quintic witness.
```

## Provenance

- Mathematical direction and theorem selection: grwtsk contributors.
- Formalization and source-organization assistance: OpenAI.
- Accepted formal-research declarations retain their recorded authorship and
  repository history.
- Mathlib results retain upstream authorship and licensing.

No scalar attribution weights are assigned.
