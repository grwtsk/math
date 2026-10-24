# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc479dda8a4840c758466737d2ee5f072a2aba3d91b8bcd1a157f5b364d86211",
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
  "slug": "addedclaim--04917dbb2b02fa4821b03d0a",
  "source": {
    "blob": "ed4f856558e4cb2d96cbd141cd2347688aceee61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 41,
    "path": "GRWTSK/Interfaces/PortFiberSectionQuotient.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04917dbb2b02fa4821b03d0a4f931cc931359e3276a28f71bceaf1c8800f0ccb",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberSectionQuotient.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc479dda8a4840c758466737d2ee5f072a2aba3d91b8bcd1a157f5b364d86211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .exactQuotientEquality =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s t : FiniteEnergySection M μ hOpen),
        classOf M μ hOpen s = classOf M μ hOpen t ↔ AEEqual μ hOpen s.1 t.1
  | .representativeEnergy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen),
        quotientEnergy M μ hOpen (classOf M μ hOpen s) = energy M μ hOpen s.1
  | .quotientFiniteness =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen),
        quotientEnergy M μ hOpen q < ∞
  | .gaugeRepresentative =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s : FiniteEnergySection M μ hOpen),
        gaugeEquiv G M μ hOpen (classOf M μ hOpen s) =
          classOf (transportMetric G M) μ hOpen (finiteEnergyEquiv G M μ hOpen s)
  | .quotientGaugeEnergy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q : SectionQuotient M μ hOpen),
        quotientEnergy (transportMetric G M) μ hOpen (gaugeEquiv G M μ hOpen q) =
          quotientEnergy M μ hOpen q
  | .diracQuotient =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (s t : FiniteEnergySection M (Measure.dirac x) hOpen),
        classOf M (Measure.dirac x) hOpen s = classOf M (Measure.dirac x) hOpen t ↔
          s.1.value x = t.1.value x
  | .supportCounterexample =>
      ∃ s t : FiniteEnergySection (MetricWeights.identity twoCharts)
          (Measure.dirac zeroPoint) twoCharts_isOpen,
        classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen s =
          classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen t ∧
        s.1.value onePoint ≠ t.1.value onePoint
  | .energyCounterexample =>
      ∃ s t : FiniteEnergySection (MetricWeights.identity twoCharts)
          (Measure.dirac zeroPoint) twoCharts_isOpen,
        quotientEnergy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint)
            twoCharts_isOpen
            (classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint)
              twoCharts_isOpen s) =
          quotientEnergy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint)
            twoCharts_isOpen
            (classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint)
              twoCharts_isOpen t) ∧
        classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen s ≠
          classOf (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen t

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberSectionQuotient.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberSectionQuotient.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed4f856558e4cb2d96cbd141cd2347688aceee61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
