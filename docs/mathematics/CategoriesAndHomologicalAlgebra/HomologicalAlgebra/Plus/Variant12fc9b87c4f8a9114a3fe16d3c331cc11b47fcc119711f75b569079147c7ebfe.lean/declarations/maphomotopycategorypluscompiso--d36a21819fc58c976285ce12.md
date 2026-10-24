# mapHomotopyCategoryPlusCompIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4577de672d3df8ccbf6b1e8988fee2080029e45fe9d5ad05c997c7a56f177c4",
  "kind": "def",
  "lexical_name": "mapHomotopyCategoryPlusCompIso",
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
  "slug": "maphomotopycategorypluscompiso--d36a21819fc58c976285ce12",
  "source": {
    "blob": "6c031727184968281b5401dde4872708d20ca4d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 378,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variant12fc9b87c4f8a9114a3fe16d3c331cc11b47fcc119711f75b569079147c7ebfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d36a21819fc58c976285ce1294ab4be496f2c521f9d195db1bcf866c6892eb60",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variant12fc9b87c4f8a9114a3fe16d3c331cc11b47fcc119711f75b569079147c7ebfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4577de672d3df8ccbf6b1e8988fee2080029e45fe9d5ad05c997c7a56f177c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapHomotopyCategoryPlusCompIso {E : Type*} [Category* E] [Preadditive E]
    {F : C ⥤ D} {G : D ⥤ E} {H : C ⥤ E} (e : F ⋙ G ≅ H)
    [F.Additive] [G.Additive] [H.Additive] :
    F.mapHomotopyCategoryPlus ⋙ G.mapHomotopyCategoryPlus ≅ H.mapHomotopyCategoryPlus :=
  ((HomotopyCategory.plus _).fullyFaithfulι.whiskeringRight _).preimageIso
    (isoWhiskerLeft (HomotopyCategory.Plus.ι C)
      (mapHomotopyCategoryCompIso e (.up ℤ)))

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variant12fc9b87c4f8a9114a3fe16d3c331cc11b47fcc119711f75b569079147c7ebfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variant12fc9b87c4f8a9114a3fe16d3c331cc11b47fcc119711f75b569079147c7ebfe.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c031727184968281b5401dde4872708d20ca4d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
