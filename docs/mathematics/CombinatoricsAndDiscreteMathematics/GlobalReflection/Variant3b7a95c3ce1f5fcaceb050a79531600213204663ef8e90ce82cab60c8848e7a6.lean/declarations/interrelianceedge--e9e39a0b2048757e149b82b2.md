# InterRelianceEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52dd436f41b0f3bd72b6926b22871d7c9030c39e911a7e2c1224d992796a94b1",
  "kind": "structure",
  "lexical_name": "InterRelianceEdge",
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
  "slug": "interrelianceedge--e9e39a0b2048757e149b82b2",
  "source": {
    "blob": "de06990a4fddc0346e87d209143095f0c1cdcfe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1666,
    "line": 1636,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9e39a0b2048757e149b82b2085551d0983a672dea77dd8c8f7f5e4bd124761c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52dd436f41b0f3bd72b6926b22871d7c9030c39e911a7e2c1224d992796a94b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1636–1666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InterRelianceEdge
    {leftStratum rightStratum : ArtifactStratum}
    (left : TypedArtifact leftStratum)
    (right : TypedArtifact rightStratum) where
  dependency : DependencyId
  leftToRightKind : InterRelianceKind
  rightToLeftKind : InterRelianceKind
  propagateLeftToRight :
    CandidateArtifactChange left → ImpactObligation rightStratum
  propagateRightToLeft :
    CandidateArtifactChange right → ImpactObligation leftStratum
  leftToRightTargetsRight : ∀ change,
    (propagateLeftToRight change).target = right
  rightToLeftTargetsLeft : ∀ change,
    (propagateRightToLeft change).target = left
  leftToRightDependencyExact : ∀ change,
    (propagateLeftToRight change).dependency = dependency
  rightToLeftDependencyExact : ∀ change,
    (propagateRightToLeft change).dependency = dependency
  leftToRightChangeExact : ∀ change,
    (propagateLeftToRight change).sourceChange = change.id
  rightToLeftChangeExact : ∀ change,
    (propagateRightToLeft change).sourceChange = change.id
  leftToRightReviewNonzero : ∀ change,
    (propagateLeftToRight change).requiredReview.value ≠ 0
  rightToLeftReviewNonzero : ∀ change,
    (propagateRightToLeft change).requiredReview.value ≠ 0

namespace InterRelianceEdge

/-- A change at location B produces an exact impact obligation at location A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReflection/Variant3b7a95c3ce1f5fcaceb050a79531600213204663ef8e90ce82cab60c8848e7a6.lean#L1636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de06990a4fddc0346e87d209143095f0c1cdcfe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
