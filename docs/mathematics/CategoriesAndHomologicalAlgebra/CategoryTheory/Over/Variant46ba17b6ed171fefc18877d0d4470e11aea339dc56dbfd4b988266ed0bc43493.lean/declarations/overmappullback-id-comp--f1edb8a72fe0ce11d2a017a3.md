# overMapPullback_id_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7faa81685bdad49dfefe6e4d7428cc4d5aeeb54c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 465,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46ba17b6ed171fefc18877d0d4470e11aea339dc56dbfd4b988266ed0bc43493.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27813030-0f04-63f8-9624-0b55713aef69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02621d5e-b704-f399-0286-4ba72a2fafdd",
  "kind": "lemma",
  "lexical_name": "overMapPullback_id_comp",
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
  "slug": "overmappullback-id-comp--f1edb8a72fe0ce11d2a017a3",
  "source": {
    "blob": "7faa81685bdad49dfefe6e4d7428cc4d5aeeb54c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 465,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant46ba17b6ed171fefc18877d0d4470e11aea339dc56dbfd4b988266ed0bc43493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1edb8a72fe0ce11d2a017a31468b5de8e7788fc50b557e1496892a8995e9d5a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant46ba17b6ed171fefc18877d0d4470e11aea339dc56dbfd4b988266ed0bc43493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02621d5e-b704-f399-0286-4ba72a2fafdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma overMapPullback_id_comp {X Y : C} (f : X ⟶ Y) :
    (J.overMapPullbackComp A (𝟙 X) f).inv ≫
      Functor.whiskerLeft _ (J.overMapPullbackId A X).hom ≫ (Functor.rightUnitor _).hom =
    (overMapPullbackCongr _ _ (by simp)).hom := by
  ext
  dsimp
  simp only [overMapPullbackComp_inv_app_hom_app, overMapPullbackId_hom_app_hom_app,
    Functor.sheafPushforwardContinuous_obj_obj_map, Quiver.Hom.unop_op,
    comp_id, ← Functor.map_comp, ← op_comp]
  congr
  cat_disch

set_option backward.defeqAttrib.useBackward true in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant46ba17b6ed171fefc18877d0d4470e11aea339dc56dbfd4b988266ed0bc43493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant46ba17b6ed171fefc18877d0d4470e11aea339dc56dbfd4b988266ed0bc43493.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7faa81685bdad49dfefe6e4d7428cc4d5aeeb54c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
