# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:846817d18f091ec593b6da16ada0177a68853477e7d5e198bca0987373fbc9b8",
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
  "slug": "addedclaim--3a37d79fcb5a14b1441afa89",
  "source": {
    "blob": "96e6e21b30130c6a463d910708d81942f770e54c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 46,
    "path": "GRWTSK/Interfaces/PortFiberSectionLinear.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a37d79fcb5a14b1441afa89c4e135653b90838ea599233e873110533c3ebffc",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:846817d18f091ec593b6da16ada0177a68853477e7d5e198bca0987373fbc9b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .finiteClosure =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        energy M μ hOpen (sectionZero C hOpen) = 0 ∧
        (∀ s t : FiniteEnergySection M μ hOpen, energy M μ hOpen (sectionAdd s.1 t.1) < ∞) ∧
        (∀ (c : ℂ) (s : FiniteEnergySection M μ hOpen), energy M μ hOpen (sectionSMul c s.1) < ∞)
  | .aeOperations =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        (∀ s s' t t' : BundleSection C hOpen, AEEqual μ hOpen s s' → AEEqual μ hOpen t t' →
          AEEqual μ hOpen (sectionAdd s t) (sectionAdd s' t')) ∧
        (∀ (c : ℂ) (s t : BundleSection C hOpen), AEEqual μ hOpen s t →
          AEEqual μ hOpen (sectionSMul c s) (sectionSMul c t))
  | .representativeOperations =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        quotientZero M μ hOpen = classOf M μ hOpen (finiteZero M μ hOpen) ∧
        (∀ s t : FiniteEnergySection M μ hOpen,
          quotientAdd M μ hOpen (classOf M μ hOpen s) (classOf M μ hOpen t) =
            classOf M μ hOpen (finiteAdd M μ hOpen s t)) ∧
        (∀ (c : ℂ) (s : FiniteEnergySection M μ hOpen),
          quotientSMul M μ hOpen c (classOf M μ hOpen s) =
            classOf M μ hOpen (finiteSMul M μ hOpen c s))
  | .vectorLaws =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover), QuotientVectorLaws M μ hOpen
  | .quotientQuadraticEnergy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        (∀ (c : ℂ) (q : SectionQuotient M μ hOpen),
          quotientEnergy M μ hOpen (quotientSMul M μ hOpen c q) =
            ENNReal.ofReal (Complex.normSq c) * quotientEnergy M μ hOpen q) ∧
        (∀ q r : SectionQuotient M μ hOpen,
          quotientEnergy M μ hOpen (quotientAdd M μ hOpen q r) ≤
            2 * (quotientEnergy M μ hOpen q + quotientEnergy M μ hOpen r))
  | .zeroEnergyClass =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (q : SectionQuotient M μ hOpen),
        quotientEnergy M μ hOpen q = 0 ↔ q = quotientZero M μ hOpen
  | .gaugeLinear =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        gaugeEquiv G M μ hOpen (quotientZero M μ hOpen) =
          quotientZero (transportMetric G M) μ hOpen ∧
        (∀ q r : SectionQuotient M μ hOpen,
          gaugeEquiv G M μ hOpen (quotientAdd M μ hOpen q r) =
            quotientAdd (transportMetric G M) μ hOpen
              (gaugeEquiv G M μ hOpen q) (gaugeEquiv G M μ hOpen r)) ∧
        (∀ (c : ℂ) (q : SectionQuotient M μ hOpen),
          gaugeEquiv G M μ hOpen (quotientSMul M μ hOpen c q) =
            quotientSMul (transportMetric G M) μ hOpen c (gaugeEquiv G M μ hOpen q)) ∧
        (∀ q r : SectionQuotient (transportMetric G M) μ hOpen,
          (gaugeEquiv G M μ hOpen).symm (quotientAdd (transportMetric G M) μ hOpen q r) =
            quotientAdd M μ hOpen ((gaugeEquiv G M μ hOpen).symm q)
              ((gaugeEquiv G M μ hOpen).symm r)) ∧
        (∀ (c : ℂ) (q : SectionQuotient (transportMetric G M) μ hOpen),
          (gaugeEquiv G M μ hOpen).symm (quotientSMul (transportMetric G M) μ hOpen c q) =
            quotientSMul M μ hOpen c ((gaugeEquiv G M μ hOpen).symm q))
  | .failureBoundaries =>
      (∃ s t : FiniteEnergySection (MetricWeights.identity twoCharts)
          (Measure.dirac zeroPoint) twoCharts_isOpen,
        energy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen
            (sectionAdd s.1 t.1) ≠
          energy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen s.1 +
            energy (MetricWeights.identity twoCharts) (Measure.dirac zeroPoint) twoCharts_isOpen t.1) ∧
      (∀ (μ : Measure twoCharts.X.carrier), μ Set.univ = ∞ →
        energy (MetricWeights.identity twoCharts) μ twoCharts_isOpen
            (scalarSection twoCharts twoCharts_isOpen (constantSection twoCharts.X 1)) = ∞ ∧
          energy (MetricWeights.identity twoCharts) μ twoCharts_isOpen
            (sectionSMul 0 (scalarSection twoCharts twoCharts_isOpen
              (constantSection twoCharts.X 1))) = 0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberSectionLinear.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96e6e21b30130c6a463d910708d81942f770e54c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
