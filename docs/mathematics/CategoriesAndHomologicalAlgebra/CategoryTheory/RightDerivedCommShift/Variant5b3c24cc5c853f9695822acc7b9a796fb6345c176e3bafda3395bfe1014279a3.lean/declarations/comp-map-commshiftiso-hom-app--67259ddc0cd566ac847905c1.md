# comp_map_commShiftIso_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a2cedaee376c6034d2eaec2a22868b278041d22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b3c24cc5c853f9695822acc7b9a796fb6345c176e3bafda3395bfe1014279a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29ca9def-5028-ceb8-c2a4-a48b872fbe7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f1cf7ce-0bf9-69e5-795d-0282e350941e",
  "kind": "lemma",
  "lexical_name": "comp_map_commShiftIso_hom_app",
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
  "slug": "comp-map-commshiftiso-hom-app--67259ddc0cd566ac847905c1",
  "source": {
    "blob": "5a2cedaee376c6034d2eaec2a22868b278041d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variant5b3c24cc5c853f9695822acc7b9a796fb6345c176e3bafda3395bfe1014279a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67259ddc0cd566ac847905c1e60e053be708a77e7560d531b7f141c458a201bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variant5b3c24cc5c853f9695822acc7b9a796fb6345c176e3bafda3395bfe1014279a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f1cf7ce-0bf9-69e5-795d-0282e350941e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_map_commShiftIso_hom_app (a : A) (X : C) :
    letI := commShift RF α W A
    dsimp% α.app (X⟦a⟧) ≫ RF.map ((L.commShiftIso a).hom.app X) ≫
      (RF.commShiftIso a).hom.app (L.obj X) =
    (F.commShiftIso a).hom.app X ≫ (α.app X)⟦a⟧' := by
  simpa using! (rightDerivedNatTrans_app _ _ (precomposeShiftNatTrans RF α a)
      (postcomposeShiftNatTrans RF α _) W (F.commShiftIso _).hom X)

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] commShiftIso_comp_hom_app in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variant5b3c24cc5c853f9695822acc7b9a796fb6345c176e3bafda3395bfe1014279a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerivedCommShift/Variant5b3c24cc5c853f9695822acc7b9a796fb6345c176e3bafda3395bfe1014279a3.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a2cedaee376c6034d2eaec2a22868b278041d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
