# inter_eq_singleton_orthogonalProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6879c8b-e86a-fabd-9268-b233e262872d",
  "kind": "theorem",
  "lexical_name": "inter_eq_singleton_orthogonalProjection",
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
  "slug": "inter-eq-singleton-orthogonalprojection--27602e11d6552f74839a62b6",
  "source": {
    "blob": "bcc38e3ed3951a95f60ac3a102597c3c77c25ece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 334,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27602e11d6552f74839a62b69d2e9b4b77fe89ba02a65205a040601622c14726",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6879c8b-e86a-fabd-9268-b233e262872d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inter_eq_singleton_orthogonalProjection {s : AffineSubspace ℝ P} [Nonempty s]
    [HasOrthogonalProjection s.direction] (p : P) :
    (s : Set P) ∩ mk' p s.directionᗮ = {↑(orthogonalProjection s p)} := by
  rw [← orthogonalProjectionFn_eq]
  exact inter_eq_singleton_orthogonalProjectionFn p
#align euclidean_geometry.inter_eq_singleton_orthogonal_projection EuclideanGeometry.inter_eq_singleton_orthogonalProjection

/-- The `orthogonalProjection` lies in the given subspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcc38e3ed3951a95f60ac3a102597c3c77c25ece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
