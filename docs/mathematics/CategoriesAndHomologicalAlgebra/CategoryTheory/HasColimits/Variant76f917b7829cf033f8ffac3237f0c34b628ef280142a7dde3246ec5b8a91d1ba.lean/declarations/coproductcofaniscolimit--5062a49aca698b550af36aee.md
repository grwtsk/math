# coproductCofanIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6bf7f550d96675fe69713351799a2c52528f2b7961b8cf0ac75431fd6f3007d",
  "kind": "def",
  "lexical_name": "coproductCofanIsColimit",
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
  "slug": "coproductcofaniscolimit--5062a49aca698b550af36aee",
  "source": {
    "blob": "7db7da682256d494c648bbe4712d21cc9a08a1a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5062a49aca698b550af36aee7f4775a547c11403b0b50f7401fcc53f030cf09b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6bf7f550d96675fe69713351799a2c52528f2b7961b8cf0ac75431fd6f3007d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coproductCofanIsColimit : IsColimit (coproductCofan F) where
  desc s :=
    ⟨colimit.desc (C := SheafedSpace.{u+1, u, u} CommRingCat.{u})
      (F ⋙ forgetToSheafedSpace) (forgetToSheafedSpace.mapCocone s), by
      intro x
      obtain ⟨i, y, ⟨⟩⟩ := SheafedSpace.colimit_exists_rep (F ⋙ forgetToSheafedSpace) x
      have := PresheafedSpace.stalkMap.comp
        (colimit.ι (C := SheafedSpace.{u+1, u, u} CommRingCat.{u})
          (F ⋙ forgetToSheafedSpace) i)
        (colimit.desc (C := SheafedSpace.{u+1, u, u} CommRingCat.{u})
          (F ⋙ forgetToSheafedSpace) (forgetToSheafedSpace.mapCocone s)) y
      rw [← IsIso.comp_inv_eq] at this
      erw [← this,
        PresheafedSpace.stalkMap.congr_hom _ _
          (colimit.ι_desc (C := SheafedSpace.{u+1, u, u} CommRingCat.{u})
            (forgetToSheafedSpace.mapCocone s) i :)]
      haveI :
        IsLocalHom
          (((forgetToSheafedSpace.mapCocone s).ι.app i).stalkMap y).hom :=
        (s.ι.app i).2 y
      infer_instance⟩
  fac _ _ := LocallyRingedSpace.Hom.ext'
    (colimit.ι_desc (C := SheafedSpace.{u+1, u, u} CommRingCat.{u}) _ _)
  uniq s f h :=
    LocallyRingedSpace.Hom.ext'
      (IsColimit.uniq _ (forgetToSheafedSpace.mapCocone s) f.toShHom fun j =>
        congr_arg LocallyRingedSpace.Hom.toShHom (h j))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant76f917b7829cf033f8ffac3237f0c34b628ef280142a7dde3246ec5b8a91d1ba.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7db7da682256d494c648bbe4712d21cc9a08a1a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
