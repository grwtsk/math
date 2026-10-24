# mapExactFunctor_comp_mk₀_natTransApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "021718fecc7699c646cf9a76621ecc1e042edbd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2634b51-e53e-07c4-3a92-9871a0b903e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce0ee3d2-c548-4ccf-b87e-8e2e5af6b42a",
  "kind": "lemma",
  "lexical_name": "mapExactFunctor_comp_mk₀_natTransApp",
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
  "slug": "mapexactfunctor-comp-mk-nattransapp--e08b9decfec1e573c7fd1eda",
  "source": {
    "blob": "021718fecc7699c646cf9a76621ecc1e042edbd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 265,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e08b9decfec1e573c7fd1eda4cfcce9cb91adb1a914d49f565079701623c2fc8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce0ee3d2-c548-4ccf-b87e-8e2e5af6b42a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapExactFunctor_comp_mk₀_natTransApp
    [HasExt.{w} C] [HasExt.{w'} D] {X Y : C} {n : ℕ}
    (α : Ext X Y n) {F G : C ⥤ D} [F.Additive] [G.Additive]
    [PreservesFiniteLimits F] [PreservesFiniteColimits F]
    [PreservesFiniteLimits G] [PreservesFiniteColimits G] (τ : F ⟶ G) :
    (α.mapExactFunctor F).comp (Ext.mk₀ (τ.app Y)) (add_zero n) =
      ((Ext.mk₀ (τ.app X))).comp (α.mapExactFunctor G) (zero_add n) := by
  ext
  have := ShiftedHom.map_naturality α.hom (NatTrans.mapDerivedCategory τ)
  simp [← cancel_mono (((G.mapDerivedCategorySingleFunctor 0).hom.app Y)⟦(n : ℤ)⟧'),
    ShiftedHom.mk₀_comp, ShiftedHom.comp_mk₀,
    NatTrans.mapDerivedCategory_app_singleFunctor_obj,
    ← Functor.map_comp] at this
  simp [mapExactFunctor_hom, ShiftedHom.mk₀_comp, ShiftedHom.comp_mk₀,
    ← Functor.map_comp, this]

end Abelian.Ext

end Ext

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0c6ec132387d4e7f3cb74fceb42dc1dead4bc5d3298686994613d0730decd773.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `021718fecc7699c646cf9a76621ecc1e042edbd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
