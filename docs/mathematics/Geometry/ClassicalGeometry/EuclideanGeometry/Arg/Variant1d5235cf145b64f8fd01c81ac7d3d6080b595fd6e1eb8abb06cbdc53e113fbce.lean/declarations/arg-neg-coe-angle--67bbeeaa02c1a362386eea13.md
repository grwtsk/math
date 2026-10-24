# arg_neg_coe_angle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e35b6ce3ab150f4780e01b844751c642f0791e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 449,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d5235cf145b64f8fd01c81ac7d3d6080b595fd6e1eb8abb06cbdc53e113fbce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dda7799d-c869-ea0d-6985-8eb21e636c2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5244b75f-0977-90e8-8ad2-0b88c37644a9",
  "kind": "theorem",
  "lexical_name": "arg_neg_coe_angle",
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
  "slug": "arg-neg-coe-angle--67bbeeaa02c1a362386eea13",
  "source": {
    "blob": "3e35b6ce3ab150f4780e01b844751c642f0791e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 449,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant1d5235cf145b64f8fd01c81ac7d3d6080b595fd6e1eb8abb06cbdc53e113fbce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67bbeeaa02c1a362386eea1340a08d2bada2d4bb4c388ca17e1158cea1b2789d",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant1d5235cf145b64f8fd01c81ac7d3d6080b595fd6e1eb8abb06cbdc53e113fbce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5244b75f-0977-90e8-8ad2-0b88c37644a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arg_neg_coe_angle {x : ℂ} (hx : x ≠ 0) : (arg (-x) : Real.Angle) = arg x + π := by
  rcases lt_trichotomy x.im 0 with (hi | hi | hi)
  · rw [arg_neg_eq_arg_add_pi_of_im_neg hi, Real.Angle.coe_add]
  · rw [(ext rfl hi : x = x.re)]
    rcases lt_trichotomy x.re 0 with (hr | hr | hr)
    · rw [arg_ofReal_of_neg hr, ← ofReal_neg, arg_ofReal_of_nonneg (Left.neg_pos_iff.2 hr).le, ←
        Real.Angle.coe_add, ← two_mul, Real.Angle.coe_two_pi, Real.Angle.coe_zero]
    · exact False.elim (hx (ext hr hi))
    · rw [arg_ofReal_of_nonneg hr.le, ← ofReal_neg, arg_ofReal_of_neg (Left.neg_neg_iff.2 hr),
        Real.Angle.coe_zero, zero_add]
  · rw [arg_neg_eq_arg_sub_pi_of_im_pos hi, Real.Angle.coe_sub, Real.Angle.sub_coe_pi_eq_add_coe_pi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant1d5235cf145b64f8fd01c81ac7d3d6080b595fd6e1eb8abb06cbdc53e113fbce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant1d5235cf145b64f8fd01c81ac7d3d6080b595fd6e1eb8abb06cbdc53e113fbce.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e35b6ce3ab150f4780e01b844751c642f0791e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
