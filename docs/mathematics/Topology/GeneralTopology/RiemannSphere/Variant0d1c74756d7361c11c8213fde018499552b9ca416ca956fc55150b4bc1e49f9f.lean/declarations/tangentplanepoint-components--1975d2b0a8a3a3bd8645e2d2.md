# tangentPlanePoint_components

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce01d203-7bb8-b3e2-1bad-2652a58dbce9",
  "kind": "theorem",
  "lexical_name": "tangentPlanePoint_components",
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
  "slug": "tangentplanepoint-components--1975d2b0a8a3a3bd8645e2d2",
  "source": {
    "blob": "1a47523e0032386cf7bed56c38b10139ec9bd9b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 202,
    "path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1975d2b0a8a3a3bd8645e2d2faadd7f32ce0b0628081bade0efb401f51c18830",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce01d203-7bb8-b3e2-1bad-2652a58dbce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tangentPlanePoint_components (u v : ℝ) :
    let p := (tangentPlanePoint (⟨u, v⟩ : ℂ)).ofLp
    (p.1.re, p.2, p.1.im) = (2 * u, -1, 2 * v) := by
  ext <;> simp [tangentPlanePoint, planePoint, north]

/-- Every affine chart point lies in the plane perpendicular to `north` at
signed height `-1`, equivalently the plane tangent to the unit sphere at
`south`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RiemannSphere/Variant0d1c74756d7361c11c8213fde018499552b9ca416ca956fc55150b4bc1e49f9f.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a47523e0032386cf7bed56c38b10139ec9bd9b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
