# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:274366abf93b658b3ecc3ce1adec98584892fd1423ca562133d492be85e2fe04",
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
  "slug": "addedclaim--3326ffb7e520928dd8989d3f",
  "source": {
    "blob": "71edc19bb2ed0eb44329f378f21587feb21fc061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 42,
    "path": "GRWTSK/Interfaces/PortFiberSectionBounded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3326ffb7e520928dd8989d3f0e319ea2a3a55e802791e5290f37d27922836ebc",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/PortFiberSectionBounded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:274366abf93b658b3ecc3ce1adec98584892fd1423ca562133d492be85e2fe04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .exactExtension =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D)
        (M : MetricWeights C) (N : MetricWeights E) (μ : Measure D.X.carrier)
        (hOpen : D.IsOpenCover)
        (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen)
        (q : SectionQuotient M μ hOpen),
        completeMap M N μ hOpen A (toCompletion M μ hOpen q) =
          toCompletion N μ hOpen (A q) ∧ Function.Injective (completeMap M N μ hOpen)
  | .boundedNorm =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D)
        (M : MetricWeights C) (N : MetricWeights E) (μ : Measure D.X.carrier)
        (hOpen : D.IsOpenCover)
        (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen)
        (x : SectionCompletion M μ hOpen),
        ‖completeMap M N μ hOpen A x‖ ≤ ‖A‖ * ‖x‖ ∧
        ‖completeMap M N μ hOpen A‖ = ‖A‖
  | .linearFunctor =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D)
        (M : MetricWeights C) (N : MetricWeights E) (μ : Measure D.X.carrier)
        (hOpen : D.IsOpenCover)
        (A B : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen) (c : ℂ),
        completeMap M N μ hOpen 0 = 0 ∧
        completeMap M N μ hOpen (A + B) =
          completeMap M N μ hOpen A + completeMap M N μ hOpen B ∧
        completeMap M N μ hOpen (A - B) =
          completeMap M N μ hOpen A - completeMap M N μ hOpen B ∧
        completeMap M N μ hOpen (c • A) = c • completeMap M N μ hOpen A
  | .composition =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E F : Cocycle D)
        (M : MetricWeights C) (N : MetricWeights E) (P : MetricWeights F)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (B : SectionQuotient N μ hOpen →L[ℂ] SectionQuotient P μ hOpen)
        (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen),
        completeMap M M μ hOpen (ContinuousLinearMap.id ℂ _) = ContinuousLinearMap.id ℂ _ ∧
        completeMap M P μ hOpen (B.comp A) =
          (completeMap N P μ hOpen B).comp (completeMap M N μ hOpen A)
  | .residual =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
        (B : SectionQuotient (transportMetric G M) μ hOpen →L[ℂ]
          SectionQuotient (transportMetric G M) μ hOpen),
        completeMap M (transportMetric G M) μ hOpen (quotientGaugeMap G M μ hOpen) =
          completionGaugeMap G M μ hOpen ∧
        completeMap M (transportMetric G M) μ hOpen (gaugeDefect G M μ hOpen A B) =
          completedGaugeDefect G M μ hOpen A B ∧
        ‖completedGaugeDefect G M μ hOpen A B‖ = ‖gaugeDefect G M μ hOpen A B‖ ∧
        (completedGaugeDefect G M μ hOpen A B = 0 ↔ gaugeDefect G M μ hOpen A B = 0)
  | .adjointCandidate =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D)
        (M : MetricWeights C) (N : MetricWeights E) (μ : Measure D.X.carrier)
        (hOpen : D.IsOpenCover)
        (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient N μ hOpen)
        (S : SectionQuotient N μ hOpen →L[ℂ] SectionQuotient M μ hOpen),
        (∀ x y, inner ℂ (S y) x = inner ℂ y (A x)) →
        completeMap N M μ hOpen S = ContinuousLinearMap.adjoint (completeMap M N μ hOpen A)
  | .gaugeAdjoint =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (T : SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen)
        (A : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen)
        (B : SectionQuotient (transportMetric G M) μ hOpen →L[ℂ]
          SectionQuotient (transportMetric G M) μ hOpen),
        ContinuousLinearMap.adjoint (gaugeConjugate G M μ hOpen T) =
          gaugeConjugate G M μ hOpen (ContinuousLinearMap.adjoint T) ∧
        (gaugeDefect G M μ hOpen A B = 0 →
          completeMap (transportMetric G M) (transportMetric G M) μ hOpen B =
            gaugeConjugate G M μ hOpen (completeMap M M μ hOpen A) ∧
          ContinuousLinearMap.adjoint
              (completeMap (transportMetric G M) (transportMetric G M) μ hOpen B) =
            gaugeConjugate G M μ hOpen (ContinuousLinearMap.adjoint (completeMap M M μ hOpen A)))
  | .failureBoundaries =>
      (ContinuousLinearMap.id ℂ Fixtures.DiracSpace) ≠ 0 ∧
      ContinuousLinearMap.adjoint Fixtures.phaseOperator =
        (-Complex.I) • ContinuousLinearMap.id ℂ Fixtures.DiracSpace ∧
      ContinuousLinearMap.adjoint Fixtures.phaseOperator ≠ Fixtures.phaseOperator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/PortFiberSectionBounded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberSectionBounded.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71edc19bb2ed0eb44329f378f21587feb21fc061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
