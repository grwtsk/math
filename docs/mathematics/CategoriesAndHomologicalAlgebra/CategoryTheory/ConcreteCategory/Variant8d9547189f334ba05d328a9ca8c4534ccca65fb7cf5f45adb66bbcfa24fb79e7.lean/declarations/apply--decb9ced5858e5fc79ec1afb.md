# δ_apply'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d78973d-93db-d8e3-b2f5-09e53be97f1d",
  "kind": "lemma",
  "lexical_name": "δ_apply'",
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
  "slug": "apply--decb9ced5858e5fc79ec1afb",
  "source": {
    "blob": "5cba0cfe271fef79fcd3aff0edf9f0376dc4a46d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:decb9ced5858e5fc79ec1afb8a4b3b579661c18b182566b93d0de084fe443548",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d78973d-93db-d8e3-b2f5-09e53be97f1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ_apply' (x₃ : (forget₂ C Ab).obj D.L₀.X₃)
    (x₂ : (forget₂ C Ab).obj D.L₁.X₂) (x₁ : (forget₂ C Ab).obj D.L₂.X₁)
    (h₂ : (forget₂ C Ab).map D.L₁.g x₂ = (forget₂ C Ab).map D.v₀₁.τ₃ x₃)
    (h₁ : (forget₂ C Ab).map D.L₂.f x₁ = (forget₂ C Ab).map D.v₁₂.τ₂ x₂) :
    (forget₂ C Ab).map D.δ x₃ = (forget₂ C Ab).map D.v₂₃.τ₁ x₁ := by
  have e : forget₂ C Ab ⋙ forget Ab ≅ forget C := eqToIso (HasForget₂.forget_comp)
  apply (mono_iff_injective (e.hom.app _)).1 inferInstance
  refine (congr_hom (e.hom.naturality D.δ) x₃).trans
    ((D.δ_apply (e.hom.app _ x₃) (e.hom.app _ x₂) (e.hom.app _ x₁) ?_ ?_ ).trans
    (congr_hom (e.hom.naturality D.v₂₃.τ₁).symm x₁))
  · refine ((congr_fun (e.hom.naturality D.L₁.g) x₂).symm.trans ?_).trans
      (congr_fun (e.hom.naturality D.v₀₁.τ₃) x₃)
    dsimp
    rw [h₂]
  · refine ((congr_fun (e.hom.naturality D.L₂.f) x₁).symm.trans ?_).trans
      (congr_fun (e.hom.naturality D.v₁₂.τ₂) x₂)
    dsimp
    rw [h₁]

end SnakeInput

end ShortComplex

end abelian

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cba0cfe271fef79fcd3aff0edf9f0376dc4a46d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
