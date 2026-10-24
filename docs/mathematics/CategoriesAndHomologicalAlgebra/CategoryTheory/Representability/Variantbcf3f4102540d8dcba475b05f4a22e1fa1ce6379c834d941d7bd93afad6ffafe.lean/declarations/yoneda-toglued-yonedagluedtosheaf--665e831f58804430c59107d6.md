# yoneda_toGlued_yonedaGluedToSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dc41f4382fd00c7238f48a537644bb88b925bd2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a4f15fd-e7e5-888f-9d59-b169f60ff965",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e4d6b73-0057-ba9f-21a0-5b32979d05d8",
  "kind": "lemma",
  "lexical_name": "yoneda_toGlued_yonedaGluedToSheaf",
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
  "slug": "yoneda-toglued-yonedagluedtosheaf--665e831f58804430c59107d6",
  "source": {
    "blob": "6dc41f4382fd00c7238f48a537644bb88b925bd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:665e831f58804430c59107d6d0396720a5e3fc23f3375a7f24d51e409d705806",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e4d6b73-0057-ba9f-21a0-5b32979d05d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma yoneda_toGlued_yonedaGluedToSheaf (i : ι) :
    yoneda.map (toGlued hf i) ≫ (yonedaGluedToSheaf hf).hom = f i := by
  apply yonedaEquiv.injective
  rw [yonedaGluedToSheaf, yonedaEquiv_apply, yonedaEquiv_apply,
    NatTrans.comp_app_apply, yoneda_map_app]
  simpa using! GlueData.sheafValGluedMk_val _ _ _ _

set_option backward.defeqAttrib.useBackward true in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dc41f4382fd00c7238f48a537644bb88b925bd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
