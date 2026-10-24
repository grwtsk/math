# Functor.preservesMonomorphisms_of_adjunction_of_preservesInjectiveObjects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8683b7ceb10c600abe8882c4d62d35055ddaf63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8628791d-1cd3-9a54-f0c5-5407879f58ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc5b0943-8d1c-e258-08fe-c61eff2fb813",
  "kind": "theorem",
  "lexical_name": "Functor.preservesMonomorphisms_of_adjunction_of_preservesInjectiveObjects",
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
  "slug": "functor-preservesmonomorphisms-of-adjunction-of-preservesinjectiveobject--25082d088a218aeb57b028ef",
  "source": {
    "blob": "c8683b7ceb10c600abe8882c4d62d35055ddaf63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25082d088a218aeb57b028efae532adb368b6440127517b8499c0ee0b7b0b3c8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc5b0943-8d1c-e258-08fe-c61eff2fb813`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.preservesMonomorphisms_of_adjunction_of_preservesInjectiveObjects
    [EnoughInjectives D] {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) [G.PreservesInjectiveObjects] :
    F.PreservesMonomorphisms where
  preserves {X Y} f _ := by
    suffices ∃ h, F.map f ≫ h = Injective.ι (F.obj X) from mono_of_mono_fac this.choose_spec
    have : Injective (G.obj (Injective.under (F.obj X))) := G.injective_obj _
    exact ⟨F.map (Injective.factorThru (adj.unit.app X ≫ G.map (Injective.ι _)) f) ≫
      adj.counit.app (Injective.under (F.obj X)), by simp [← Functor.map_comp_assoc]⟩

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8683b7ceb10c600abe8882c4d62d35055ddaf63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
