# Resolution of the historical boundary-layer witness label

## Scope

This note resolves one historical label in the `grwtsk/math` RH witness registry. It does not import `grwtsk/formal-research`, construct an arithmetic witness, or prove the Riemann Hypothesis.

The label **boundary-layer witness** is now bound to the exact accepted-main source chain in `grwtsk/formal-research` at commit:

```text
dc96769a40980ba724fa248c00541f594ad00080
```

Source issue: `grwtsk/formal-research#16`
Accepted integration: `grwtsk/formal-research#289`

## Exact open witness

File:

```text
FormalResearch/RiemannHypothesis/SourceFirstPrimeAbel.lean
```

Declaration:

```lean
FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel.
  CriticalAbelTailLowerBound
```

Its mathematical content is the eventual source-correct signed lower bound

```text
∃ C ≥ 0, ∃ R ≥ 1, ∀ A ≥ R,
  diagonalMainCoefficient(A) * A - C
    ≤ criticalSignedWork(A).
```

The signed work is the actual first-prime Abel interaction. No absolute value is inserted and no inhabitant is supplied.

## Exact source chain

The accepted source proves:

```text
CriticalAbelTailLowerBound
  ↔ FirstPrimeTailUpperBound
  → CorrelationAssembly.EstimateObligation.
```

The first arrow is the theorem:

```lean
SourceFirstPrimeAbel.firstPrime_tail_iff_criticalAbel_tail
```

The second is:

```lean
SourcePrimePowerPartition.estimate_of_firstPrime_tail
```

The terminal estimate proposition is defined in:

```text
FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/
  CorrelationAssembly.lean
```

as:

```lean
CorrelationAssembly.EstimateObligation
  = CorrelationAssembly.UniformLowerBound
```

with exact content:

```text
∃ lower : ℝ, ∀ A : ℝ, 1 ≤ A →
  lower ≤ sourceQuadraticValue explicitSecondDerivative A.
```

## RH boundary

The same source file defines:

```lean
CorrelationAssembly.BridgeObligation : Prop :=
  UniformLowerBound → RiemannHypothesis
```

as a separately open proposition. Therefore the accepted source chain supplies the all-scale estimate interface only after the signed Abel witness is proved; it does not establish the witness or the final RH bridge.

## Registry update

`RiemannWitnessBoundaryResolution.lean` provides an overlay that:

1. replaces the unresolved `boundaryLayerWitnessLabel` node with an exact external-source-bound witness node;
2. records the accepted-main source proposition, equivalence, estimate consumer and still-open RH bridge;
3. keeps the node non-local and non-proof-bearing inside `grwtsk/math`;
4. preserves `NO_PROVED_CONNECTION` to the rectangle-edge, Möbius endpoint and local-reflection routes;
5. leaves the quintic and finite-scale-filter labels unresolved.

## Evidence classification

Source-repository evidence recorded:

```text
KERNEL_CHECKED
TRUST_AUDITED
```

Current `grwtsk/math` evidence:

```text
SOURCE_DRAFT
```

Not established in this stack:

```text
LOCAL_IMPORT
LOCAL_KERNEL_CHECK
LOCAL_TRUST_AUDIT
CROSS_REPOSITORY_REPLAY
ANALYTIC_PREMISES_DISCHARGED
BOUNDARY_WITNESS_CONSTRUCTED
RH_BRIDGE_DISCHARGED
```

## Nonclaims

This resolution does not:

- identify the boundary witness with the rectangle-edge witness;
- identify it with the Möbius endpoint obstruction;
- identify it with the critical-reflection cover;
- prove `CriticalAbelTailLowerBound`;
- prove `EstimateObligation` unconditionally;
- prove `BridgeObligation`;
- resolve the quintic or finite-scale-filter labels;
- prove RH.
