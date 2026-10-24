# isLimitOpensLeCoverEquivPairwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17247d32db036febe0982e9e8b881fa75095a8e4e677d2b4d66abc3d8c55db66",
  "kind": "def",
  "lexical_name": "isLimitOpensLeCoverEquivPairwise",
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
  "slug": "islimitopenslecoverequivpairwise--b669214927c309b5cda4e17d",
  "source": {
    "blob": "ba4abd957280c5affa78d35a2334338f5696bb48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b669214927c309b5cda4e17d6ae765e470946a50f50a556f4968e758c34e6217",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17247d32db036febe0982e9e8b881fa75095a8e4e677d2b4d66abc3d8c55db66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOpensLeCoverEquivPairwise :
    IsLimit (F.mapCone (opensLeCoverCocone U).op) ≃ IsLimit (F.mapCone (Pairwise.cocone U).op) :=
  calc
    IsLimit (F.mapCone (opensLeCoverCocone U).op) ≃
        IsLimit ((F.mapCone (opensLeCoverCocone U).op).whisker (pairwiseToOpensLeCover U).op) :=
      (Functor.Initial.isLimitWhiskerEquiv (pairwiseToOpensLeCover U).op _).symm
    _ ≃ IsLimit (F.mapCone ((opensLeCoverCocone U).op.whisker (pairwiseToOpensLeCover U).op)) :=
      (IsLimit.equivIsoLimit F.mapConeWhisker.symm)
    _ ≃
        IsLimit
          ((Cones.postcomposeEquivalence _).functor.obj
            (F.mapCone ((opensLeCoverCocone U).op.whisker (pairwiseToOpensLeCover U).op))) :=
      (IsLimit.postcomposeHomEquiv _ _).symm
    _ ≃
        IsLimit
          (F.mapCone
            ((Cones.postcomposeEquivalence _).functor.obj
              ((opensLeCoverCocone U).op.whisker (pairwiseToOpensLeCover U).op))) :=
      (IsLimit.equivIsoLimit (Functor.mapConePostcomposeEquivalenceFunctor _).symm)
    _ ≃ IsLimit (F.mapCone (Pairwise.cocone U).op) :=
      IsLimit.equivIsoLimit ((Cones.functoriality _ _).mapIso (pairwiseCoconeIso U :).symm)

/-- The sheaf condition
in terms of a limit diagram over all `{ V : Opens X // ∃ i, V ≤ U i }`
is equivalent to the reformulation
in terms of a limit diagram over `U i` and `U i ⊓ U j`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba4abd957280c5affa78d35a2334338f5696bb48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
