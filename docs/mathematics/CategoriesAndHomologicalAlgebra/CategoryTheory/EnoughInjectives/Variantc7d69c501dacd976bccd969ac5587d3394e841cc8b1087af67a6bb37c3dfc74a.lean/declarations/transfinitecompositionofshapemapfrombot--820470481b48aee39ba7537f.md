# transfiniteCompositionOfShapeMapFromBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98b725659a11e16f0cbbc8d34aa288c622b42419fedb02631c3d2b8d3d47768f",
  "kind": "def",
  "lexical_name": "transfiniteCompositionOfShapeMapFromBot",
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
  "slug": "transfinitecompositionofshapemapfrombot--820470481b48aee39ba7537f",
  "source": {
    "blob": "e03ced67305858cd0ae71a5a1b78ce98b5d91986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 242,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:820470481b48aee39ba7537ff4946733df097ea3fd1e077bb17b9f3f56ceb786",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98b725659a11e16f0cbbc8d34aa288c622b42419fedb02631c3d2b8d3d47768f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def transfiniteCompositionOfShapeMapFromBot (j : J) :
  (generatingMonomorphisms G).pushouts.TransfiniteCompositionOfShape (Set.Iic j)
    ((functor hG A₀ J).map (homOfLE bot_le : ⊥ ⟶ j)) where
  F := (Set.initialSegIic j).monotone.functor ⋙ functor hG A₀ J
  isoBot := Iso.refl _
  incl :=
    { app k := (functor hG A₀ J).map (homOfLE k.2)
      naturality k k' h := by simp [MonoOver.forget] }
  isColimit := colimitOfDiagramTerminal isTerminalTop _
  map_mem k hk := by
    dsimp [MonoOver.forget]
    convert pushouts_ofLE_le_largerSubobject hG
      (transfiniteIterate (largerSubobject hG) k.1 A₀) using 2
    all_goals
      rw [Set.Iic.succ_eq_of_not_isMax hk,
        transfiniteIterate_succ _ _ _ (Set.not_isMax_coe _ hk)]

end

variable {A : C} {f : A ⟶ X} [Mono f]

/-- If `transfiniteIterate (largerSubobject hG) j (Subobject.mk f) = ⊤`,
then the monomorphism `f` is a transfinite composition of pushouts of
monomorphisms in the family `generatingMonomorphisms G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantc7d69c501dacd976bccd969ac5587d3394e841cc8b1087af67a6bb37c3dfc74a.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e03ced67305858cd0ae71a5a1b78ce98b5d91986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
