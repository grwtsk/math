# Spec.toPresheafedSpace_obj_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a55694b93a90347505922ec61d438411b1348f43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89f4df08-c1b2-3edd-06cf-748ad6cdf498",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8a00a09-76da-b071-093f-a620a491078b",
  "kind": "theorem",
  "lexical_name": "Spec.toPresheafedSpace_obj_op",
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
  "slug": "spec-topresheafedspace-obj-op--fd040b9cb377784dfa6be1a5",
  "source": {
    "blob": "a55694b93a90347505922ec61d438411b1348f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 163,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd040b9cb377784dfa6be1a5b6561df675f590796ae01a71530502198732d981",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8a00a09-76da-b071-093f-a620a491078b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spec.toPresheafedSpace_obj_op (R : CommRingCat) :
    Spec.toPresheafedSpace.obj (op R) = (Spec.sheafedSpaceObj R).toPresheafedSpace :=
  rfl
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.Spec.to_PresheafedSpace_obj_op AlgebraicGeometry.Spec.toPresheafedSpace_obj_op

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55694b93a90347505922ec61d438411b1348f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
