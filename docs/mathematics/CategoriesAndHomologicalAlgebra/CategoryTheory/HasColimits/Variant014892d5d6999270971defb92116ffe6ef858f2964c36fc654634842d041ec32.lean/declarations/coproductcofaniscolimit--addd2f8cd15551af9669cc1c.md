# coproductCofanIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e38aa529f72f60fed191a09d2c2ffff4cce52550c4a1020975f9c5d5475cd1ff",
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
  "slug": "coproductcofaniscolimit--addd2f8cd15551af9669cc1c",
  "source": {
    "blob": "469f0dc1641b2772c7831aae65b7d87ab2bba825",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant014892d5d6999270971defb92116ffe6ef858f2964c36fc654634842d041ec32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:addd2f8cd15551af9669cc1c568e054eb9df736491caaf219dd2915f5e18c841",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant014892d5d6999270971defb92116ffe6ef858f2964c36fc654634842d041ec32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e38aa529f72f60fed191a09d2c2ffff4cce52550c4a1020975f9c5d5475cd1ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coproductCofanIsColimit : IsColimit (coproductCofan F) where
  desc s :=
    LocallyRingedSpace.homMk (colimit.desc
      (F ⋙ forgetToSheafedSpace) (forgetToSheafedSpace.mapCocone s)) (by
        intro x
        obtain ⟨i, y, ⟨⟩⟩ := SheafedSpace.colimit_exists_rep (F ⋙ forgetToSheafedSpace) x
        have := PresheafedSpace.stalkMap.comp
          (colimit.ι (F ⋙ forgetToSheafedSpace) i).hom
          (colimit.desc (F ⋙ forgetToSheafedSpace) (forgetToSheafedSpace.mapCocone s)).hom y
        simp only [← IsIso.comp_inv_eq,
          ← InducedCategory.comp_hom,
          PresheafedSpace.stalkMap.congr_hom _ _
            (congr_arg (InducedCategory.Hom.hom) (colimit.ι_desc
              (forgetToSheafedSpace.mapCocone s) i))] at this
        rw [← this]
        dsimp
        infer_instance)
  fac _ _ :=
    LocallyRingedSpace.forgetToSheafedSpace.map_injective
     (colimit.ι_desc (C := SheafedSpace _) _ _)
  uniq s f h :=
    LocallyRingedSpace.forgetToSheafedSpace.map_injective
      (IsColimit.uniq _ (forgetToSheafedSpace.mapCocone s) f.toShHom fun j =>
        congr_arg LocallyRingedSpace.Hom.toShHom (h j))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant014892d5d6999270971defb92116ffe6ef858f2964c36fc654634842d041ec32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant014892d5d6999270971defb92116ffe6ef858f2964c36fc654634842d041ec32.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469f0dc1641b2772c7831aae65b7d87ab2bba825` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
