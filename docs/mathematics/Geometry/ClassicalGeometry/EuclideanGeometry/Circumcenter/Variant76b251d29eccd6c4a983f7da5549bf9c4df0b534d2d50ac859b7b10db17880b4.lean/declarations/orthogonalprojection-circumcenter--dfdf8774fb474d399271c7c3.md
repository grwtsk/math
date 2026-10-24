# orthogonalProjection_circumcenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39d74294-fa0a-38bd-f43c-b3b0f67260aa",
  "kind": "theorem",
  "lexical_name": "orthogonalProjection_circumcenter",
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
  "slug": "orthogonalprojection-circumcenter--dfdf8774fb474d399271c7c3",
  "source": {
    "blob": "a90181c1c9463a6040d112e20d5d79aff5530ae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 412,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfdf8774fb474d399271c7c3141938244f281dba816efac44fa2a84a34948d47",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39d74294-fa0a-38bd-f43c-b3b0f67260aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalProjection_circumcenter {n : ℕ} (s : Simplex ℝ P n) {fs : Finset (Fin (n + 1))}
    {m : ℕ} (h : #fs = m + 1) :
    ↑((s.face h).orthogonalProjectionSpan s.circumcenter) = (s.face h).circumcenter :=
  haveI hr : ∃ r, ∀ i, dist ((s.face h).points i) s.circumcenter = r := by
    use s.circumradius
    simp [face_points]
  orthogonalProjection_eq_circumcenter_of_exists_dist_eq _ hr

/-- Two simplices with the same points have the same circumcenter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90181c1c9463a6040d112e20d5d79aff5530ae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
