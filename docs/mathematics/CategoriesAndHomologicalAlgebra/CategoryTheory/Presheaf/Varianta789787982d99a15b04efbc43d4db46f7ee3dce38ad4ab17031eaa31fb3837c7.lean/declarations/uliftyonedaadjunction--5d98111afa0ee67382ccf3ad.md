# uliftYonedaAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:079160297f05b6e810315938bab359ecdc81435b126b2dd953571b49ef10bb9e",
  "kind": "def",
  "lexical_name": "uliftYonedaAdjunction",
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
  "slug": "uliftyonedaadjunction--5d98111afa0ee67382ccf3ad",
  "source": {
    "blob": "e00921909338d1c6864bec7b14cbf351b8752c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d98111afa0ee67382ccf3ad7da1c61c5f84d2910673e3dd7f597f518a738eef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:079160297f05b6e810315938bab359ecdc81435b126b2dd953571b49ef10bb9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def uliftYonedaAdjunction : L ⊣ restrictedULiftYoneda.{max w v₁} A :=
  Adjunction.mkOfHomEquiv
    { homEquiv := restrictedULiftYonedaHomEquiv L α
      homEquiv_naturality_left_symm {P Q X} f g := by
        apply (Functor.isPointwiseLeftKanExtensionOfIsLeftKanExtension L α P).hom_ext
        intro p
        have hfg := (Functor.isPointwiseLeftKanExtensionOfIsLeftKanExtension
          L α P).comp_homEquiv_symm ((restrictedULiftYonedaHomEquiv' A P X).symm (f ≫ g)) p
        have hg := (Functor.isPointwiseLeftKanExtensionOfIsLeftKanExtension
          L α Q).comp_homEquiv_symm ((restrictedULiftYonedaHomEquiv' A Q X).symm g)
            ((CostructuredArrow.map f).obj p)
        dsimp at hfg hg
        dsimp [restrictedULiftYonedaHomEquiv]
        simp only [assoc, hfg, ← L.map_comp_assoc, hg,
          restrictedULiftYonedaHomEquiv'_symm_app_naturality_left]
      homEquiv_naturality_right {P X Y} f g := by
        have := @IsColimit.homEquiv_symm_naturality (h :=
          Functor.isPointwiseLeftKanExtensionOfIsLeftKanExtension L α P)
        dsimp at this
        apply (restrictedULiftYonedaHomEquiv L α P Y).symm.injective
        apply (Functor.isPointwiseLeftKanExtensionOfIsLeftKanExtension L α P).hom_ext
        intro
        simp [restrictedULiftYonedaHomEquiv,
          restrictedULiftYonedaHomEquiv'_symm_naturality_right, this] }

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00921909338d1c6864bec7b14cbf351b8752c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
