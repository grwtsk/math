# isColimitCoconeOfIsLeftKanExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b7eec6e2d6c959b3b08565042853b91fbbf683149b71c982231b3e245bd7f02",
  "kind": "def",
  "lexical_name": "isColimitCoconeOfIsLeftKanExtension",
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
  "slug": "iscolimitcoconeofisleftkanextension--1432730dd0a77a1fbf577be5",
  "source": {
    "blob": "679175ed8050b5804555b167c1a5934ac953b31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 870,
    "line": 853,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1432730dd0a77a1fbf577be5fd260cb5e7d14c68910a02e8c1afbc2996fcd239",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b7eec6e2d6c959b3b08565042853b91fbbf683149b71c982231b3e245bd7f02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 853–870.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitCoconeOfIsLeftKanExtension {c : Cocone F} (hc : IsColimit c) :
    IsColimit (F'.coconeOfIsLeftKanExtension α c) where
  desc s := hc.desc (Cocone.mk _ (α ≫ whiskerLeft L s.ι))
  fac s := by
    have : F'.descOfIsLeftKanExtension α ((const D).obj c.pt) c.ι ≫
        (Functor.const _).map (hc.desc (Cocone.mk _ (α ≫ whiskerLeft L s.ι))) = s.ι :=
      F'.hom_ext_of_isLeftKanExtension α _ _ (by cat_disch)
    exact congr_app this
  uniq s m hm := hc.hom_ext (fun j ↦ by
    have := hm (L.obj j)
    nth_rw 1 [← F'.descOfIsLeftKanExtension_fac_app α ((const D).obj c.pt)]
    dsimp at this ⊢
    rw [assoc, this, IsColimit.fac, NatTrans.comp_app, whiskerLeft_app])

variable [HasColimit F] [HasColimit F']

/-- If `F' : D ⥤ H` is a left Kan extension of `F : C ⥤ H` along `L : C ⥤ D`, the colimit over `F'`
is isomorphic to the colimit over `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean#L853).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679175ed8050b5804555b167c1a5934ac953b31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
