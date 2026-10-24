# whiskeringEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e25e365b0f52001c5011614e129e28a5ebec594162ddf9ef2437ca24feb25565",
  "kind": "def",
  "lexical_name": "whiskeringEquivalence",
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
  "slug": "whiskeringequivalence--eac2dc2e3bfb2c3a57e19864",
  "source": {
    "blob": "520de284c419654a24187ec4d244635d38626ac3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 380,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant56fc06aff20b0551704a5c1222dea582e53c0f67bd2a4f029aed501cd58c27d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eac2dc2e3bfb2c3a57e198649557a72d69ba5dc07b63a44ad5f3728338d80bd1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant56fc06aff20b0551704a5c1222dea582e53c0f67bd2a4f029aed501cd58c27d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e25e365b0f52001c5011614e129e28a5ebec594162ddf9ef2437ca24feb25565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def whiskeringEquivalence (e : K ≌ J) : Cone F ≌ Cone (e.functor ⋙ F) where
  functor := whiskering e.functor
  inverse := whiskering e.inverse ⋙ postcompose (e.invFunIdAssoc F).hom
  unitIso := NatIso.ofComponents fun s => Cones.ext (Iso.refl _)
  counitIso :=
    NatIso.ofComponents
      fun s =>
        Cones.ext (Iso.refl _)
          (by
            intro k
            simpa [e.counit_app_functor] using s.w (e.unitInv.app k))

/-- The categories of cones over `F` and `G` are equivalent if `F` and `G` are naturally isomorphic
(possibly after changing the indexing category by an equivalence).
-/
@[simps! functor inverse unitIso counitIso]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant56fc06aff20b0551704a5c1222dea582e53c0f67bd2a4f029aed501cd58c27d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant56fc06aff20b0551704a5c1222dea582e53c0f67bd2a4f029aed501cd58c27d4.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520de284c419654a24187ec4d244635d38626ac3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
