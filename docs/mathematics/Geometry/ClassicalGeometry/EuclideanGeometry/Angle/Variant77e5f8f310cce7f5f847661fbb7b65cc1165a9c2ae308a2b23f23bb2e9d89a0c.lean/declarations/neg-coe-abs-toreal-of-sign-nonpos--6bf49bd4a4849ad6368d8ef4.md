# neg_coe_abs_toReal_of_sign_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2ccd4bd-1bf0-0d63-5efd-db5eb3796224",
  "kind": "theorem",
  "lexical_name": "neg_coe_abs_toReal_of_sign_nonpos",
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
  "slug": "neg-coe-abs-toreal-of-sign-nonpos--6bf49bd4a4849ad6368d8ef4",
  "source": {
    "blob": "358d8e29b4a6099451b07372ffb0d5827c3a2e6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 785,
    "line": 779,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant77e5f8f310cce7f5f847661fbb7b65cc1165a9c2ae308a2b23f23bb2e9d89a0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bf49bd4a4849ad6368d8ef4771dd6d874f849e133bcf59ec7c0962885227fe2",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant77e5f8f310cce7f5f847661fbb7b65cc1165a9c2ae308a2b23f23bb2e9d89a0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2ccd4bd-1bf0-0d63-5efd-db5eb3796224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 779–785.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_coe_abs_toReal_of_sign_nonpos {θ : Angle} (h : θ.sign ≤ 0) : -↑|θ.toReal| = θ := by
  rw [SignType.nonpos_iff] at h
  rcases h with (h | h)
  · rw [abs_of_neg (toReal_neg_iff_sign_neg.2 h), coe_neg, neg_neg, coe_toReal]
  · rw [sign_eq_zero_iff] at h
    rcases h with (rfl | rfl) <;> simp [abs_of_pos Real.pi_pos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant77e5f8f310cce7f5f847661fbb7b65cc1165a9c2ae308a2b23f23bb2e9d89a0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant77e5f8f310cce7f5f847661fbb7b65cc1165a9c2ae308a2b23f23bb2e9d89a0c.lean#L779).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `358d8e29b4a6099451b07372ffb0d5827c3a2e6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
