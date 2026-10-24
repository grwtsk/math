# Wbtw.sameRay_vsub_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82b36e529321fa6f8eb5546f6efe33fca1fd64a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 573,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfa822c7-3fe3-d337-5615-e2831eed59d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7611b177-8311-bf36-6e06-a53247701bbb",
  "kind": "theorem",
  "lexical_name": "Wbtw.sameRay_vsub_right",
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
  "slug": "wbtw-sameray-vsub-right--bcd53eacce36a20e32e61907",
  "source": {
    "blob": "82b36e529321fa6f8eb5546f6efe33fca1fd64a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 573,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcd53eacce36a20e32e6190791816ce006e6b1f37f0f60d2d959144fe93b2eb4",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7611b177-8311-bf36-6e06-a53247701bbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Wbtw.sameRay_vsub_right {x y z : P} (h : Wbtw R x y z) : SameRay R (z -ᵥ x) (z -ᵥ y) := by
  rcases h with ⟨t, ⟨_, ht1⟩, rfl⟩
  simpa [lineMap_apply, vsub_vadd_eq_vsub_sub, sub_smul] using
    SameRay.sameRay_nonneg_smul_right (z -ᵥ x) (sub_nonneg.2 ht1)
#align wbtw.same_ray_vsub_right Wbtw.sameRay_vsub_right

end StrictOrderedCommRing

section LinearOrderedRing

variable [LinearOrderedRing R] [AddCommGroup V] [Module R V] [AddTorsor V P]

variable {R}

/-- Suppose lines from two vertices of a triangle to interior points of the opposite side meet at
`p`. Then `p` lies in the interior of the first (and by symmetry the other) segment from a
vertex to the point on the opposite side. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b36e529321fa6f8eb5546f6efe33fca1fd64a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
