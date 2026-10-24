# associator_hom_app_app_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af5c5047-b929-38dc-5c14-da969140f7a6",
  "kind": "lemma",
  "lexical_name": "associator_hom_app_app_app",
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
  "slug": "associator-hom-app-app-app--8638458f3f0b76f81f4a91d6",
  "source": {
    "blob": "7146d24b64d3e57af37c1ee4536c653fa1ceef10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97998caee47399ec736b670941ff8f9bc58a42e6d5c4581ca4362eb6a71d3c65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8638458f3f0b76f81f4a91d6672022c0e0d20a05d10206e968b60e9a1115e292",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97998caee47399ec736b670941ff8f9bc58a42e6d5c4581ca4362eb6a71d3c65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af5c5047-b929-38dc-5c14-da969140f7a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma associator_hom_app_app_app (X₁ : C₁) (X₂ : C₂) (X₃ : C₃) :
    (((associator L₁ L₂ L₃ L₁₂ L₂₃ L W₁ W₂ W₃ W₁₂ W₂₃ iso F₁₂' G' F' G₂₃').hom.app (L₁.obj X₁)).app
      (L₂.obj X₂)).app (L₃.obj X₃) =
        (G'.map (((Lifting₂.iso L₁ L₂ W₁ W₂
          (F₁₂ ⋙ (whiskeringRight C₂ C₁₂ D₁₂).obj L₁₂) F₁₂').hom.app X₁).app X₂)).app (L₃.obj X₃) ≫
          ((Lifting₂.iso L₁₂ L₃ W₁₂ W₃ (G ⋙ (whiskeringRight C₃ C D).obj L) G').hom.app
              ((F₁₂.obj X₁).obj X₂)).app X₃ ≫
          L.map (((iso.hom.app X₁).app X₂).app X₃) ≫
          ((Lifting₂.iso L₁ L₂₃ W₁ W₂₃
            (F ⋙ (whiskeringRight _ _ _).obj L) F').inv.app X₁).app ((G₂₃.obj X₂).obj X₃) ≫
          (F'.obj (L₁.obj X₁)).map
            (((Lifting₂.iso L₂ L₃ W₂ W₃
              (G₂₃ ⋙ (whiskeringRight _ _ _).obj L₂₃) G₂₃').inv.app X₂).app X₃) := by
  dsimp [associator]
  rw [lift₃NatTrans_app_app_app]
  dsimp [Lifting₃.iso, Lifting₃.bifunctorComp₁₂, Lifting₃.bifunctorComp₂₃]
  simp only [Category.assoc]

end

end Localization

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97998caee47399ec736b670941ff8f9bc58a42e6d5c4581ca4362eb6a71d3c65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant97998caee47399ec736b670941ff8f9bc58a42e6d5c4581ca4362eb6a71d3c65.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7146d24b64d3e57af37c1ee4536c653fa1ceef10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
