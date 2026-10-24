# map_comp_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78c86a3a75e9afc92a80a4767580403f3daf2827",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8971e345-bbd0-4a95-13bc-be99e9348ac8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17e5992d-fd1b-f9cb-ea60-1538113e6d9a",
  "kind": "theorem",
  "lexical_name": "map_comp_eq",
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
  "slug": "map-comp-eq--7e5f69083191133bcd0ee42e",
  "source": {
    "blob": "78c86a3a75e9afc92a80a4767580403f3daf2827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e5f69083191133bcd0ee42ecd083928b3b145ac60553ed5df29734a37ee31d7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17e5992d-fd1b-f9cb-ea60-1538113e6d9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_comp_eq (F : E ⥤ D) (G : D ⥤ C) : map (F ⋙ G) = map F ⋙ map G :=
  Functor.eq_of_iso skeletal <|
    NatIso.ofComponents fun X => Quotient.recOnSubsingleton X fun x => Iso.refl _
#align category_theory.thin_skeleton.map_comp_eq CategoryTheory.ThinSkeleton.map_comp_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78c86a3a75e9afc92a80a4767580403f3daf2827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
