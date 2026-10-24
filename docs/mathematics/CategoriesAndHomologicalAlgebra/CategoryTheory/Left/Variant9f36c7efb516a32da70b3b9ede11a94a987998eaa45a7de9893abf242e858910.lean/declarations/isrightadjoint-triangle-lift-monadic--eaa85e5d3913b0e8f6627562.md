# isRightAdjoint_triangle_lift_monadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a71adf03-7cd7-d7d2-1fe5-273e28d0c3fb",
  "kind": "lemma",
  "lexical_name": "isRightAdjoint_triangle_lift_monadic",
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
  "slug": "isrightadjoint-triangle-lift-monadic--eaa85e5d3913b0e8f6627562",
  "source": {
    "blob": "5c7c97a260cd0c7a44526512b7724c257cd104bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaa85e5d3913b0e8f66275627fa3dd67f7432f3410bf6836ffc78c9b6fcd5f63",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a71adf03-7cd7-d7d2-1fe5-273e28d0c3fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma isRightAdjoint_triangle_lift_monadic (U : B ⥤ C) [MonadicRightAdjoint U] {R : A ⥤ B}
    [HasReflexiveCoequalizers A] [(R ⋙ U).IsRightAdjoint] : R.IsRightAdjoint := by
  let R' : A ⥤ _ := R ⋙ Monad.comparison (monadicAdjunction U)
  rsuffices : R'.IsRightAdjoint
  · let : (R' ⋙ (Monad.comparison (monadicAdjunction U)).inv).IsRightAdjoint := by
      infer_instance
    refine ((Adjunction.ofIsRightAdjoint
      (R' ⋙ (Monad.comparison (monadicAdjunction U)).inv)).ofNatIsoRight ?_).isRightAdjoint
    exact Functor.isoWhiskerLeft R (Monad.comparison _).asEquivalence.unitIso.symm ≪≫ R.rightUnitor
  let : (R' ⋙ Monad.forget (monadicAdjunction U).toMonad).IsRightAdjoint := by
    refine ((Adjunction.ofIsRightAdjoint (R ⋙ U)).ofNatIsoRight ?_).isRightAdjoint
    exact Functor.isoWhiskerLeft R (Monad.comparisonForget (monadicAdjunction U)).symm
  let : ∀ X, RegularEpi ((Monad.adj (monadicAdjunction U).toMonad).counit.app X) := by
    intro X
    simp only [Monad.adj_counit]
    exact ⟨_, _, _, _, Monad.beckAlgebraCoequalizer X⟩
  exact isRightAdjoint_triangle_lift R' (Monad.adj _) this

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

where `U` has a left adjoint, `A` has reflexive coequalizers and `V` has a left adjoint such that
each component of the counit is a regular epi.
Then `Q` has a left adjoint if `R` has a left adjoint.

See https://ncatlab.org/nlab/show/adjoint+lifting+theorem
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7c97a260cd0c7a44526512b7724c257cd104bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
