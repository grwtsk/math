# ν_comp_unitDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1063ce01-03f9-5dbb-5461-7de1f12b5ffc",
  "kind": "lemma",
  "lexical_name": "ν_comp_unitDesc",
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
  "slug": "comp-unitdesc--67102c1dc6dfbd3f5101be68",
  "source": {
    "blob": "69e87fc3e8723fdb368f9183aed8407b03466ed7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 248,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantf6c91763526d89e60fd7346157ca64d49c38b0eeaec8fd5b121bc4aae90aa627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67102c1dc6dfbd3f5101be68cb99620493e4ffb9d00da45ddcca0a6d907dec01",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantf6c91763526d89e60fd7346157ca64d49c38b0eeaec8fd5b121bc4aae90aa627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1063ce01-03f9-5dbb-5461-7de1f12b5ffc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ν_comp_unitDesc {F : C ⊛⥤ V} (φ : 𝟙_ V ⟶ F.functor.obj (𝟙_ C)) :
    ν C V ≫ (unitDesc φ).natTrans.app (𝟙_ C) = φ :=
  Functor.descOfIsLeftKanExtension_fac_app (𝟙_ (C ⊛⥤ V)).functor (νNatTrans C V)
    F.functor { app _ := φ } default

end DayFunctor

end

end CategoryTheory.MonoidalCategory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantf6c91763526d89e60fd7346157ca64d49c38b0eeaec8fd5b121bc4aae90aa627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantf6c91763526d89e60fd7346157ca64d49c38b0eeaec8fd5b121bc4aae90aa627.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e87fc3e8723fdb368f9183aed8407b03466ed7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
