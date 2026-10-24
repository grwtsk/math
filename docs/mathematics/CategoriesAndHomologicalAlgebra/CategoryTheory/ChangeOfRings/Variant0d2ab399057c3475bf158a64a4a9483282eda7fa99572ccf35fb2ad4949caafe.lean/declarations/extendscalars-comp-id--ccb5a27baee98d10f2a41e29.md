# extendScalars_comp_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:019ffeca-a91d-bc33-c0d7-83752a2a755b",
  "kind": "lemma",
  "lexical_name": "extendScalars_comp_id",
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
  "slug": "extendscalars-comp-id--ccb5a27baee98d10f2a41e29",
  "source": {
    "blob": "e8bef8c81dcc7ccc6a83544e71dff8c6c491851a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1073,
    "line": 1060,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0d2ab399057c3475bf158a64a4a9483282eda7fa99572ccf35fb2ad4949caafe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccb5a27baee98d10f2a41e29e53dbac8cd3007c24a0307cf0427b4d6ca0538bf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0d2ab399057c3475bf158a64a4a9483282eda7fa99572ccf35fb2ad4949caafe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:019ffeca-a91d-bc33-c0d7-83752a2a755b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1060–1073.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extendScalars_comp_id :
    (extendScalarsComp f₁₂ (RingHom.id R₂)).hom ≫ Functor.whiskerLeft _ (extendScalarsId R₂).hom ≫
      (Functor.rightUnitor _).hom = 𝟙 _ := by
  ext M m
  dsimp
  erw [extendScalarsComp_hom_app_one_tmul f₁₂ (RingHom.id R₂) M m,
    extendScalarsId_hom_app_one_tmul]
  rfl

end

end ModuleCat

end ModuleCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0d2ab399057c3475bf158a64a4a9483282eda7fa99572ccf35fb2ad4949caafe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant0d2ab399057c3475bf158a64a4a9483282eda7fa99572ccf35fb2ad4949caafe.lean#L1060).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8bef8c81dcc7ccc6a83544e71dff8c6c491851a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
