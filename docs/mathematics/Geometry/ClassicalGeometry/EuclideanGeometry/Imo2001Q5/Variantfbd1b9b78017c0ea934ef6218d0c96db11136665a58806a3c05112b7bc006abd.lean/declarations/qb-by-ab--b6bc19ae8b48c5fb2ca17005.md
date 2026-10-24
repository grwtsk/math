# QB_by_AB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8087690f990f80456a8f061b9f2b925641c5f318",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbd1b9b78017c0ea934ef6218d0c96db11136665a58806a3c05112b7bc006abd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14bf33b1-e592-2a90-8c65-52a5bc231929",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79f30ac6-5f2d-653f-5bae-798ea76ec8af",
  "kind": "lemma",
  "lexical_name": "QB_by_AB",
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
  "slug": "qb-by-ab--b6bc19ae8b48c5fb2ca17005",
  "source": {
    "blob": "8087690f990f80456a8f061b9f2b925641c5f318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 168,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2001Q5/Variantfbd1b9b78017c0ea934ef6218d0c96db11136665a58806a3c05112b7bc006abd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6bc19ae8b48c5fb2ca170056a1ea1a831781e0b936e4f915c8eefcfabd789c9",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2001Q5/Variantfbd1b9b78017c0ea934ef6218d0c96db11136665a58806a3c05112b7bc006abd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79f30ac6-5f2d-653f-5bae-798ea76ec8af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QB_by_AB :
    dist s.Q s.B = Real.sin (π / 3) / Real.sin (2 * π / 3 - s.x) * dist s.A s.B := by
  rw [div_mul_eq_mul_div₀]; apply eq_div_of_mul_eq
  · refine (Real.sin_pos_of_pos_of_lt_pi ?_ ?_).ne' <;> bx
  rw [← s.AQB_eq, mul_comm, sin_angle_mul_dist_eq_sin_angle_mul_dist,
    angle_eq_angle_of_angle_eq_pi _ s.AQC_eq, s.BAC_eq, dist_comm]

/-- The key trigonometric equation for `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2001Q5/Variantfbd1b9b78017c0ea934ef6218d0c96db11136665a58806a3c05112b7bc006abd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2001Q5/Variantfbd1b9b78017c0ea934ef6218d0c96db11136665a58806a3c05112b7bc006abd.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8087690f990f80456a8f061b9f2b925641c5f318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
