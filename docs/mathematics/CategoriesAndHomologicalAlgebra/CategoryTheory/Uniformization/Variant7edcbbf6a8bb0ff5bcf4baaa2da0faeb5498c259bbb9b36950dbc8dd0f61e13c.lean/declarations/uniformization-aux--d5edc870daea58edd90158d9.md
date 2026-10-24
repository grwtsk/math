# uniformization_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:812b2093-48f4-c822-1ebf-e16fc282a879",
  "kind": "lemma",
  "lexical_name": "uniformization_aux",
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
  "slug": "uniformization-aux--d5edc870daea58edd90158d9",
  "source": {
    "blob": "581e2cfe3b5b728ff9eb63b4060b1246fb6fad1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5edc870daea58edd90158d96ea2eb9ce2b467e2e47aa479d0ceeaa46dc3901a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:812b2093-48f4-c822-1ebf-e16fc282a879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uniformization_aux
    (F : C ⥤ D) {κ₁ κ₂ : Cardinal.{w}} [Fact κ₁.IsRegular] [Fact κ₂.IsRegular]
    [IsCardinalAccessibleCategory C κ₁] [IsCardinalAccessibleCategory D κ₁]
    [F.IsCardinalAccessible κ₁] (hκ : κ₁.SharplyLT κ₂)
    (hF : isCardinalPresentable C κ₁ ≤ (isCardinalPresentable D κ₂).inverseImage F) :
    F.PreservesCardinalPresentable κ₂ where
  le_inverseImage_isCardinalPresentable X hX := by
    simp only [isCardinalPresentable_iff] at hX
    obtain ⟨Y, r, J, _, _, hJ, ⟨p⟩⟩ := hκ.exists_retract_of_isCardinalPresentable X
    refine (isCardinalPresentable D κ₂).prop_of_retract (r.map F) ?_
    have := F.preservesColimitsOfShape_of_isCardinalAccessible κ₁
    have (j : J) : IsCardinalPresentable ((p.diag ⋙ F).obj j) κ₂ := hF _ (p.prop_diag_obj j)
    exact isCardinalPresentable_of_isColimit _ (isColimitOfPreserves F p.isColimit) _
      ((hasCardinalLT_arrow_iff_of_isThin _ _ (Cardinal.IsRegular.aleph0_le Fact.out)).2 hJ)

/-- Uniformization theorem for accessible categories: if `F i : C ⥤ D` for `i : ι`
is a small family of accessible functors between accessible categories, there exists
a regular cardinal `κ` such that `C` and `D` are `κ`-accessible, and the
functors `F i` are `κ`-accessible functors which preserve `κ`-presentable objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Uniformization/Variant7edcbbf6a8bb0ff5bcf4baaa2da0faeb5498c259bbb9b36950dbc8dd0f61e13c.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `581e2cfe3b5b728ff9eb63b4060b1246fb6fad1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
