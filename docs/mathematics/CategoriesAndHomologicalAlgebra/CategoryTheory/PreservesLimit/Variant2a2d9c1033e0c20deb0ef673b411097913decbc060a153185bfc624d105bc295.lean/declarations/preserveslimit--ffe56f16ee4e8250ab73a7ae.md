# preservesLimit'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27a7e51f01195727308421882eb6b8a78bf1cc414d557e6c93ee8759a58e2972",
  "kind": "def",
  "lexical_name": "preservesLimit'",
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
  "slug": "preserveslimit--ffe56f16ee4e8250ab73a7ae",
  "source": {
    "blob": "d95b29e53aaaa65a0975577856d062a946d23358",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant2a2d9c1033e0c20deb0ef673b411097913decbc060a153185bfc624d105bc295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffe56f16ee4e8250ab73a7ae45b76f0f8fd5d70292057085da4b1b483a0bc23b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant2a2d9c1033e0c20deb0ef673b411097913decbc060a153185bfc624d105bc295.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27a7e51f01195727308421882eb6b8a78bf1cc414d557e6c93ee8759a58e2972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def preservesLimit'
    [HasColimitsOfShape K (Type w)]
    {F : J ⥤ C} {G : K ⥤ (hasWeightedLimit.{w} F).FullSubcategory}
    (c : Cocone G) (hc : IsColimit ((hasWeightedLimit.{w} F).ι.mapCocone c)) :
    IsLimit ((weightedLimFlipObj'.{w} F).mapCone c.op) where
  lift s := (isLimitWeightedLimCone c.pt.obj F).lift (π hc s) (fun j₁ j₂ x f ↦ by
    obtain ⟨k, y, rfl⟩ := Types.jointly_surjective_of_isColimit
      (isColimitOfPreserves ((evaluation _ _).obj j₁) hc) x
    dsimp
    rw [π_ι_app_hom_app_apply, Category.assoc, weightedLimObjObj_w,
      ← π_ι_app_hom_app_apply hc, NatTrans.naturality_apply])
  uniq s m hm := by
    dsimp
    ext j x
    obtain ⟨k, y, rfl⟩ := Types.jointly_surjective_of_isColimit
      (isColimitOfPreserves ((evaluation _ _).obj j) hc) x
    simp [← hm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant2a2d9c1033e0c20deb0ef673b411097913decbc060a153185bfc624d105bc295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant2a2d9c1033e0c20deb0ef673b411097913decbc060a153185bfc624d105bc295.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d95b29e53aaaa65a0975577856d062a946d23358` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
