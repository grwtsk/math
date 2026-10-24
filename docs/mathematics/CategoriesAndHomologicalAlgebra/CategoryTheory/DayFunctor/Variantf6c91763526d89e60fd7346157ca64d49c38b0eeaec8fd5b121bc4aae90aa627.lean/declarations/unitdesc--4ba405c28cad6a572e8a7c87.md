# unitDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0696c218bcdbdb423d7ff223920ddb23737ce384d9d4cbd9a86cb9ea0ddb1c86",
  "kind": "def",
  "lexical_name": "unitDesc",
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
  "slug": "unitdesc--4ba405c28cad6a572e8a7c87",
  "source": {
    "blob": "69e87fc3e8723fdb368f9183aed8407b03466ed7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 241,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantf6c91763526d89e60fd7346157ca64d49c38b0eeaec8fd5b121bc4aae90aa627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ba405c28cad6a572e8a7c876b5797a5e8655ec433651c4f8c75aa645ffcf2f4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantf6c91763526d89e60fd7346157ca64d49c38b0eeaec8fd5b121bc4aae90aa627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0696c218bcdbdb423d7ff223920ddb23737ce384d9d4cbd9a86cb9ea0ddb1c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitDesc {F : C ⊛⥤ V} (φ : 𝟙_ V ⟶ F.functor.obj (𝟙_ C)) :
    𝟙_ (C ⊛⥤ V) ⟶ F :=
  .mk <| Functor.descOfIsLeftKanExtension (𝟙_ (C ⊛⥤ V)).functor (νNatTrans C V)
    F.functor { app _ := φ }

set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantf6c91763526d89e60fd7346157ca64d49c38b0eeaec8fd5b121bc4aae90aa627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantf6c91763526d89e60fd7346157ca64d49c38b0eeaec8fd5b121bc4aae90aa627.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e87fc3e8723fdb368f9183aed8407b03466ed7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
