# isLeftAdjoint_triangle_lift_comonadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2561be7b-5f05-cb3c-1f18-912d6ee8f94b",
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
  "slug": "isleftadjoint-triangle-lift-comonadic--4ce60f435ef2116f8840bc33",
  "source": {
    "blob": "9d014feebe1015ce4430db93a6bb7fb145381013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 199,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant19c34bacc6af2756e37be7808e3f93796718d6ba52b4ec1fa7c81b7d07d3caba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ce60f435ef2116f8840bc330037e3b81ddb11f1315edf3824f506817166a077",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant19c34bacc6af2756e37be7808e3f93796718d6ba52b4ec1fa7c81b7d07d3caba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2561be7b-5f05-cb3c-1f18-912d6ee8f94b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma isLeftAdjoint_triangle_lift_comonadic (F : B ⥤ A) [ComonadicLeftAdjoint F] {L : C ⥤ B}
    [HasCoreflexiveEqualizers C] [(L ⋙ F).IsLeftAdjoint] : L.IsLeftAdjoint := by
  let L' : _ ⥤ _ := L ⋙ Comonad.comparison (comonadicAdjunction F)
  rsuffices : L'.IsLeftAdjoint
  · let : (L' ⋙ (Comonad.comparison (comonadicAdjunction F)).inv).IsLeftAdjoint := by
      infer_instance
    refine ((Adjunction.ofIsLeftAdjoint
      (L' ⋙ (Comonad.comparison (comonadicAdjunction F)).inv)).ofNatIsoLeft ?_).isLeftAdjoint
    exact Functor.isoWhiskerLeft L (Comonad.comparison _).asEquivalence.unitIso.symm ≪≫ L.leftUnitor
  let : (L' ⋙ Comonad.forget (comonadicAdjunction F).toComonad).IsLeftAdjoint := by
    refine ((Adjunction.ofIsLeftAdjoint (L ⋙ F)).ofNatIsoLeft ?_).isLeftAdjoint
    exact Functor.isoWhiskerLeft L (Comonad.comparisonForget (comonadicAdjunction F)).symm
  let : ∀ X, RegularMono ((Comonad.adj (comonadicAdjunction F).toComonad).unit.app X) := by
    intro X
    simp only [Comonad.adj_unit]
    exact ⟨_, _, _, _, Comonad.beckCoalgebraEqualizer X⟩
  exact isLeftAdjoint_triangle_lift L' (Comonad.adj _) this

variable {D : Type u₄}
variable [Category.{v₄} D]

/-- Suppose we have a commutative square of functors

```
      Q
    A → B
  U ↓   ↓ V
    C → D
      L
```

where `U` has a right adjoint, `A` has coreflexive equalizers and `V` has a right adjoint such that
each component of the counit is a regular mono.
Then `Q` has a right adjoint if `L` has a right adjoint.

See https://ncatlab.org/nlab/show/adjoint+lifting+theorem
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant19c34bacc6af2756e37be7808e3f93796718d6ba52b4ec1fa7c81b7d07d3caba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant19c34bacc6af2756e37be7808e3f93796718d6ba52b4ec1fa7c81b7d07d3caba.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d014feebe1015ce4430db93a6bb7fb145381013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
