# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e623d80c6b0e69e585f9d1eafeb71f50c9281b4249cc98d5cc6c8967d714e7f",
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
  "slug": "addedclaim--fbb080b3904673b23fb554dc",
  "source": {
    "blob": "7b44da4d5209238dff365d341831d7e9f8152d12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 47,
    "path": "GRWTSK/Interfaces/PortFiberGaugeFieldL2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbb080b3904673b23fb554dc698074fb423e9eab77dc2fb48d364c8e551273f5",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e623d80c6b0e69e585f9d1eafeb71f50c9281b4249cc98d5cc6c8967d714e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .metricDensity => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier) (h : D.IsOpenCover)
      (s : RawField C h),
      fieldEnergy G μ h s = ∫⁻ x, ENNReal.ofReal (‖unframe G h s x‖ ^ 2) ∂μ
  | .ambientBijection => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier) (h : D.IsOpenCover),
      (∀ q : FieldL2 G μ h, fromScalarL2 G μ h (toScalarL2 G μ h q) = q) ∧
      (∀ g : Lp ℂ 2 μ, toScalarL2 G μ h (fromScalarL2 G μ h g) = g)
  | .intrinsicPairing => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier) (h : D.IsOpenCover)
      (s t : FiniteField G μ h),
      Integrable (fun x => (transportMetric G (MetricWeights.identity D)).pairing h x
        (s.value x) (t.value x)) μ ∧
      fieldPairing G μ h (fieldClass G μ h s) (fieldClass G μ h t) =
        ∫ x, (transportMetric G (MetricWeights.identity D)).pairing h x (s.value x) (t.value x) ∂μ
  | .energyIdentity => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (μ : Measure D.X.carrier) (h : D.IsOpenCover)
      (q : FieldL2 G μ h),
      quotientFieldEnergy G μ h q = ENNReal.ofReal (‖toScalarL2 G μ h q‖ ^ 2)
  | .historicalEmbedding => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover) (v : GaugeAreaCompletion G h),
      toScalarL2 G (areaMeasure D.X) h (targetEmbedding G h v) = pulledL2Inclusion G h v
  | .projectionRealization => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover)
      (q : FieldL2 G (areaMeasure D.X) h),
      fieldProjection G h q = targetEmbedding G h
        (areaGauge G h (bergmanLift h (toScalarL2 G (areaMeasure D.X) h q)))
  | .projectionLaws => ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
      (G : Gauge (Cocycle.identity D) C) (h : D.IsOpenCover)
      (q r : FieldL2 G (areaMeasure D.X) h),
      fieldProjection G h (fieldProjection G h q) = fieldProjection G h q ∧
      fieldPairing G (areaMeasure D.X) h (fieldProjection G h q) r =
        fieldPairing G (areaMeasure D.X) h q (fieldProjection G h r) ∧
      quotientFieldEnergy G (areaMeasure D.X) h (fieldProjection G h q) ≤
        quotientFieldEnergy G (areaMeasure D.X) h q
  | .nullPointBoundary =>
      let D := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover
      let h := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen
      let x := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center
      ∀ (C : Cocycle D) (G : Gauge (Cocycle.identity D) C),
        ¬ ∃ T : FieldL2 G (areaMeasure D.X) h → ℂ,
          ∀ s : FiniteField G (areaMeasure D.X) h,
            T (fieldClass G (areaMeasure D.X) h s) = unframe G h s.value x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberGaugeFieldL2.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b44da4d5209238dff365d341831d7e9f8152d12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
