# ι_singularChainComplexFunctorAdjunction_counit_app_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e005cdf8ce08c3f49aff9c46b0a8c4fbca0bc957",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d513ab662bb7e4800955354c0994d5375663e057914103df074b2ead0e6a526.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e794a3b3-b598-0cb9-6665-d3c517d6eaff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30699e4e-ba83-4e05-8e46-f1828189e101",
  "kind": "lemma",
  "lexical_name": "ι_singularChainComplexFunctorAdjunction_counit_app_app",
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
  "slug": "singularchaincomplexfunctoradjunction-counit-app-app--6f7c57ace954cc3f7cdf56b5",
  "source": {
    "blob": "e005cdf8ce08c3f49aff9c46b0a8c4fbca0bc957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4d513ab662bb7e4800955354c0994d5375663e057914103df074b2ead0e6a526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f7c57ace954cc3f7cdf56b51dcdcb57163368a38db9709fba292e1f20ec5775",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4d513ab662bb7e4800955354c0994d5375663e057914103df074b2ead0e6a526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30699e4e-ba83-4e05-8e46-f1828189e101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_singularChainComplexFunctorAdjunction_counit_app_app (F : TopCat ⥤ C) (X : TopCat) (i) :
    Sigma.ι _ i ≫ ((singularChainComplexFunctorAdjunction C n).counit.app F).app X =
      F.map i.down := by
  trans F.map (SSet.toTopSimplex.inv.app ⦋n⦌ ≫ SSet.toTop.map (SSet.yonedaEquiv.symm i) ≫
      sSetTopAdj.counit.app X)
  · dsimp [singularChainComplexFunctorAdjunction, Adjunction.ofNatIsoRight,
      Adjunction.equivHomsetRightOfNatIso, Adjunction.homEquiv,
      Adjunction.comp, singularChainComplexFunctor, SSet.chainComplexFunctor,
      SSet.chainComplexFunctorAdjunction]
    simp
  · congr 1
    rw [← reassoc_of% sSetTopAdj_unit_app_app_down]
    exact congr(($(sSetTopAdj.right_triangle_components X).app (.op ⦋n⦌) i).down)

end Adjunction

section TotallyDisconnectedSpace

variable (R : C) (X : TopCat.{w}) [TotallyDisconnectedSpace X]

/-- If `X` is totally disconnected,
its singular chain complex is given by `R[X] ←0- R[X] ←𝟙- R[X] ←0- R[X] ⋯`,
where `R[X]` is the coproduct of copies of `R` indexed by elements of `X`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4d513ab662bb7e4800955354c0994d5375663e057914103df074b2ead0e6a526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4d513ab662bb7e4800955354c0994d5375663e057914103df074b2ead0e6a526.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e005cdf8ce08c3f49aff9c46b0a8c4fbca0bc957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
