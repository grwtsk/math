# slope_distinct_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d9a0ea5-028e-b919-4a29-db9b88b431a0",
  "kind": "theorem",
  "lexical_name": "slope_distinct_iff",
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
  "slug": "slope-distinct-iff--9a77ec35a69ac6e893e851df",
  "source": {
    "blob": "a7b70c96e61ea747859079415d529279e2d15c68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a77ec35a69ac6e893e851df0997f8ead3d375ee86974405ecec212a8118a7b4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d9a0ea5-028e-b919-4a29-db9b88b431a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem slope_distinct_iff (u s x y : K) (hu : u ≠ 0) :
    u*x+s ≠ u*y+s ↔ x ≠ y := by
  constructor
  · intro h he
    apply h
    rw [he]
  · intro h he
    exact h (mul_left_cancel₀ hu (add_right_cancel he))

end Field

/-- Fixed rational scale and shear used by BOTH old selected-model chambers.
Translations r,t remain arbitrary; the tangent identity is independent of them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b70c96e61ea747859079415d529279e2d15c68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
