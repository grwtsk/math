# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16e216987c24069cd8e5d8cc72b8e14460dcf67a65ce7595d079f3202ae0dbf2",
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
  "slug": "addedclaim--190aecb3e979d774c2c38df1",
  "source": {
    "blob": "bbb94e6a3e8c97f31d724c28240999a7c6a79668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 43,
    "path": "GRWTSK/Interfaces/PortFiberAreaKernelDensity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:190aecb3e979d774c2c38df1bff5e938331c1e17955dc867c30a6606c571e28f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberAreaKernelDensity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16e216987c24069cd8e5d8cc72b8e14460dcf67a65ce7595d079f3202ae0dbf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .denseEvaluation => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier), Dense S → ∀ v w : AreaCompletion h,
      (∀ x ∈ S, evaluationAt h x v = evaluationAt h x w) → v = w
  | .exactAnnihilator => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier),
      (∀ v : AreaCompletion h, v ∈ (kernelSpan h S).orthogonal ↔
        ∀ x ∈ S, evaluationAt h x v = 0) ∧
      (Dense S → (kernelSpan h S).orthogonal = ⊥)
  | .normDenseSpan => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier), Dense S →
      Dense (kernelSpan h S : Set (AreaCompletion h)) ∧
        ∀ (v : AreaCompletion h) (ε : ℝ), 0 < ε →
          ∃ w ∈ kernelSpan h S, dist v w < ε
  | .boundedDetermination => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier), Dense S →
      ∀ (F : Type) [NormedAddCommGroup F] [NormedSpace ℂ F]
        (A B : AreaCompletion h →L[ℂ] F),
        (∀ x ∈ S, A (kernelVector h x) = B (kernelVector h x)) → A = B
  | .adjointDetermination => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier), Dense S → ∀ (f : BoundedSymbol D.X)
        (T : AreaCompletion h →L[ℂ] AreaCompletion h),
        (∀ x ∈ S, T (kernelVector h x) = star (f.value x) • kernelVector h x) →
        T = ContinuousLinearMap.adjoint
          (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) h f)
  | .ambientClosedSpan => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier), Dense S →
      (ambientKernelSpan h S).topologicalClosure = holomorphicSubspace h
  | .projectionDetermination => ∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover)
      (S : Set D.X.carrier), Dense S → ∀ g : AmbientL2 D.X,
      (∀ p : AmbientL2 D.X, p ∈ holomorphicSubspace h →
        (∀ x ∈ S, inner ℂ (l2Embedding h (kernelVector h x)) (g - p) = 0) →
          p = bergmanProjection h g) ∧
      (bergmanProjection h g = 0 ↔
        ∀ x ∈ S, inner ℂ (l2Embedding h (kernelVector h x)) g = 0)
  | .samplingBoundaries =>
      (∀ (ι : Type) (D : IndexedDomainCover ι) (h : D.IsOpenCover), kernelSpan h ∅ = ⊥) ∧
      GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity.Fixtures.diskCoordinateVector ≠ 0 ∧
      ¬ Dense (kernelSpan
        GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen
        {GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center} :
        Set (AreaCompletion
          GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberAreaKernelDensity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberAreaKernelDensity.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbb94e6a3e8c97f31d724c28240999a7c6a79668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
