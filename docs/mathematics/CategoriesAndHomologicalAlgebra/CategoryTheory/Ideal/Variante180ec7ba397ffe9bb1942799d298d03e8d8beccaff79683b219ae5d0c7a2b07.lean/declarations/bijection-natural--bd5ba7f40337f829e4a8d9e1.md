# bijection_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1db69e0342437a91c9d70a5546b42ec7295aa863",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d10b2055-af69-7d74-2869-efa79fa337b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d081a5f9-79e2-5233-edf6-626fa5ba1336",
  "kind": "theorem",
  "lexical_name": "bijection_natural",
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
  "slug": "bijection-natural--bd5ba7f40337f829e4a8d9e1",
  "source": {
    "blob": "1db69e0342437a91c9d70a5546b42ec7295aa863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 293,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd5ba7f40337f829e4a8d9e171e9c8775fe5d26f3cd65ca0c9e1141ebb87f33f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d081a5f9-79e2-5233-edf6-626fa5ba1336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bijection_natural (A B : C) (X X' : D) (f : (reflector i).obj (A ⊗ B) ⟶ X) (g : X ⟶ X') :
    bijection i _ _ _ (f ≫ g) = bijection i _ _ _ f ≫ g := by
  dsimp [bijection]
  -- Porting note: added
  erw [homEquiv_symm_apply_eq, homEquiv_symm_apply_eq, homEquiv_apply_eq, homEquiv_apply_eq,
    homEquiv_symm_apply_eq, homEquiv_symm_apply_eq, homEquiv_apply_eq, homEquiv_apply_eq]
  apply i.map_injective
  rw [Functor.FullyFaithful.map_preimage, i.map_comp,
    Adjunction.homEquiv_unit, Adjunction.homEquiv_unit]
  simp only [Category.comp_id, Functor.map_comp, Functor.FullyFaithful.map_preimage, Category.assoc]
  rw [← Category.assoc, ← Category.assoc, curry_natural_right _ (i.map g),
    unitCompPartialBijective_natural, uncurry_natural_right, ← Category.assoc, curry_natural_right,
    unitCompPartialBijective_natural, uncurry_natural_right, Category.assoc]

/--
The bijection allows us to show that `prodComparison L A B` is an isomorphism, where the inverse
is the forward map of the identity morphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ideal/Variante180ec7ba397ffe9bb1942799d298d03e8d8beccaff79683b219ae5d0c7a2b07.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db69e0342437a91c9d70a5546b42ec7295aa863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
