# isPushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae3c3f3cde6555c13d871454a132d1868a92db04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 395,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:445d40ac-73ab-ace7-32fb-b6cfb20f6f35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2508cd87-48ec-99c9-61b1-c3a596053558",
  "kind": "lemma",
  "lexical_name": "isPushout",
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
  "slug": "ispushout--7853fc16347a9a7c15bf2aae",
  "source": {
    "blob": "ae3c3f3cde6555c13d871454a132d1868a92db04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 395,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7853fc16347a9a7c15bf2aae067e2eb9efabc204ff4eb6c9dd0da657aba4aea9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2508cd87-48ec-99c9-61b1-c3a596053558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPushout : IsPushout (t i d) (l i d) (r i d) (b i d) where
  w := w i d
  isColimit' := ⟨evaluationJointlyReflectsColimits _ (fun ⟨⟨n⟩⟩ ↦ by
    refine (isColimitMapCoconePushoutCoconeEquiv _ _).2
      (IsPushout.isColimit ?_)
    refine Types.isPushout_of_isPullback_of_mono' ?_ ?_ ?_
    · exact (isPullback i d).map ((evaluation _ _).obj _)
    · exact range_r_app_union_range_b_app _ _ _
    · dsimp
      intro x₁ x₂ hx₁ hx₂ h
      obtain ⟨c₁, f₁, _, rfl⟩ := isPushout_aux x₁ hx₁
      obtain ⟨c₂, f₂, _, rfl⟩ := isPushout_aux x₂ hx₂
      rw [Subtype.ext_iff] at h
      replace h : Y.map f₁.op c₁.simplex = Y.map f₂.op c₂.simplex := by
        rwa [← c₁.b_app_ι_app_objEquiv_symm_val f₁, ← c₂.b_app_ι_app_objEquiv_symm_val f₂]
      obtain rfl : c₁ = c₂ := by
        ext
        exact Subtype.ext_iff.mp
          (Y.unique_nonDegenerate_simplex _ f₁ ⟨_, c₁.nonDegenerate⟩ rfl
            f₂ ⟨_, c₂.nonDegenerate⟩ h)
      obtain rfl : f₁ = f₂ :=
        Y.unique_nonDegenerate_map _ f₁ ⟨_, c₁.nonDegenerate⟩ rfl
          f₂ ⟨_, c₁.nonDegenerate⟩ h
      rfl)⟩

end relativeCellComplexOfMono

set_option backward.defeqAttrib.useBackward true in
open relativeCellComplexOfMono in
/-- If `i : X ⟶ Y` is a monomorphism of simplicial sets, then it is a relative cell
complex with basic cells given by boundary inclusions `∂Δ[d] ⟶ Δ[d]`, one for each
nondegenerate `d`-simplex of `Y` not in the range of `X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae3c3f3cde6555c13d871454a132d1868a92db04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
