# singleObjHomologySelfIso_hom_singleObjHomologySelfIso_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00034d7b101f297760f53091e00b2ce4272b43f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab5198a30ca679dbd52847259f17541a7cbe21219fef2c24ca5428311bd0d441.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6477e4fa-500a-a38b-da9a-60b8d620f20a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff5f189d-e4ab-eec3-4e0d-6a4895a58506",
  "kind": "lemma",
  "lexical_name": "singleObjHomologySelfIso_hom_singleObjHomologySelfIso_inv",
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
  "slug": "singleobjhomologyselfiso-hom-singleobjhomologyselfiso-inv--b4a7adb8f44b2fec1baf625e",
  "source": {
    "blob": "00034d7b101f297760f53091e00b2ce4272b43f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variantab5198a30ca679dbd52847259f17541a7cbe21219fef2c24ca5428311bd0d441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4a7adb8f44b2fec1baf625efa8ac1e4fd45db45f1d119a76e5be9d7306d02f4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variantab5198a30ca679dbd52847259f17541a7cbe21219fef2c24ca5428311bd0d441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff5f189d-e4ab-eec3-4e0d-6a4895a58506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma singleObjHomologySelfIso_hom_singleObjHomologySelfIso_inv :
    (singleObjCyclesSelfIso c j A).hom ≫ (singleObjHomologySelfIso c j A).inv =
      ((single C c j).obj A).homologyπ j := by
  simp only [← cancel_mono (singleObjHomologySelfIso _ _ _).hom, assoc,
    Iso.inv_hom_id, comp_id, homologyπ_singleObjHomologySelfIso_hom]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variantab5198a30ca679dbd52847259f17541a7cbe21219fef2c24ca5428311bd0d441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variantab5198a30ca679dbd52847259f17541a7cbe21219fef2c24ca5428311bd0d441.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00034d7b101f297760f53091e00b2ce4272b43f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
