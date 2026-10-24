# ReflectsLimitsOfSize.reflectsFiniteLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52796cefc97b7b3d3382646ecdd6a4e2f887580e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1089a0b81f0f9c3ac0ae66c089db0b34c8d60f5fa23a077bd0754588e719cee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b81869a8-f756-e1e9-9df1-598d5cd85503",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:260c76a1-17fb-981f-22ac-4f88f3aee6cd",
  "kind": "lemma",
  "lexical_name": "ReflectsLimitsOfSize.reflectsFiniteLimits",
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
  "slug": "reflectslimitsofsize-reflectsfinitelimits--fbf2bcb59aaab10cac548b1f",
  "source": {
    "blob": "52796cefc97b7b3d3382646ecdd6a4e2f887580e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantb1089a0b81f0f9c3ac0ae66c089db0b34c8d60f5fa23a077bd0754588e719cee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbf2bcb59aaab10cac548b1f42f397b2c1bf80cf12b8bcade0ca6ef722c15038",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantb1089a0b81f0f9c3ac0ae66c089db0b34c8d60f5fa23a077bd0754588e719cee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:260c76a1-17fb-981f-22ac-4f88f3aee6cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ReflectsLimitsOfSize.reflectsFiniteLimits
    (F : C ⥤ D) [ReflectsLimitsOfSize.{w, w₂} F] : ReflectsFiniteLimits F where
  reflects J (sJ : SmallCategory J) fJ := by
    have := reflectsSmallestLimits_of_reflectsLimits F
    exact reflectsLimitsOfShape_of_equiv (FinCategory.equivAsType J) F

-- Added as a specialization of the dangerous instance above, for colimits indexed in Type 0.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantb1089a0b81f0f9c3ac0ae66c089db0b34c8d60f5fa23a077bd0754588e719cee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantb1089a0b81f0f9c3ac0ae66c089db0b34c8d60f5fa23a077bd0754588e719cee.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52796cefc97b7b3d3382646ecdd6a4e2f887580e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
