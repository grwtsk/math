# compULiftYonedaIsoULiftYonedaCompLan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3269ffe27e284d1a6272124f3546dec4cc62566cfd81bf399157b28a24af0a1",
  "kind": "def",
  "lexical_name": "compULiftYonedaIsoULiftYonedaCompLan",
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
  "slug": "compuliftyonedaisouliftyonedacomplan--502a703aace3d609635bf500",
  "source": {
    "blob": "e00921909338d1c6864bec7b14cbf351b8752c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 452,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:502a703aace3d609635bf5003af85eeb358486de881d47088504420d21ec1fdb",
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

Occurrence: `declaration:b3269ffe27e284d1a6272124f3546dec4cc62566cfd81bf399157b28a24af0a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def compULiftYonedaIsoULiftYonedaCompLan :
    F ⋙ uliftYoneda.{max w v₁} ≅ uliftYoneda.{max w v₂} ⋙ F.op.lan :=
  NatIso.ofComponents (fun X => Functor.leftKanExtensionUnique _
    (uliftYonedaMap.{w} F X) (F.op.lan.obj _) (F.op.lanUnit.app (uliftYoneda.obj X)))
    (fun {X Y} f => by
      apply uliftYonedaEquiv.injective
      have eq₁ := ConcreteCategory.congr_hom
        ((uliftYoneda.{max w v₁}.obj (F.obj Y)).descOfIsLeftKanExtension_fac_app
        (uliftYonedaMap F Y) (F.op.lan.obj (uliftYoneda.obj Y))
          (F.op.lanUnit.app (uliftYoneda.obj Y)) _) ⟨f⟩
      have eq₂ := ConcreteCategory.congr_hom
        (((uliftYoneda.{max w v₁}.obj (F.obj X)).descOfIsLeftKanExtension_fac_app
        (uliftYonedaMap F X) (F.op.lan.obj (uliftYoneda.obj X))
          (F.op.lanUnit.app (uliftYoneda.obj X))) _) ⟨𝟙 _⟩
      have eq₃ := ConcreteCategory.congr_hom (congr_app (F.op.lanUnit.naturality
        (uliftYoneda.{max w v₂}.map f)) _) ⟨𝟙 _⟩
      dsimp [uliftYoneda, uliftYonedaMap, uliftYonedaEquiv,
        Functor.leftKanExtensionUnique] at eq₁ eq₂ eq₃ ⊢
      simp only [Functor.map_id] at eq₂
      simp only [id_comp] at eq₃
      simp [eq₁, eq₂, eq₃])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Varianta789787982d99a15b04efbc43d4db46f7ee3dce38ad4ab17031eaa31fb3837c7.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00921909338d1c6864bec7b14cbf351b8752c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
