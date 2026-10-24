# unit_app_braiding_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8488a7fe6ba2957ffe3dd8eb3e867d3f654c7790",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/052c7589eaa9530e0a8d5a9d39091906a765d23b3be419fbf2c82b8c45f629b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25e391ba-b6bf-5a92-8ca1-60db3c7793c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b9757ab-be8f-1007-c316-1166f82059e5",
  "kind": "lemma",
  "lexical_name": "unit_app_braiding_inv_app",
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
  "slug": "unit-app-braiding-inv-app--6032b8e1ed1107f6b84bb580",
  "source": {
    "blob": "8488a7fe6ba2957ffe3dd8eb3e867d3f654c7790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant052c7589eaa9530e0a8d5a9d39091906a765d23b3be419fbf2c82b8c45f629b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6032b8e1ed1107f6b84bb58001b2c583cebaded3e0c63bfbe489c22216608443",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant052c7589eaa9530e0a8d5a9d39091906a765d23b3be419fbf2c82b8c45f629b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b9757ab-be8f-1007-c316-1166f82059e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma unit_app_braiding_inv_app (x y : C) :
    (unit G F).app (x, y) ≫ (braiding F G).inv.app (x ⊗ y) =
    (β_ _ _).inv ≫ (unit F G).app (_, _) ≫ (F ⊛ G).map (β_ _ _).inv := by
  change
    (unit G F).app (x, y) ≫ (braiding F G).inv.app ((tensor C).obj (x, y)) = _
  simp [braiding, braidingHomCorepresenting, -tensor_obj]

end

variable {F G}

set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant052c7589eaa9530e0a8d5a9d39091906a765d23b3be419fbf2c82b8c45f629b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant052c7589eaa9530e0a8d5a9d39091906a765d23b3be419fbf2c82b8c45f629b2.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8488a7fe6ba2957ffe3dd8eb3e867d3f654c7790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
