# orthogonalProjection_vadd_smul_vsub_orthogonalProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea9d2571-88a5-1a95-6893-8d47773d86de",
  "kind": "theorem",
  "lexical_name": "orthogonalProjection_vadd_smul_vsub_orthogonalProjection",
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
  "slug": "orthogonalprojection-vadd-smul-vsub-orthogonalprojection--4c69170f264530a9d185bb8f",
  "source": {
    "blob": "bcc38e3ed3951a95f60ac3a102597c3c77c25ece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 469,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c69170f264530a9d185bb8f7ab6933ba3984dcbc37d35091a190b880e67eebb",
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

Occurrence: `result:ea9d2571-88a5-1a95-6893-8d47773d86de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalProjection_vadd_smul_vsub_orthogonalProjection {s : AffineSubspace ℝ P}
    [Nonempty s] [HasOrthogonalProjection s.direction] {p1 : P} (p2 : P) (r : ℝ) (hp : p1 ∈ s) :
    orthogonalProjection s (r • (p2 -ᵥ orthogonalProjection s p2 : V) +ᵥ p1) = ⟨p1, hp⟩ :=
  orthogonalProjection_vadd_eq_self hp
    (Submodule.smul_mem _ _ (vsub_orthogonalProjection_mem_direction_orthogonal s _))
#align euclidean_geometry.orthogonal_projection_vadd_smul_vsub_orthogonal_projection EuclideanGeometry.orthogonalProjection_vadd_smul_vsub_orthogonalProjection

/-- The square of the distance from a point in `s` to `p2` equals the
sum of the squares of the distances of the two points to the
`orthogonalProjection`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcc38e3ed3951a95f60ac3a102597c3c77c25ece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
