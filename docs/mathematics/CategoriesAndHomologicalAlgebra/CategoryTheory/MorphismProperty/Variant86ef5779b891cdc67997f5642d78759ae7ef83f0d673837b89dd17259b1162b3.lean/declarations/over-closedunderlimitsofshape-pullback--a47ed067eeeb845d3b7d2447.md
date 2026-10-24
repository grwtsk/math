# Over.closedUnderLimitsOfShape_pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:353ec338-5d38-4689-7af2-5dc046837512",
  "kind": "lemma",
  "lexical_name": "Over.closedUnderLimitsOfShape_pullback",
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
  "slug": "over-closedunderlimitsofshape-pullback--a47ed067eeeb845d3b7d2447",
  "source": {
    "blob": "decdeb5317c240d0fdfefca4af560341cf5ea117",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a47ed067eeeb845d3b7d2447f27acdcd8e3c4ba59980e6c3a0aa073f88c6f3e6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:353ec338-5d38-4689-7af2-5dc046837512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Over.closedUnderLimitsOfShape_pullback [HasPullbacks T]
    [P.IsStableUnderComposition] [P.IsStableUnderBaseChange] [P.HasOfPostcompProperty P] :
    ClosedUnderLimitsOfShape WalkingCospan (fun f : Over X ↦ P f.hom) := by
  intro D c hc hf
  have h : IsPullback (c.π.app .left).left (c.π.app .right).left (D.map WalkingCospan.Hom.inl).left
        (D.map WalkingCospan.Hom.inr).left := IsPullback.of_isLimit_cone <|
    Limits.isLimitOfPreserves (CategoryTheory.Over.forget X) hc
  rw [show c.pt.hom = (c.π.app .left).left ≫ (D.obj .left).hom by simp]
  apply P.comp_mem _ _ (P.of_isPullback h.flip ?_) (hf _)
  exact P.of_postcomp _ (D.obj WalkingCospan.one).hom (hf .one) (by simpa using hf .right)

end

namespace MorphismProperty.Over

variable (X : T)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant86ef5779b891cdc67997f5642d78759ae7ef83f0d673837b89dd17259b1162b3.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `decdeb5317c240d0fdfefca4af560341cf5ea117` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
