# weightedLimFlipObjMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed9f8fba-42e8-1bd8-5798-bd86fd1bfe45",
  "kind": "lemma",
  "lexical_name": "weightedLimFlipObjMap_comp",
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
  "slug": "weightedlimflipobjmap-comp--fd2f11d60de08ed297dd67a5",
  "source": {
    "blob": "3813b09e84f36b4cf049ad134dd6366ce530401e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 255,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasWeightedLimit/Varianta6475623c340c39b944edec8f41194785cd7cc45b33d0b6e8021fede179ef096.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd2f11d60de08ed297dd67a5193976ef91437e97d476414f8ee843d5a54323f8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasWeightedLimit/Varianta6475623c340c39b944edec8f41194785cd7cc45b33d0b6e8021fede179ef096.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed9f8fba-42e8-1bd8-5798-bd86fd1bfe45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma weightedLimFlipObjMap_comp :
    weightedLimFlipObjMap g' F ≫ weightedLimFlipObjMap g F =
    weightedLimFlipObjMap (g ≫ g') F := by
  cat_disch

end

end

section

variable {J : Type u} [Category.{v} J] (W : J ⥤ Type w) {C : Type u'} [Category.{v'} C]

variable (C) in
/-- Given a weight `W : J ⥤ Type w`, this is the property that all `W`-weighted limits
exist for functors `F : J ⥤ C`. Under this condition, we define a weighted limit functor
`W.weightedLimObj : (J ⥤ C) ⥤ C`. (See also `HasWeightedLimFlipObj` for the "flipped"
property for `F : J ⥤ C`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasWeightedLimit/Varianta6475623c340c39b944edec8f41194785cd7cc45b33d0b6e8021fede179ef096.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasWeightedLimit/Varianta6475623c340c39b944edec8f41194785cd7cc45b33d0b6e8021fede179ef096.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3813b09e84f36b4cf049ad134dd6366ce530401e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
