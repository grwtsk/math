# isLeftAdjoint_triangle_lift_comonadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7cf13826c25f294053ef4b9276f1a8400fe42251",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3808c6634009cd66b4218343180fc76cf84394ce505a0b80df56ba1fad8557dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57b7ab9a-8160-1114-30f3-0c81b293ee0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf61fa73-c4f5-e22a-e312-59e28eeea57c",
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
  "slug": "isleftadjoint-triangle-lift-comonadic--64e118cedcf2de27e4c5cf41",
  "source": {
    "blob": "7cf13826c25f294053ef4b9276f1a8400fe42251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 191,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant3808c6634009cd66b4218343180fc76cf84394ce505a0b80df56ba1fad8557dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64e118cedcf2de27e4c5cf41147d9ce6558a204e4366d8e33f39d52a1a6c8721",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant3808c6634009cd66b4218343180fc76cf84394ce505a0b80df56ba1fad8557dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf61fa73-c4f5-e22a-e312-59e28eeea57c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–227.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant3808c6634009cd66b4218343180fc76cf84394ce505a0b80df56ba1fad8557dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Right/Variant3808c6634009cd66b4218343180fc76cf84394ce505a0b80df56ba1fad8557dd.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cf13826c25f294053ef4b9276f1a8400fe42251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
