# Generates.isSheaf_of_forall_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5925f121-8516-3dce-5f13-7c75fc282947",
  "kind": "lemma",
  "lexical_name": "Generates.isSheaf_of_forall_aux",
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
  "slug": "generates-issheaf-of-forall-aux--82c3fe5f867363b65276b97e",
  "source": {
    "blob": "6f15fc11e711398d12d55d278d089a2d833413dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantd12a27f91e017ab9986f06e3c1cff0b8407fb7afe437056a5eaa070127455f01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82c3fe5f867363b65276b97eb45f550eb66f4ad14efd26a748238d1f7db9d7e0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantd12a27f91e017ab9986f06e3c1cff0b8407fb7afe437056a5eaa070127455f01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5925f121-8516-3dce-5f13-7c75fc282947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma Generates.isSheaf_of_forall_aux (h : K.Generates J) (F : Cᵒᵖ ⥤ Type w)
    (H : ∀ ⦃X : C⦄, ∀ R ∈ K X, Presieve.IsSheafFor F R)
    [∀ (Z : C), _root_.Small.{max u v} (F.obj (.op Z))] :
    Presieve.IsSheaf J F := by
  intro X S hS
  let F' : Cᵒᵖ ⥤ Type max u v := FunctorToTypes.shrink F
  let e (X : C) : F.obj (.op X) ≃ F'.obj (.op X) := equivShrink _
  have he (X Y : C) (f : X ⟶ Y) (x : F.obj (.op Y)) :
      (e X) (F.map f.op x) = F'.map f.op (e Y x) := by
    simp [e, F']
  rw [Presieve.isSheafFor_iff_of_nat_equiv e he] at ⊢
  refine h.isSheaf_of_forall_max F' (fun X R hR ↦ ?_) _ hS
  rw [← Presieve.isSheafFor_iff_of_nat_equiv e he]
  exact H _ hR

/-- If `K` generates `J`, then any presheaf `Cᵒᵖ ⥤ Type w` that satisfies the sheaf
condition for all `K`-coverings, is a `J`-sheaf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantd12a27f91e017ab9986f06e3c1cff0b8407fb7afe437056a5eaa070127455f01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantd12a27f91e017ab9986f06e3c1cff0b8407fb7afe437056a5eaa070127455f01.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f15fc11e711398d12d55d278d089a2d833413dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
