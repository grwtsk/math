# CommRingCat.moduleCatExtendScalarsPseudofunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7adbdb5cad81c23a82fc2e7aad927f4bdc10645685abc8bf6111c37f7ac10f73",
  "kind": "def",
  "lexical_name": "CommRingCat.moduleCatExtendScalarsPseudofunctor",
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
  "slug": "commringcat-modulecatextendscalarspseudofunctor--0044d10595c6f24bb3ce5f78",
  "source": {
    "blob": "658892efe95c77b009f62008b1afe290c3efabea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta63d4ef294d44e545ea5228ebd634f18f48b118d317366a3b13d5dda7fae5712.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0044d10595c6f24bb3ce5f78923fc01904d3e648b2c0ab0e6f9afe648710d7bc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta63d4ef294d44e545ea5228ebd634f18f48b118d317366a3b13d5dda7fae5712.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7adbdb5cad81c23a82fc2e7aad927f4bdc10645685abc8bf6111c37f7ac10f73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def CommRingCat.moduleCatExtendScalarsPseudofunctor :
    Pseudofunctor (LocallyDiscrete CommRingCat.{u}) Cat := by
  refine LocallyDiscrete.mkPseudofunctor
    (fun R ↦ ↧(ModuleCat.{u} R))
    (fun f ↦ (extendScalars f.hom).toCatHom)
    (fun R ↦ Cat.Hom.isoMk <| extendScalarsId R)
    (fun f g ↦ Cat.Hom.isoMk <| extendScalarsComp f.hom g.hom) ?_ ?_ ?_
  · intros; ext1; apply extendScalars_assoc'
  · intros; ext1; apply extendScalars_id_comp
  · intros; ext1; apply extendScalars_comp_id
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta63d4ef294d44e545ea5228ebd634f18f48b118d317366a3b13d5dda7fae5712.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta63d4ef294d44e545ea5228ebd634f18f48b118d317366a3b13d5dda7fae5712.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `658892efe95c77b009f62008b1afe290c3efabea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
