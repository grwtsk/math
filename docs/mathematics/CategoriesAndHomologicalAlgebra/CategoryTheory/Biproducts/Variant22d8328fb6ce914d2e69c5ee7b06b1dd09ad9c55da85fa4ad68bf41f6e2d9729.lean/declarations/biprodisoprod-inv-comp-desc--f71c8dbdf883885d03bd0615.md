# biprodIsoProd_inv_comp_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74526257698756420f65fd4df972d50cc34e1315",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22d8328fb6ce914d2e69c5ee7b06b1dd09ad9c55da85fa4ad68bf41f6e2d9729.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24af62d6-6a7b-f15e-82da-33746340925f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e12fdd4b-5ed0-3396-3d88-88f0d90a6df6",
  "kind": "lemma",
  "lexical_name": "biprodIsoProd_inv_comp_desc",
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
  "slug": "biprodisoprod-inv-comp-desc--f71c8dbdf883885d03bd0615",
  "source": {
    "blob": "74526257698756420f65fd4df972d50cc34e1315",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant22d8328fb6ce914d2e69c5ee7b06b1dd09ad9c55da85fa4ad68bf41f6e2d9729.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f71c8dbdf883885d03bd06154d600b51ff3c5de0202f689b5c1e102c1f971d52",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant22d8328fb6ce914d2e69c5ee7b06b1dd09ad9c55da85fa4ad68bf41f6e2d9729.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e12fdd4b-5ed0-3396-3d88-88f0d90a6df6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma biprodIsoProd_inv_comp_desc {G H K : AddCommGrpCat.{u}} (f : G ⟶ K) (g : H ⟶ K) :
    (biprodIsoProd G H).inv ≫ biprod.desc f g =
      ofHom (AddMonoidHom.fst G H) ≫ f + ofHom (AddMonoidHom.snd G H) ≫ g := by
  simp [biprod.desc_eq, ← biprodIsoProd_inv_comp_fst, ← biprodIsoProd_inv_comp_snd]

namespace HasLimit

variable {J : Type w} (f : J → AddCommGrpCat.{max w u})

set_option backward.defeqAttrib.useBackward true in
/-- The map from an arbitrary cone over an indexed family of abelian groups
to the Cartesian product of those groups.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant22d8328fb6ce914d2e69c5ee7b06b1dd09ad9c55da85fa4ad68bf41f6e2d9729.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant22d8328fb6ce914d2e69c5ee7b06b1dd09ad9c55da85fa4ad68bf41f6e2d9729.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74526257698756420f65fd4df972d50cc34e1315` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
