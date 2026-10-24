# ι_mapBifunctorRightUnitor_hom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3491e4f57a7d640cd1fa6e9ddbf7c7ea4240cfc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46c8cac6-20f3-1d9b-3b13-b89775f1416e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:891760ab-f8de-62ed-d441-6f738bf427a5",
  "kind": "lemma",
  "lexical_name": "ι_mapBifunctorRightUnitor_hom_apply",
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
  "slug": "mapbifunctorrightunitor-hom-apply--1fb10055cf225112ef41bd79",
  "source": {
    "blob": "b3491e4f57a7d640cd1fa6e9ddbf7c7ea4240cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 220,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fb10055cf225112ef41bd7932e3f5114b9fcef592a54e51aa70397c07a7623c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:891760ab-f8de-62ed-d441-6f738bf427a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_mapBifunctorRightUnitor_hom_apply (j : J) :
    ιMapBifunctorMapObj F p X ((single₀ I).obj Y) j 0 j (hp j) ≫
        (mapBifunctorRightUnitor F Y e p hp X).hom j =
      (F.obj (X j)).map (singleObjApplyIso (0 : I) Y).hom ≫ e.hom.app (X j) := by
  dsimp [mapBifunctorRightUnitor]
  erw [CofanMapObjFun.ιMapObj_iso_inv]
  rw [mapBifunctorRightUnitorCofan_inj]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant47515459bcc492db5344bbb8e3556dd63a021713dba7d8a162dad039f161249d.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3491e4f57a7d640cd1fa6e9ddbf7c7ea4240cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
