# defect_eq_sin_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21b779ec-c36b-9ffb-efe7-a11e67c06006",
  "kind": "theorem",
  "lexical_name": "defect_eq_sin_sq",
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
  "slug": "defect-eq-sin-sq--ff4a176c61ba7adfa6c42a15",
  "source": {
    "blob": "c09a97e4c967d0cd23068ce402bab3cdda1fa8ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 121,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff4a176c61ba7adfa6c42a15d031a7ea38af6f411bc2aee04f5c9e47c657678e",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21b779ec-c36b-9ffb-efe7-a11e67c06006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem defect_eq_sin_sq (p : ℕ) [NeZero p] (n : ℕ) :
    defect p n = 4 * Real.sin (Real.pi * n / p) ^ 2 := by
  rw [defect_eq_cos]
  have ha : angle p n = 2 * (Real.pi * n / p) := by unfold angle; ring
  rw [ha, Real.cos_two_mul]
  nlinarith [Real.sin_sq_add_cos_sq (Real.pi * n / p)]

/-- The polynomial function obtained from the actual conjugate pair of roots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ModularBoundary/Variant7ba15359c9688b571dfc3663006fb60853bfdbfdff10ff8a0eb3845df8703a9c.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09a97e4c967d0cd23068ce402bab3cdda1fa8ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
