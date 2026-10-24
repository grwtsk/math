# ClosedUnderColimitsOfShape.colimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3cc6f1f442844c7415f743cedad6dfdf4789de2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0701df0f-f68f-0ff2-50b8-55b2e534051a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1a4c904-7473-c6cd-8fc2-c3f38a5137d3",
  "kind": "lemma",
  "lexical_name": "ClosedUnderColimitsOfShape.colimit",
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
  "slug": "closedundercolimitsofshape-colimit--1340fc0e9fa8f11f321fc932",
  "source": {
    "blob": "3cc6f1f442844c7415f743cedad6dfdf4789de2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1340fc0e9fa8f11f321fc932ed17fb74cf7a564b88cc633341f4b71d07522b2a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1a4c904-7473-c6cd-8fc2-c3f38a5137d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma ClosedUnderColimitsOfShape.colimit (h : ClosedUnderColimitsOfShape J P) {F : J ⥤ C}
    [HasColimit F] : (∀ j, P (F.obj j)) → P (colimit F) :=
  h (colimit.isColimit _)

end

section

variable {J : Type w} [Category.{w'} J] {C : Type u} [Category.{v} C] {P : ObjectProperty C}

/-- If a `J`-shaped diagram in `FullSubcategory P` has a limit cone in `C` whose cone point lives
    in the full subcategory, then this defines a limit in the full subcategory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullSubcategory/Variantf1923a12c2e2c81a26dc37edfceee6372fe53a5d47131a39693b0d11bf0d6ce0.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cc6f1f442844c7415f743cedad6dfdf4789de2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
