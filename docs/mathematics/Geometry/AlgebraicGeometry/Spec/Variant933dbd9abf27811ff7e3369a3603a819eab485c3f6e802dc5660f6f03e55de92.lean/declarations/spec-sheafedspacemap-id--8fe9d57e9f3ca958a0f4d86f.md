# Spec.sheafedSpaceMap_id

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
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27d0ceb3-7ffc-7e80-7be1-8abe22f9295d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74a22885-1686-9d43-6cd3-f94ccfe82de5",
  "kind": "theorem",
  "lexical_name": "Spec.sheafedSpaceMap_id",
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
  "slug": "spec-sheafedspacemap-id--8fe9d57e9f3ca958a0f4d86f",
  "source": {
    "blob": "a55694b93a90347505922ec61d438411b1348f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 115,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fe9d57e9f3ca958a0f4d86f23dcd25ff025e194abb0ea86e9393b1039061c88",
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

Occurrence: `result:74a22885-1686-9d43-6cd3-f94ccfe82de5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spec.sheafedSpaceMap_id {R : CommRingCat} :
    Spec.sheafedSpaceMap (𝟙 R) = 𝟙 (Spec.sheafedSpaceObj R) :=
  AlgebraicGeometry.PresheafedSpace.Hom.ext _ _ (Spec.topMap_id R) <| by
    ext U
    dsimp
    erw [NatTrans.comp_app, sheafedSpaceMap_c_app, PresheafedSpace.id_c_app, comap_id]; swap
    · rw [Spec.topMap_id, TopologicalSpace.Opens.map_id_obj_unop]
    simp [eqToHom_map]
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.Spec.SheafedSpace_map_id AlgebraicGeometry.Spec.sheafedSpaceMap_id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55694b93a90347505922ec61d438411b1348f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
