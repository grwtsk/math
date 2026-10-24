# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3ba2d01c9e395bd3bb97b50a42a87867a1ecb26e31ecc55db92e3d69ef91602",
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
  "slug": "addedclaim--8746875808d3a7d6ca84dd0e",
  "source": {
    "blob": "bfafe3828711d94b9fa04bd99ab3e98ab3f2dec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 45,
    "path": "GRWTSK/Interfaces/PortFiberSectionCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8746875808d3a7d6ca84dd0e039cc16205d67d4d4eb9a5ca0e2b5b1b6441ae84",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3ba2d01c9e395bd3bb97b50a42a87867a1ecb26e31ecc55db92e3d69ef91602`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .completionEmbedding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        CompleteSpace (SectionCompletion M μ hOpen) ∧
        Function.Injective (toCompletion M μ hOpen) ∧
        DenseRange (toCompletion M μ hOpen) ∧ Isometry (toCompletion M μ hOpen)
  | .innerEnergyBinding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q r : SectionQuotient M μ hOpen) (s t : FiniteEnergySection M μ hOpen)
        (x : SectionCompletion M μ hOpen),
        inner ℂ (toCompletion M μ hOpen q) (toCompletion M μ hOpen r) = inner ℂ q r ∧
        inner ℂ (toCompletion M μ hOpen (classOf M μ hOpen s))
          (toCompletion M μ hOpen (classOf M μ hOpen t)) = sectionPairing M μ hOpen s t ∧
        completionEnergy M μ hOpen (toCompletion M μ hOpen q) = quotientEnergy M μ hOpen q ∧
        completionEnergy M μ hOpen x < ∞ ∧
        dist (toCompletion M μ hOpen q) (toCompletion M μ hOpen r) =
          Real.sqrt ((quotientEnergy M μ hOpen (q - r)).toReal)
  | .boundedExtension =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover),
        (∀ (F : Type) [NormedAddCommGroup F] [NormedSpace ℂ F] [CompleteSpace F]
          (f : SectionQuotient M μ hOpen →L[ℂ] F),
          ∃! g : SectionCompletion M μ hOpen →L[ℂ] F,
            ∀ q, g (toCompletion M μ hOpen q) = f q) ∧
        extendLinear M μ hOpen (toCompletion M μ hOpen).toContinuousLinearMap =
          ContinuousLinearMap.id ℂ (SectionCompletion M μ hOpen)
  | .gaugeEmbedding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (q : SectionQuotient M μ hOpen)
        (r : SectionQuotient (transportMetric G M) μ hOpen),
        gaugeCompletionEquiv G M μ hOpen (toCompletion M μ hOpen q) =
          toCompletion (transportMetric G M) μ hOpen (gaugeEquiv G M μ hOpen q) ∧
        (gaugeCompletionEquiv G M μ hOpen).symm
            (toCompletion (transportMetric G M) μ hOpen r) =
          toCompletion M μ hOpen ((gaugeEquiv G M μ hOpen).symm r) ∧
        Isometry (gaugeCompletionEquiv G M μ hOpen)
  | .gaugePreservation =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (x y : SectionCompletion M μ hOpen)
        (z : SectionCompletion (transportMetric G M) μ hOpen),
        inner ℂ (gaugeCompletionEquiv G M μ hOpen x) (gaugeCompletionEquiv G M μ hOpen y) =
          inner ℂ x y ∧
        completionEnergy (transportMetric G M) μ hOpen (gaugeCompletionEquiv G M μ hOpen x) =
          completionEnergy M μ hOpen x ∧
        (gaugeCompletionEquiv G M μ hOpen).symm (gaugeCompletionEquiv G M μ hOpen x) = x ∧
        gaugeCompletionEquiv G M μ hOpen ((gaugeCompletionEquiv G M μ hOpen).symm z) = z
  | .gaugeUniqueness =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
        (f : SectionCompletion M μ hOpen → SectionCompletion (transportMetric G M) μ hOpen),
        Continuous f →
        (∀ q, f (toCompletion M μ hOpen q) =
          toCompletion (transportMetric G M) μ hOpen (gaugeEquiv G M μ hOpen q)) →
        f = ⇑(gaugeCompletionEquiv G M μ hOpen)
  | .failureBoundaries =>
      (∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (x : SectionCompletion M 0 hOpen), x = 0) ∧
      ∃ (D : IndexedDomainCover Bool) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (x y : SectionCompletion M μ hOpen),
        ‖x‖ = ‖y‖ ∧ x ≠ y
  | .complexOrder =>
      ∃ (D : IndexedDomainCover Bool) (C : Cocycle D) (M : MetricWeights C)
        (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (x y : SectionCompletion M μ hOpen),
        inner ℂ x y = Complex.I ∧ inner ℂ y x = -Complex.I

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberSectionCompletion.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfafe3828711d94b9fa04bd99ab3e98ab3f2dec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
