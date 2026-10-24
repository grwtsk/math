# createsLimitOfFullyFaithfulOfIso'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ac4f6ae3bdd305ea69e739cabbac2519257bb4d782651edde371afd8d73b452",
  "kind": "def",
  "lexical_name": "createsLimitOfFullyFaithfulOfIso'",
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
  "slug": "createslimitoffullyfaithfulofiso--0ba83f8c7c852aec7c100ac9",
  "source": {
    "blob": "fdc34b33fc9de2b977fe4a6e0340624ae643bafb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 318,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant8ff9b5597dd6a816405c0174e02a37a9c74032a1c28265e1b1c2c4da2062902f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ba83f8c7c852aec7c100ac92d7b4980168c191fcbed6840dc8a7cbf9a4256ec",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant8ff9b5597dd6a816405c0174e02a37a9c74032a1c28265e1b1c2c4da2062902f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ac4f6ae3bdd305ea69e739cabbac2519257bb4d782651edde371afd8d73b452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsLimitOfFullyFaithfulOfIso' {K : J ⥤ C} {F : C ⥤ D} [Full F] [Faithful F]
    {l : Cone (K ⋙ F)} (hl : IsLimit l) (X : C) (i : F.obj X ≅ l.pt) : CreatesLimit K F :=
  createsLimitOfFullyFaithfulOfLift' hl
    { pt := X
      π :=
        { app := fun j => F.preimage (i.hom ≫ l.π.app j)
          naturality := fun Y Z f =>
            F.map_injective <| by
              dsimp
              simpa using (l.w f).symm } }
    (Cones.ext i fun j => by simp only [Functor.image_preimage, Functor.mapCone_π_app])
#align category_theory.creates_limit_of_fully_faithful_of_iso' CategoryTheory.createsLimitOfFullyFaithfulOfIso'

-- Notice however that even if the isomorphism is `Iso.refl _`,
-- this construction will insert additional identity morphisms in the cone maps,
-- so the constructed limits may not be ideal, definitionally.
/-- When `F` is fully faithful, and `HasLimit (K ⋙ F)`, to show that `F` creates the limit for `K`
it suffices to show that the chosen limit point is in the essential image of `F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant8ff9b5597dd6a816405c0174e02a37a9c74032a1c28265e1b1c2c4da2062902f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant8ff9b5597dd6a816405c0174e02a37a9c74032a1c28265e1b1c2c4da2062902f.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc34b33fc9de2b977fe4a6e0340624ae643bafb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
