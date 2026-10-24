# isLeftAdjoint_triangle_lift_comonadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a24cdc18-ceea-5e73-67c6-aef1cb9d191c",
  "kind": "lemma",
  "lexical_name": "isLeftAdjoint_triangle_lift_comonadic",
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
  "slug": "isleftadjoint-triangle-lift-comonadic--ec4144e2d4ce17ec19e7b8ad",
  "source": {
    "blob": "02255dd0736aeab2513bf7ba6da42befe34827f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant2176f8c194638ec9b1c7a19589a94602f143d989f03a19ac9f5fd44e91390cd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec4144e2d4ce17ec19e7b8ad0b6061bca0e61ff13513b13fed23c4eaed63e45b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant2176f8c194638ec9b1c7a19589a94602f143d989f03a19ac9f5fd44e91390cd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a24cdc18-ceea-5e73-67c6-aef1cb9d191c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma isLeftAdjoint_triangle_lift_comonadic (F : B ⥤ A) [ComonadicLeftAdjoint F] {L : C ⥤ B}
    [HasCoreflexiveEqualizers C] [(L ⋙ F).IsLeftAdjoint] : L.IsLeftAdjoint := by
  let L' : _ ⥤ _ := L ⋙ Comonad.comparison (comonadicAdjunction F)
  rsuffices : L'.IsLeftAdjoint
  · let this : (L' ⋙ (Comonad.comparison (comonadicAdjunction F)).inv).IsLeftAdjoint := by
      infer_instance
    refine ((Adjunction.ofIsLeftAdjoint
      (L' ⋙ (Comonad.comparison (comonadicAdjunction F)).inv)).ofNatIsoLeft ?_).isLeftAdjoint
    exact isoWhiskerLeft L (Comonad.comparison _).asEquivalence.unitIso.symm ≪≫ L.leftUnitor
  let this : (L' ⋙ Comonad.forget (comonadicAdjunction F).toComonad).IsLeftAdjoint := by
    refine ((Adjunction.ofIsLeftAdjoint (L ⋙ F)).ofNatIsoLeft ?_).isLeftAdjoint
    exact isoWhiskerLeft L (Comonad.comparisonForget (comonadicAdjunction F)).symm
  let this : ∀ X, RegularMono ((Comonad.adj (comonadicAdjunction F).toComonad).unit.app X) := by
    intro X
    simp only [Comonad.adj_unit]
    exact ⟨_, _, _, _, Comonad.beckCoalgebraEqualizer X⟩
  exact isLeftAdjoint_triangle_lift L' (Comonad.adj _)

variable {D : Type u₄}
variable [Category.{v₄} D]

/-- Suppose we have a commutative square of functors

```
      Q
    A → B
  U ↓   ↓ V
    C → D
      R
```

where `U` has a right adjoint, `A` has coreflexive equalizers and `V` has a right adjoint such that
each component of the counit is a regular mono.
Then `Q` has a right adjoint if `L` has a right adjoint.

See https://ncatlab.org/nlab/show/adjoint+lifting+theorem
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant2176f8c194638ec9b1c7a19589a94602f143d989f03a19ac9f5fd44e91390cd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant2176f8c194638ec9b1c7a19589a94602f143d989f03a19ac9f5fd44e91390cd7.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02255dd0736aeab2513bf7ba6da42befe34827f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
