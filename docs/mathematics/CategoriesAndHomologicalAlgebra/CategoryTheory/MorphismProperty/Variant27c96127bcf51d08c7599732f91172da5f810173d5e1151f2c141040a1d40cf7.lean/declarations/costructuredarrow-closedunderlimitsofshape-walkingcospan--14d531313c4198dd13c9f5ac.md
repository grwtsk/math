# CostructuredArrow.closedUnderLimitsOfShape_walkingCospan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "498ed5b92421af34cb5b56eb5ead9ff04d51ebdc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b6bc3d7-f398-3d42-f906-6e2828730dec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:294a40ad-30a4-8ad0-0234-cb9b480c8cfc",
  "kind": "lemma",
  "lexical_name": "CostructuredArrow.closedUnderLimitsOfShape_walkingCospan",
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
  "slug": "costructuredarrow-closedunderlimitsofshape-walkingcospan--14d531313c4198dd13c9f5ac",
  "source": {
    "blob": "498ed5b92421af34cb5b56eb5ead9ff04d51ebdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14d531313c4198dd13c9f5ac5b8306e3a42ce2a521a31eb228a579205cc22517",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:294a40ad-30a4-8ad0-0234-cb9b480c8cfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CostructuredArrow.closedUnderLimitsOfShape_walkingCospan [HasPullbacks A] [HasPullbacks T]
    [PreservesLimitsOfShape WalkingCospan L] (X : T)
    [P.IsStableUnderComposition] [P.IsStableUnderBaseChange]
    [P.HasOfPostcompProperty P] :
    (P.costructuredArrowObj L (X := X)).IsClosedUnderLimitsOfShape WalkingCospan where
  limitsOfShape_le := by
    rintro Y ⟨pres, hpres⟩
    have h : IsPullback (L.map (pres.π.app .left).left) (L.map (pres.π.app .right).left)
        (L.map (pres.diag.map WalkingCospan.Hom.inl).left)
          (L.map (pres.diag.map WalkingCospan.Hom.inr).left) :=
      IsPullback.of_isLimit_cone <| isLimitOfPreserves
        (CategoryTheory.CostructuredArrow.toOver L X ⋙ CategoryTheory.Over.forget X) pres.isLimit
    rw [MorphismProperty.costructuredArrowObj_iff]
    rw [show Y.hom = L.map (pres.π.app .left).left ≫ (pres.diag.obj .left).hom by simp]
    apply P.comp_mem _ _ (P.of_isPullback h.flip ?_) (hpres _)
    exact P.of_postcomp _ (pres.diag.obj WalkingCospan.one).hom (hpres .one)
      (by simpa using hpres .right)

namespace MorphismProperty.CostructuredArrow

variable (X : T) [P.IsStableUnderComposition] [P.IsStableUnderBaseChange]
  [P.HasOfPostcompProperty P] [HasPullbacks A] [HasPullbacks T]
  [PreservesLimitsOfShape WalkingCospan L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `498ed5b92421af34cb5b56eb5ead9ff04d51ebdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
