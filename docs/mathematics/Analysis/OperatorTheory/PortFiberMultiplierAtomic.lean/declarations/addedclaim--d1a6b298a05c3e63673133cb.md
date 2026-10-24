# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cd79e83b46140fb74fe4eb346f211fc94d3f828d7ade8cda9e5dbe30aeeb7b8",
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
  "slug": "addedclaim--d1a6b298a05c3e63673133cb",
  "source": {
    "blob": "1272519865ad25c7e0c8129ee31fcb4f7c339245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 46,
    "path": "GRWTSK/Interfaces/PortFiberMultiplierAtomic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1a6b298a05c3e63673133cb7ce9e26d84bf037d30563d9275d607db2f7a34c0",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/PortFiberMultiplierAtomic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cd79e83b46140fb74fe4eb346f211fc94d3f828d7ade8cda9e5dbe30aeeb7b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .atomDetection =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
        (x : D.X.carrier) (A : PositiveAtom (D := D) μ x) (p : D.X.carrier → Prop),
        (∀ᵐ y ∂μ, p y) → p x
  | .evaluationBound =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
        (x : D.X.carrier) (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover)
        (s : FiniteEnergySection (MetricWeights.identity D) μ hOpen),
        A.functional hOpen (classOf (MetricWeights.identity D) μ hOpen s) = s.1.value x ∧
        ‖A.functional hOpen‖ ≤ (Real.sqrt (A.mass : ℝ))⁻¹
  | .portConstruction =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
        (x : D.X.carrier) (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover)
        (hμ : μ Set.univ < ∞),
        (A.finiteMassPointPort hOpen hμ).functional = A.functional hOpen ∧
        (A.finiteMassPointPort hOpen hμ).functional ≠ 0
  | .weightedMeasure =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (p : ℕ → D.X.carrier)
        (w : ℕ → ℝ≥0) (hw : ∀ n, 0 < w n),
        atomicMeasure D p w Set.univ = ∑' n, (w n : ℝ≥0∞) ∧
        ∀ n, Nonempty (PositiveAtom (D := D) (atomicMeasure D p w) (p n))
  | .denseNorm =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
        (p : ℕ → D.X.carrier) (hp : DenseRange p) (w : ℕ → ℝ≥0)
        (hw : ∀ n, 0 < w n) (hSum : (∑' n, (w n : ℝ≥0∞)) < ∞)
        (f : BoundedSymbol D.X),
        ‖completedRepresentation (MetricWeights.identity D) (atomicMeasure D p w) hOpen f‖ = ‖f‖
  | .canonicalMeasure =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
        (hOpen : D.IsOpenCover),
        denseAtomicMeasure D Set.univ = 2 ∧
        Isometry (denseAtomicRepresentation D hOpen) ∧
        IsClosed (Set.range (completedRepresentation (MetricWeights.identity D)
          (denseAtomicMeasure D) hOpen))
  | .sameRepresentation =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
        (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X),
        denseAtomicRepresentation D hOpen f =
          completedRepresentation (MetricWeights.identity D) (denseAtomicMeasure D) hOpen f
  | .missingAtom =>
      (∀ (ι : Type) (D : IndexedDomainCover ι) (μ : Measure D.X.carrier) (x : D.X.carrier),
        (0 : ℝ≥0) • Measure.dirac x ≤ μ) ∧
      ¬ Nonempty (PositiveAtom
        (D := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover)
        (Measure.dirac GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center)
        GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.halfPoint)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/PortFiberMultiplierAtomic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberMultiplierAtomic.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1272519865ad25c7e0c8129ee31fcb4f7c339245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
