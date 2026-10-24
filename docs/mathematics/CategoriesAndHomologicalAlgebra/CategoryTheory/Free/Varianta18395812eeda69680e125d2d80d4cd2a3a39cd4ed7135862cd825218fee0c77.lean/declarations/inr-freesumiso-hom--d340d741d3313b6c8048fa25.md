# inr_freeSumIso_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67c510a9-d2c1-dee4-f5a4-9fb3410b6316",
  "kind": "lemma",
  "lexical_name": "inr_freeSumIso_hom",
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
  "slug": "inr-freesumiso-hom--d340d741d3313b6c8048fa25",
  "source": {
    "blob": "d3a05940e218e7492c243f7cb9d211cac00e18de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Varianta18395812eeda69680e125d2d80d4cd2a3a39cd4ed7135862cd825218fee0c77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d340d741d3313b6c8048fa25e1bc2c0900c91134fef2849d046b2ce18321c963",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Varianta18395812eeda69680e125d2d80d4cd2a3a39cd4ed7135862cd825218fee0c77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67c510a9-d2c1-dee4-f5a4-9fb3410b6316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inr_freeSumIso_hom :
    coprod.inr ≫ (freeSumIso (R := R) I J).hom = freeMap Sum.inr := by
  rw [← dsimp% freeFunctor_map (↾(Sum.inr : J → I ⊕ J))]
  exact IsColimit.comp_coconePointUniqueUpToIso_hom
    (coprodIsCoprod (free (R := R) I) (free J)) _ (.mk .right)

end

section

variable {C' : Type u₂} [Category.{v₂} C'] {J' : GrothendieckTopology C'} {S : Sheaf J' RingCat.{u}}
  [HasSheafify J' AddCommGrpCat.{u}] [J'.WEqualsLocallyBijective AddCommGrpCat.{u}]
  (F : SheafOfModules.{u} R ⥤ SheafOfModules.{u} S) (I : Type u)

/-- Let `F` be a functor from the category of sheaves of `R`-modules to sheaves of `S`-modules.
Then a morphism `η : unit S ⟶ F.obj (unit R)` induces a morphism from `free (R := S) I` to
`F.obj (free I)`. See also `mapFreeIso` for the iso version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Varianta18395812eeda69680e125d2d80d4cd2a3a39cd4ed7135862cd825218fee0c77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Varianta18395812eeda69680e125d2d80d4cd2a3a39cd4ed7135862cd825218fee0c77.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3a05940e218e7492c243f7cb9d211cac00e18de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
