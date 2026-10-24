# isTangent_iff_isTangentAt_orthogonalProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:574662a6-e029-20a2-8395-01ea9595917e",
  "kind": "lemma",
  "lexical_name": "isTangent_iff_isTangentAt_orthogonalProjection",
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
  "slug": "istangent-iff-istangentat-orthogonalprojection--51c23b74e83463b894538d35",
  "source": {
    "blob": "52c59c192899f975c56964179e20590005db3e2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 224,
    "path": "GRWTSK/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51c23b74e83463b894538d354ab76b427837219f375b6b7749a72989b2c90391",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:574662a6-e029-20a2-8395-01ea9595917e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTangent_iff_isTangentAt_orthogonalProjection {s : Sphere P} {as : AffineSubspace ℝ P}
    [Nonempty as] [as.direction.HasOrthogonalProjection] :
    s.IsTangent as ↔ s.IsTangentAt (orthogonalProjection as s.center) as := by
  rw [← dist_orthogonalProjection_eq_radius_iff_isTangent,
    dist_orthogonalProjection_eq_radius_iff_isTangentAt]

alias ⟨IsTangent.isTangentAt, _⟩ := isTangent_iff_isTangentAt_orthogonalProjection

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tangent/Variantf06b5712353ea2aa9e254e6ee67707371b93b4bc9c1e862f120ba87007e478b6.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52c59c192899f975c56964179e20590005db3e2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
