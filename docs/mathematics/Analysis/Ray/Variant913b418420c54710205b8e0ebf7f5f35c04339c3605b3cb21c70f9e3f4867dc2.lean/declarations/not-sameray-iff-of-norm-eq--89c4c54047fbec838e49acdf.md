# not_sameRay_iff_of_norm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6e50d6c-184f-81fe-237a-f8e824ce6615",
  "kind": "theorem",
  "lexical_name": "not_sameRay_iff_of_norm_eq",
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
  "slug": "not-sameray-iff-of-norm-eq--89c4c54047fbec838e49acdf",
  "source": {
    "blob": "bc964dd3c476ec0a5e741554ed3fd7bba83d4374",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 114,
    "path": "GRWTSK/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89c4c54047fbec838e49acdf36331cb2111e682631e2f75290c66e95c986773b",
  "verification": {
    "reference": "docs/verification/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6e50d6c-184f-81fe-237a-f8e824ce6615`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_sameRay_iff_of_norm_eq (h : ‖x‖ = ‖y‖) : ¬SameRay ℝ x y ↔ x ≠ y :=
  (sameRay_iff_of_norm_eq h).not
#align not_same_ray_iff_of_norm_eq not_sameRay_iff_of_norm_eq

/-- If two points on the same ray have the same norm, then they are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Ray/Variant913b418420c54710205b8e0ebf7f5f35c04339c3605b3cb21c70f9e3f4867dc2.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc964dd3c476ec0a5e741554ed3fd7bba83d4374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
