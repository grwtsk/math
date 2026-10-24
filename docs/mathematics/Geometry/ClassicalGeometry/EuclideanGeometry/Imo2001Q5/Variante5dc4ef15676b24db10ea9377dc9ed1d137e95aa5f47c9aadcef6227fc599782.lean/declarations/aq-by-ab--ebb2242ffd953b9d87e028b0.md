# AQ_by_AB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7cb4b1d-bd7c-0fe8-dba2-2e6ce776ce70",
  "kind": "lemma",
  "lexical_name": "AQ_by_AB",
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
  "slug": "aq-by-ab--ebb2242ffd953b9d87e028b0",
  "source": {
    "blob": "85b933db2f91589063ac25db2c95839acdfbd162",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 168,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2001Q5/Variante5dc4ef15676b24db10ea9377dc9ed1d137e95aa5f47c9aadcef6227fc599782.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebb2242ffd953b9d87e028b020aaf3a60c07e7790731d3f673be9b95de169ee7",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2001Q5/Variante5dc4ef15676b24db10ea9377dc9ed1d137e95aa5f47c9aadcef6227fc599782.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7cb4b1d-bd7c-0fe8-dba2-2e6ce776ce70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AQ_by_AB :
    dist s.A s.Q = Real.sin s.x / Real.sin (2 * π / 3 - s.x) * dist s.A s.B := by
  rw [div_mul_eq_mul_div₀]; apply eq_div_of_mul_eq
  · refine (Real.sin_pos_of_pos_of_lt_pi ?_ ?_).ne' <;> bx
  rw [← s.AQB_eq, mul_comm, ← sin_angle_mul_dist_eq_sin_angle_mul_dist, angle_comm, s.ABQ_eq,
    dist_comm]

/-- `dist Q B` in terms of `dist A B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2001Q5/Variante5dc4ef15676b24db10ea9377dc9ed1d137e95aa5f47c9aadcef6227fc599782.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2001Q5/Variante5dc4ef15676b24db10ea9377dc9ed1d137e95aa5f47c9aadcef6227fc599782.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85b933db2f91589063ac25db2c95839acdfbd162` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
