# homOfEq_map_homOfEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a425aafc567a31cd91731b19394ee0e071dfca7d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53987148-f819-89f3-2119-4a4bfa782cc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63029d8e-646e-4723-59fa-2098cc8089ab",
  "kind": "lemma",
  "lexical_name": "homOfEq_map_homOfEq",
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
  "slug": "homofeq-map-homofeq--559ff83aa1929d77150b9c61",
  "source": {
    "blob": "a425aafc567a31cd91731b19394ee0e071dfca7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variante1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:559ff83aa1929d77150b9c612ef6b13a9bbd9aeee9ed33eeefe18a4f8c482d86",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variante1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63029d8e-646e-4723-59fa-2098cc8089ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homOfEq_map_homOfEq {X Y : V} (f : X ⟶ Y) {X' Y' : V} (hX : X = X') (hY : Y = Y')
    {X'' Y'' : W} (hX' : e X' = X'') (hY' : e Y' = Y'') :
    Quiver.homOfEq (he _ _ (Quiver.homOfEq f hX hY)) hX' hY' =
      Quiver.homOfEq (he _ _ f) (by rw [hX, hX']) (by rw [hY, hY']) := by
  subst hX hY hX' hY'
  rfl

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Compatible equivalences of types and hom-types induce an isomorphism of quivers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variante1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variante1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a425aafc567a31cd91731b19394ee0e071dfca7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
