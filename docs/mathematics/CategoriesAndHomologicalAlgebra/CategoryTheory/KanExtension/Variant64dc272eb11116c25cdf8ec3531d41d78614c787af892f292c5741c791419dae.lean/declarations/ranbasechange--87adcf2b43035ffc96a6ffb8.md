# ranBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fa9863e05d990c95d11d9b3dcb4128133b5366619aebb256876610a96680368",
  "kind": "def",
  "lexical_name": "ranBaseChange",
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
  "slug": "ranbasechange--87adcf2b43035ffc96a6ffb8",
  "source": {
    "blob": "0d08978648aa3aacc3d3fc2330c3a149c4a87fe3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 314,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant64dc272eb11116c25cdf8ec3531d41d78614c787af892f292c5741c791419dae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87adcf2b43035ffc96a6ffb8a94c1a89b7bb813ebeb132783fb53836801fad6f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant64dc272eb11116c25cdf8ec3531d41d78614c787af892f292c5741c791419dae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fa9863e05d990c95d11d9b3dcb4128133b5366619aebb256876610a96680368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ranBaseChange :
    B.ran ⋙ (whiskeringLeft C₂ C₄ D).obj R ⟶ (whiskeringLeft C₁ C₃ D).obj L ⋙ T.ran where
  app F :=
    ((T.ranAdjunction _).homEquiv _ _)
      ((RightExtension.mk _ (B.ranCounit.app F)).compTwoSquare w).hom
  naturality {F₁ F₂} τ := by
    refine (Adjunction.homEquiv_naturality_left ..).symm.trans
      (Eq.trans ?_ (Adjunction.homEquiv_naturality_right ..))
    congr 1
    ext X
    simp [← dsimp% B.ranCounit.naturality_app (L.obj X) τ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant64dc272eb11116c25cdf8ec3531d41d78614c787af892f292c5741c791419dae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant64dc272eb11116c25cdf8ec3531d41d78614c787af892f292c5741c791419dae.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d08978648aa3aacc3d3fc2330c3a149c4a87fe3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
