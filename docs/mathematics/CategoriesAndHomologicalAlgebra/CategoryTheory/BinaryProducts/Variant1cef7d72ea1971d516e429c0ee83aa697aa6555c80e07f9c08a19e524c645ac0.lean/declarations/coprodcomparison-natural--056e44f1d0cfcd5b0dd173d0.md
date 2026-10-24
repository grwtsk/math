# coprodComparison_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85a03d97b06acd4b187782cd2ef5193c4c5e88aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1368,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f33fa90a-c79c-d54d-b543-2622e7bdf561",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c64d0e5a-98d1-1fc8-8745-aa6ea54129e5",
  "kind": "theorem",
  "lexical_name": "coprodComparison_natural",
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
  "slug": "coprodcomparison-natural--056e44f1d0cfcd5b0dd173d0",
  "source": {
    "blob": "85a03d97b06acd4b187782cd2ef5193c4c5e88aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1379,
    "line": 1368,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:056e44f1d0cfcd5b0dd173d034da981f90e280db9c4c5ffc426460535599ea82",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c64d0e5a-98d1-1fc8-8745-aa6ea54129e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1368–1379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprodComparison_natural (f : A ⟶ A') (g : B ⟶ B') :
    coprodComparison F A B ≫ F.map (coprod.map f g) =
      coprod.map (F.map f) (F.map g) ≫ coprodComparison F A' B' := by
  rw [coprodComparison, coprodComparison, coprod.map_desc, ← F.map_comp, ← F.map_comp,
    coprod.desc_comp, ← F.map_comp, coprod.inl_map, ← F.map_comp, coprod.inr_map]
#align category_theory.limits.coprod_comparison_natural CategoryTheory.Limits.coprodComparison_natural
#align category_theory.limits.coprod_comparison_natural_assoc CategoryTheory.Limits.coprodComparison_natural_assoc

/-- The coproduct comparison morphism from `FA ⨿ F-` to `F(A ⨿ -)`, whose components are given by
`coprodComparison`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean#L1368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85a03d97b06acd4b187782cd2ef5193c4c5e88aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
