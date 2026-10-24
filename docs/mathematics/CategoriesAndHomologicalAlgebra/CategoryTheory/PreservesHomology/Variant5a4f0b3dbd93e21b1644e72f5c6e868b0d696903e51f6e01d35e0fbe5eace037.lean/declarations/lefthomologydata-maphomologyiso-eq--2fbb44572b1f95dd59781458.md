# LeftHomologyData.mapHomologyIso_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "088b1d6175c03611a2b0d71f743fa506b25ae7d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 490,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65ea3e4e-1ed9-6e9c-3598-c561b549330d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39164306-99d4-bdae-6ba0-5d641f2f5eaa",
  "kind": "lemma",
  "lexical_name": "LeftHomologyData.mapHomologyIso_eq",
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
  "slug": "lefthomologydata-maphomologyiso-eq--2fbb44572b1f95dd59781458",
  "source": {
    "blob": "088b1d6175c03611a2b0d71f743fa506b25ae7d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 490,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fbb44572b1f95dd59781458913600e36b8021522a132bf0ee8a82d4563cc036",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39164306-99d4-bdae-6ba0-5d641f2f5eaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LeftHomologyData.mapHomologyIso_eq [S.HasHomology]
    [(S.map F).HasHomology] [F.PreservesLeftHomologyOf S] :
    S.mapHomologyIso F = (hl.map F).homologyIso ≪≫ F.mapIso hl.homologyIso.symm := by
  ext
  dsimp only [mapHomologyIso, homologyIso, ShortComplex.leftHomologyIso,
    leftHomologyMapIso', leftHomologyIso, Functor.mapIso,
    Iso.symm, Iso.trans, Iso.refl]
  simp only [F.map_comp, map_leftHomologyMap', ← leftHomologyMap'_comp, comp_id,
    Functor.map_id, Functor.mapShortComplex_obj]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant5a4f0b3dbd93e21b1644e72f5c6e868b0d696903e51f6e01d35e0fbe5eace037.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `088b1d6175c03611a2b0d71f743fa506b25ae7d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
