# isColimitCoconeOfHasColimitCurryCompColim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f2ba41fa9b7aa7b5628ce478e20f3d5f901a6ee0907844e7efadd39554fb8c7",
  "kind": "def",
  "lexical_name": "isColimitCoconeOfHasColimitCurryCompColim",
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
  "slug": "iscolimitcoconeofhascolimitcurrycompcolim--0c11c94407e4e39bd478db00",
  "source": {
    "blob": "939ceb4c1d9088653e2199fab5a7241a98fce3c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 475,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c11c94407e4e39bd478db0044e21a8e67b58e72750d6ef60d7e3745be091d2f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f2ba41fa9b7aa7b5628ce478e20f3d5f901a6ee0907844e7efadd39554fb8c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitCoconeOfHasColimitCurryCompColim :
    IsColimit (coconeOfHasColimitCurryCompColim G) :=
  let Q : DiagramOfCocones (curry.obj G) := .mkOfHasColimits _
  let Q' : ∀ j, IsColimit (Q.obj j) := fun j => colimit.isColimit _
  { desc c' := colimit.desc (F := curry.obj G ⋙ colim) (coconeOfCoconeCurry G Q' c')
    fac c' f := by simp [coconeOfHasColimitCurryCompColim, Q, Q']
    uniq c' f h := by
      dsimp [coconeOfHasColimitCurryCompColim] at f h ⊢
      refine colimit.hom_ext (F := curry.obj G ⋙ colim) (fun j ↦ colimit.hom_ext (fun k ↦ ?_))
      simp [← h ⟨j, k⟩, Q'] }

/-- The functor `G` has a colimit if `C` has `K`-shaped colimits and `(curry.obj G ⋙ colim)` has a
colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939ceb4c1d9088653e2199fab5a7241a98fce3c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
