# ProjectiveContractiveCoupling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3dd3960113db11dc2d933dd37226c378769844e3903d0490cc05d3786478fd6",
  "kind": "structure",
  "lexical_name": "ProjectiveContractiveCoupling",
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
  "slug": "projectivecontractivecoupling--f9284d86beeddd5c16216ea1",
  "source": {
    "blob": "a3d263068119a95a5ddb0aa90a16a8b55d95d0f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectiveCertificates/Variantf20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9284d86beeddd5c16216ea14b9550dd7c4a7e0568cf6a46ea9456161c23c935",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectiveCertificates/Variantf20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3dd3960113db11dc2d933dd37226c378769844e3903d0490cc05d3786478fd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProjectiveContractiveCoupling
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (kernel :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system) where
  sourceMatches :
    kernel.contractionSource =
      .projectivelyCompatibleCoupling
  Coupling :
    kernel.Law → kernel.Law → Type uCoupling
  choose :
    ∀ left right,
      Coupling left right
  expectedCost :
    ∀ {left right},
      Coupling left right → ℝ≥0
  realizesMarginals : Prop
  marginalProof :
    realizesMarginals
  initialCostBound :
    ∀ left right,
      expectedCost (choose left right) ≤
        kernel.wasserstein left right
  pushedCoupling :
    ∀ schedule {left right},
      Coupling left right →
        Coupling
          (kernel.push schedule left)
          (kernel.push schedule right)
  pushedCostContracts :
    ∀ schedule {left right}
      (coupling : Coupling left right),
      expectedCost
          (pushedCoupling schedule coupling) ≤
        system.uniformContraction *
          expectedCost coupling
  couplingBoundsWasserstein :
    ∀ schedule left right,
      kernel.wasserstein
          (kernel.push schedule left)
          (kernel.push schedule right) ≤
        expectedCost
          (pushedCoupling schedule
            (choose left right))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectiveCertificates/Variantf20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectiveCertificates/Variantf20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d263068119a95a5ddb0aa90a16a8b55d95d0f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
