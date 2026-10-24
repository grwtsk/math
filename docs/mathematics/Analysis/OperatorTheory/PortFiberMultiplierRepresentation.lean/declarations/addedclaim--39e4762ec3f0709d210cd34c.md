# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83c59c2775a4682bcc468b40557efc1ec8203793d00d9518194aa93f8ba6fb63",
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
  "slug": "addedclaim--39e4762ec3f0709d210cd34c",
  "source": {
    "blob": "86376220002dcdf501aae27a3ebd1fd8245a85fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 47,
    "path": "GRWTSK/Interfaces/PortFiberMultiplierRepresentation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39e4762ec3f0709d210cd34cbddc931a695e98b30085c4ec46e785bd3cccf296",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/PortFiberMultiplierRepresentation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83c59c2775a4682bcc468b40557efc1ec8203793d00d9518194aa93f8ba6fb63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .oldProducer =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (b : BoundedMultiplier D.X),
        quotientRepresentation M μ hOpen (BoundedSymbol.ofMultiplier b) =
          quotientOperator b M μ hOpen ∧
        completedRepresentation M μ hOpen (BoundedSymbol.ofMultiplier b) =
          completedOperator b M μ hOpen
  | .algebraLaws =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (f g : BoundedSymbol D.X) (c : ℂ),
        completedAlgHom M μ hOpen 1 = 1 ∧
        completedAlgHom M μ hOpen (f + g) =
          completedAlgHom M μ hOpen f + completedAlgHom M μ hOpen g ∧
        completedAlgHom M μ hOpen (f * g) =
          completedAlgHom M μ hOpen f * completedAlgHom M μ hOpen g ∧
        completedAlgHom M μ hOpen (c • f) = c • completedAlgHom M μ hOpen f ∧
        Commute (completedRepresentation M μ hOpen f) (completedRepresentation M μ hOpen g)
  | .completionBinding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (f g : BoundedSymbol D.X) (q : SectionQuotient M μ hOpen),
        completedRepresentation M μ hOpen f (toCompletion M μ hOpen q) =
          toCompletion M μ hOpen (quotientRepresentation M μ hOpen f q) ∧
        (completedRepresentation M μ hOpen f = completedRepresentation M μ hOpen g ↔
          quotientRepresentation M μ hOpen f = quotientRepresentation M μ hOpen g)
  | .boundAndGauge =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (f : BoundedSymbol D.X) (K : ℝ≥0),
        (∀ x, ‖f.value x‖ ≤ (K : ℝ)) →
        ‖completedRepresentation M μ hOpen f‖ ≤ (K : ℝ) ∧
        completedRepresentation (transportMetric G M) μ hOpen f =
          gaugeConjugate G M μ hOpen (completedRepresentation M μ hOpen f)
  | .aeDetection =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (s : FiniteEnergySection M μ hOpen) (f g : BoundedSymbol D.X),
        (∀ᵐ x ∂μ, s.1.value x ≠ 0) →
        (completedRepresentation M μ hOpen f = completedRepresentation M μ hOpen g ↔
          f.value =ᵐ[μ] g.value)
  | .faithfulDetection =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) [Measure.IsOpenPosMeasure μ] (hOpen : D.IsOpenCover)
        (s : FiniteEnergySection M μ hOpen),
        (∀ᵐ x ∂μ, s.1.value x ≠ 0) →
        Function.Injective (quotientRepresentation M μ hOpen) ∧
        Function.Injective (completedRepresentation M μ hOpen)
  | .finiteUnit =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
        [Measure.IsOpenPosMeasure μ] (hOpen : D.IsOpenCover),
        μ Set.univ < ∞ →
        Function.Injective (completedRepresentation (MetricWeights.identity D) μ hOpen)
  | .supportFailure =>
      GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol ≠ 0 ∧
      completedRepresentation
          (MetricWeights.identity GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover)
          (Measure.dirac GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center)
          GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures.diskSymbol = 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/PortFiberMultiplierRepresentation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberMultiplierRepresentation.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86376220002dcdf501aae27a3ebd1fd8245a85fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
