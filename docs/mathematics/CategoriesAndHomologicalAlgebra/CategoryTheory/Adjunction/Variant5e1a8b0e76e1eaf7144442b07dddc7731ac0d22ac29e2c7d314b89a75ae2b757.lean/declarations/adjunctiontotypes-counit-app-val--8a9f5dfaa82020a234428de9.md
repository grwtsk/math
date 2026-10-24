# adjunctionToTypes_counit_app_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db6baaf90d080e99c82890c3a64ff48bd5f2a8d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36c54ace-b68e-8415-f409-a36b44354ae2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2deb78d-fb15-1a27-75d0-4e464b87886d",
  "kind": "theorem",
  "lexical_name": "adjunctionToTypes_counit_app_val",
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
  "slug": "adjunctiontotypes-counit-app-val--8a9f5dfaa82020a234428de9",
  "source": {
    "blob": "db6baaf90d080e99c82890c3a64ff48bd5f2a8d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a9f5dfaa82020a234428de91242d4c2cd4358bbb91dab57d48a358e57e366a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2deb78d-fb15-1a27-75d0-4e464b87886d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjunctionToTypes_counit_app_val {G : Type max v u ⥤ D} (adj : G ⊣ forget D)
    (X : Sheaf J D) :
    ((adjunctionToTypes J adj).counit.app X).val =
      J.sheafifyLift ((Functor.associator _ _ _).hom ≫ (adj.whiskerRight _).counit.app _) X.2 := by
  apply J.sheafifyLift_unique
  dsimp only [adjunctionToTypes, Adjunction.comp, NatTrans.comp_app,
    instCategorySheaf_comp_val, instCategorySheaf_id_val]
  rw [adjunction_counit_app_val]
  erw [Category.id_comp, J.sheafifyMap_sheafifyLift, J.toSheafify_sheafifyLift]
  ext
  dsimp [sheafEquivSheafOfTypes, Equivalence.symm, Equivalence.toAdjunction,
    NatIso.ofComponents, Adjunction.whiskerRight, Adjunction.mkOfUnitCounit]
  simp

set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.adjunction_to_types_counit_app_val CategoryTheory.Sheaf.adjunctionToTypes_counit_app_val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db6baaf90d080e99c82890c3a64ff48bd5f2a8d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
