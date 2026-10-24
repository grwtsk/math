# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b27e1289b4b2492b7f9341aceb391ed154588da12424d31d238e694a0d0066b9",
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
  "slug": "addedclaim--e6f8e6df489ed388db689f75",
  "source": {
    "blob": "8d0839cd8e7c8b9fcef589bba4185ae27eb6cec6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 45,
    "path": "GRWTSK/Interfaces/PortFiberMultiplierArea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6f8e6df489ed388db689f75b5a10b9e115fcac09dac2206094ec2b961928298",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/PortFiberMultiplierArea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b27e1289b4b2492b7f9341aceb391ed154588da12424d31d238e694a0d0066b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .areaBinding => ∀ (X : Domain), MeasurableSet X.carrier →
      (areaMeasure X).map (fun x : X.carrier => (x : ℂ)) =
        (volume : Measure ℂ).restrict X.carrier ∧
      areaMeasure X univ = (volume : Measure ℂ) X.carrier ∧
      ∀ x : X.carrier, areaMeasure X {x} = 0
  | .energyComparison => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
      (s : BundleSection (Cocycle.identity D) hOpen),
      ENNReal.ofReal ((Real.pi * W.radius ^ 2) * ‖s.value W.centerPoint‖ ^ 2) ≤
        energy (MetricWeights.identity D) (areaMeasure D.X) hOpen s
  | .aeCompatibility => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
      (s t : BundleSection (Cocycle.identity D) hOpen),
      AEEqual (areaMeasure D.X) hOpen s t ↔ ∀ x, s.value x = t.value x
  | .boundedEvaluation => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (W : CircleWindow D.X) (hOpen : D.IsOpenCover),
      (∀ s : FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen,
        functional W hOpen (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen s) =
          s.1.value W.centerPoint) ∧
      ‖functional W hOpen‖ ≤ (Real.sqrt (Real.pi * W.radius ^ 2))⁻¹
  | .detectorPort => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
      (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (f : BoundedSymbol D.X),
      (finiteAreaPointPort W hOpen hArea).functional = functional W hOpen ∧
      (finiteAreaPointPort W hOpen hArea).functional.comp
          (quotientRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f) =
        f.value W.centerPoint • (finiteAreaPointPort W hOpen hArea).functional
  | .radiusIndependence => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (W V : CircleWindow D.X) (hOpen : D.IsOpenCover),
      W.centerPoint = V.centerPoint → functional W hOpen = functional V hOpen
  | .areaNorming => ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover),
      (volume : Measure ℂ) D.X.carrier < ∞ →
      (∀ f : BoundedSymbol D.X,
        ‖completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f‖ = ‖f‖) ∧
      IsClosed (Set.range (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen))
  | .measurableBoundary =>
      GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.spike =ᵐ[
        areaMeasure GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.disk] 0 ∧
      GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.spike
        GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center = 1 ∧
      ¬ ExtendsHolomorphically
        GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.disk
        GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.spike

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/PortFiberMultiplierArea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberMultiplierArea.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0839cd8e7c8b9fcef589bba4185ae27eb6cec6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
