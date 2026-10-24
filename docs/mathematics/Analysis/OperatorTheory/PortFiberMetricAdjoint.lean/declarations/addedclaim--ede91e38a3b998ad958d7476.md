# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62a51c4c84649955972f0bbd7d5c01c41ca3037cb5edf3cc24078ad1f6ea8bf4",
  "kind": "def",
  "lexical_name": "AddedClaim",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "addedclaim--ede91e38a3b998ad958d7476",
  "source": {
    "blob": "7548c3d5c98e587e29e5d65bb0372bf71c0fdd6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 38,
    "path": "GRWTSK/Interfaces/PortFiberMetricAdjoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ede91e38a3b998ad958d7476ccbb4e072b567dad153f2c0d105b4981532f4f80",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62a51c4c84649955972f0bbd7d5c01c41ca3037cb5edf3cc24078ad1f6ea8bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .metricContinuity =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover),
        Continuous (fun p : (C.vectorBundleCore hOpen).TotalSpace =>
          M.squaredNorm hOpen p.proj p.snd)
  | .metricDefiniteness =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (x : D.X.carrier) (a : (C.vectorBundleCore hOpen).Fiber x),
        0 ≤ M.squaredNorm hOpen x a ∧ (M.squaredNorm hOpen x a = 0 ↔ a = 0)
  | .metricRoundTrip =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C), transportMetric G.symm (transportMetric G M) = M
  | .gaugePairing =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (a b : (C.vectorBundleCore hOpen).Fiber x),
        (transportMetric G M).pairing hOpen x (G.fiberMap hOpen x a) (G.fiberMap hOpen x b) =
          M.pairing hOpen x a b
  | .targetMetricUniqueness =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (N : MetricWeights E) (hOpen : D.IsOpenCover),
        (∀ (x : D.X.carrier) (a b : (C.vectorBundleCore hOpen).Fiber x),
          N.pairing hOpen x (G.fiberMap hOpen x a) (G.fiberMap hOpen x b) =
            M.pairing hOpen x a b) → N = transportMetric G M
  | .pointwiseAdjoint =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (A : CompatibleOperators C)
        (M : MetricWeights C) (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (a b : (C.vectorBundleCore hOpen).Fiber x),
        M.pairing hOpen x (A.descend hOpen x a) b =
          M.pairing hOpen x a ((adjoint A).descend hOpen x b)
  | .adjointUniqueness =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (A : CompatibleOperators C)
        (M : MetricWeights C) (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (B : (C.vectorBundleCore hOpen).Fiber x →L[ℂ] (C.vectorBundleCore hOpen).Fiber x),
        (∀ a b, M.pairing hOpen x (A.descend hOpen x a) b = M.pairing hOpen x a (B b)) →
          B = (adjoint A).descend hOpen x
  | .adjointGauge =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (A : CompatibleOperators C), adjoint (transport G A) = transport G (adjoint A)
  | .adjointHolomorphyBoundary =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (A : CompatibleOperators C),
        (adjoint A).PreservesHolomorphy ↔
          ∀ i, ExtendsHolomorphically (D.U i) (fun z => (starRingEnd ℂ) (coefficient A i z))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/PortFiberMetricAdjoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberMetricAdjoint.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7548c3d5c98e587e29e5d65bb0372bf71c0fdd6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
