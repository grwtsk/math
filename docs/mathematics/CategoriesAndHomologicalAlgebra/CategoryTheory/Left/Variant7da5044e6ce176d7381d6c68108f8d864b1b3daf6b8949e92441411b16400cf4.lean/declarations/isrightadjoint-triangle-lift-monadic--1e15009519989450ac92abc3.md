# isRightAdjoint_triangle_lift_monadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39ce864468583a432364ebc2654454b9b639a03c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7da5044e6ce176d7381d6c68108f8d864b1b3daf6b8949e92441411b16400cf4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58936e67-c5d9-eedf-77ce-1443d9900ee3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b3d57dd-b964-9071-354c-94f668503620",
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
  "slug": "isrightadjoint-triangle-lift-monadic--1e15009519989450ac92abc3",
  "source": {
    "blob": "39ce864468583a432364ebc2654454b9b639a03c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant7da5044e6ce176d7381d6c68108f8d864b1b3daf6b8949e92441411b16400cf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e15009519989450ac92abc370c85461e3ccce5da52370c0d7fe583c64389873",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant7da5044e6ce176d7381d6c68108f8d864b1b3daf6b8949e92441411b16400cf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b3d57dd-b964-9071-354c-94f668503620`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–236.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant7da5044e6ce176d7381d6c68108f8d864b1b3daf6b8949e92441411b16400cf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant7da5044e6ce176d7381d6c68108f8d864b1b3daf6b8949e92441411b16400cf4.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39ce864468583a432364ebc2654454b9b639a03c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
