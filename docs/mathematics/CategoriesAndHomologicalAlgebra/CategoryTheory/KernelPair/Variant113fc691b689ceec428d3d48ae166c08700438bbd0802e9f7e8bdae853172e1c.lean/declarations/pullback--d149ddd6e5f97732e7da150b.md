# pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc72d8a6b155c3fed940cce4bca724aa389b6ce1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37788548-6611-ef6c-6acb-827c27c8d01b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcf9aa32-4201-71b0-b57f-f9e0f62a0a37",
  "kind": "theorem",
  "lexical_name": "pullback",
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
  "slug": "pullback--d149ddd6e5f97732e7da150b",
  "source": {
    "blob": "fc72d8a6b155c3fed940cce4bca724aa389b6ce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 173,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d149ddd6e5f97732e7da150b617e4c7018da821f168ed7e91cae8593a488b615",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcf9aa32-4201-71b0-b57f-f9e0f62a0a37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem pullback {X Y Z A : C} {g : Y ⟶ Z} {a₁ a₂ : A ⟶ Y} (h : IsKernelPair g a₁ a₂)
    (f : X ⟶ Z) [HasPullback f g] [HasPullback f (a₁ ≫ g)] :
    IsKernelPair (pullback.fst : pullback f g ⟶ X)
      (pullback.map f _ f _ (𝟙 X) a₁ (𝟙 Z) (by simp) <| Category.comp_id _)
      (pullback.map _ _ _ _ (𝟙 X) a₂ (𝟙 Z) (by simp) <| (Category.comp_id _).trans h.1.1) := by
  refine' ⟨⟨by rw [pullback.lift_fst, pullback.lift_fst]⟩, ⟨PullbackCone.isLimitAux _
    (fun s => pullback.lift (s.fst ≫ pullback.fst)
      (h.lift (s.fst ≫ pullback.snd) (s.snd ≫ pullback.snd) _ ) _) (fun s => _) (fun s => _)
        (fun s m hm => _)⟩⟩
  · simp_rw [Category.assoc, ← pullback.condition, ← Category.assoc, s.condition]
  · simp only [assoc, lift_fst_assoc, pullback.condition]
  · ext <;> simp
  · ext
    · simp [s.condition]
    · simp
  · apply pullback.hom_ext
    · simpa using hm WalkingCospan.left =≫ pullback.fst
    · apply PullbackCone.IsLimit.hom_ext h.isLimit
      · simpa using hm WalkingCospan.left =≫ pullback.snd
      · simpa using hm WalkingCospan.right =≫ pullback.snd
#align category_theory.is_kernel_pair.pullback CategoryTheory.IsKernelPair.pullback

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelPair/Variant113fc691b689ceec428d3d48ae166c08700438bbd0802e9f7e8bdae853172e1c.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc72d8a6b155c3fed940cce4bca724aa389b6ce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
