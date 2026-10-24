# over_forget_compatiblePreserving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0714d53204dde8cf607c1e876676e065e2ce55e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f960a4f-b9a2-f38d-7291-2616397f8184",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a72334e4-ab82-4839-90f1-24b55b43b799",
  "kind": "lemma",
  "lexical_name": "over_forget_compatiblePreserving",
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
  "slug": "over-forget-compatiblepreserving--17896ac665eda950489b7320",
  "source": {
    "blob": "0714d53204dde8cf607c1e876676e065e2ce55e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 147,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17896ac665eda950489b7320ce45b3466d63c689adde0582090356f66a467955",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a72334e4-ab82-4839-90f1-24b55b43b799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma over_forget_compatiblePreserving (X : C) :
    CompatiblePreserving J (Over.forget X) where
  compatible {_ Z _ _ hx Y₁ Y₂ W f₁ f₂ g₁ g₂ hg₁ hg₂ h} := by
    let W' : Over X := Over.mk (f₁ ≫ Y₁.hom)
    let g₁' : W' ⟶ Y₁ := Over.homMk f₁
    let g₂' : W' ⟶ Y₂ := Over.homMk f₂ (by simpa using h.symm =≫ Z.hom)
    exact hx g₁' g₂' hg₁ hg₂ (by ext; exact h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0714d53204dde8cf607c1e876676e065e2ce55e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
