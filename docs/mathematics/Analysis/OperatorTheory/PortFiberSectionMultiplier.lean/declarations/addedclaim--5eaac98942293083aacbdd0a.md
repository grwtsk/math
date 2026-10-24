# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58acb8a95629fe7572a130f48f6a2c46a922d34478e13199b557a120e183c5d3",
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
  "slug": "addedclaim--5eaac98942293083aacbdd0a",
  "source": {
    "blob": "8648c218d103f7ed154f2bed81a752b05015ec9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 44,
    "path": "GRWTSK/Interfaces/PortFiberSectionMultiplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5eaac98942293083aacbdd0ab7ef18bf4a3abec051eb15f92d2559e53a3a8776",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58acb8a95629fe7572a130f48f6a2c46a922d34478e13199b557a120e183c5d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .sectionProducer =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
        (b : BoundedMultiplier D.X) (hOpen : D.IsOpenCover)
        (s : BundleSection C hOpen) (x : D.X.carrier),
        (sectionMultiply b.symbol hOpen s).value x = (b.symbol : Section D.X) x • s.value x
  | .energyBound =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (b : BoundedMultiplier D.X) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s : BundleSection C hOpen),
        energy M μ hOpen (sectionMultiply b.symbol hOpen s) ≤
          ENNReal.ofReal ((b.bound : ℝ) ^ 2) * energy M μ hOpen s
  | .quotientBinding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (b : BoundedMultiplier D.X) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s : FiniteEnergySection M μ hOpen),
        quotientOperator b M μ hOpen (classOf M μ hOpen s) =
          classOf M μ hOpen (finiteMultiply b M μ hOpen s) ∧
        ‖quotientOperator b M μ hOpen‖ ≤ (b.bound : ℝ)
  | .symbolCongruence =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (a b : BoundedMultiplier D.X) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        (∀ᵐ x ∂μ, (a.symbol : Section D.X) x = (b.symbol : Section D.X) x) →
        quotientOperator a M μ hOpen = quotientOperator b M μ hOpen
  | .productLaw =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (a b : BoundedMultiplier D.X) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        quotientOperator (a.mul b) M μ hOpen =
          (quotientOperator a M μ hOpen).comp (quotientOperator b M μ hOpen) ∧
        completedOperator (a.mul b) M μ hOpen =
          (completedOperator a M μ hOpen).comp (completedOperator b M μ hOpen)
  | .gaugeDefect =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (b : BoundedMultiplier D.X)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        gaugeDefect G M μ hOpen (quotientOperator b M μ hOpen)
          (quotientOperator b (transportMetric G M) μ hOpen) = 0
  | .completedTransport =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (b : BoundedMultiplier D.X)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen),
        completedOperator b M μ hOpen (toCompletion M μ hOpen (classOf M μ hOpen s)) =
          toCompletion M μ hOpen (classOf M μ hOpen (finiteMultiply b M μ hOpen s)) ∧
        ‖completedOperator b M μ hOpen‖ ≤ (b.bound : ℝ) ∧
        completedOperator b (transportMetric G M) μ hOpen =
          gaugeConjugate G M μ hOpen (completedOperator b M μ hOpen) ∧
        ContinuousLinearMap.adjoint (completedOperator b (transportMetric G M) μ hOpen) =
          gaugeConjugate G M μ hOpen (ContinuousLinearMap.adjoint (completedOperator b M μ hOpen))
  | .supportBoundary =>
      (¬ ∃ c : ℂ, ∀ x : Fixtures.disk.carrier,
        (Fixtures.diskCoordinate.symbol : Section Fixtures.disk) x = c) ∧
      quotientOperator Fixtures.diskCoordinate (MetricWeights.identity Fixtures.diskCover)
        (Measure.dirac Fixtures.center) Fixtures.diskCover_isOpen = 0 ∧
      ‖quotientOperator Fixtures.diskCoordinate (MetricWeights.identity Fixtures.diskCover)
        (Measure.dirac Fixtures.center) Fixtures.diskCover_isOpen‖ < 1 ∧
      quotientOperator Fixtures.diskCoordinate (MetricWeights.identity Fixtures.diskCover)
        (Measure.dirac Fixtures.halfPoint) Fixtures.diskCover_isOpen ≠ 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/PortFiberSectionMultiplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberSectionMultiplier.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8648c218d103f7ed154f2bed81a752b05015ec9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
