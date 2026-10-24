# IsOneHypercoverDense.of_hasPullbacks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "382ea4478ab53131c06e22ee23b4703e6f50cdec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40ee9cc0-c53d-accd-4c84-99b36bceda98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4c5eb17-5c04-043b-da88-21b810d6b433",
  "kind": "lemma",
  "lexical_name": "IsOneHypercoverDense.of_hasPullbacks",
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
  "slug": "isonehypercoverdense-of-haspullbacks--c60b996d1f29b3ca90842e19",
  "source": {
    "blob": "382ea4478ab53131c06e22ee23b4703e6f50cdec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c60b996d1f29b3ca90842e19738249f2841ac13b20634ca8441b10bcf72dc978",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4c5eb17-5c04-043b-da88-21b810d6b433`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOneHypercoverDense.of_hasPullbacks [HasPullbacks C] [F.Full] [F.Faithful]
    (hF : ∀ (S : C), ∃ (ι : Type w) (U : ι → C₀) (f : ∀ i, F.obj (U i) ⟶ S),
      Sieve.ofArrows _ f ∈ J S) :
    IsOneHypercoverDense.{w} F J₀ J where
  nonempty_oneHypercoverDenseData S := by
    choose ι U f hf using hF
    exact ⟨{
      I₀ := ι S
      X := U S
      f := f S
      I₁ i j := ι (pullback (f _ i) (f _ j))
      Y i j := U (pullback (f _ i) (f _ j))
      p₁ i j k := F.preimage (f _ k ≫ pullback.fst _ _)
      p₂ i j k := F.preimage (f _ k ≫ pullback.snd _ _)
      w i j k := by simp [pullback.condition]
      mem₀ := hf S
      mem₁₀ i j W₀ p₁ p₂ hp := by
        have := IsDenseSubsite.isCoverDense J₀ J F
        rw [← functorPushforward_mem_iff J₀ J F]
        refine J.superset_covering ?_
          (IsCoverDense.functorPullback_pushforward_covering
            ⟨_, J.pullback_stable (pullback.lift _ _ hp) (hf (pullback (f _ i) (f _ j)))⟩)
        rintro T _ ⟨Z, q, r, ⟨_, s, _, ⟨k⟩, fac⟩, rfl⟩
        have fac₁ := fac =≫ pullback.fst _ _
        have fac₂ := fac =≫ pullback.snd _ _
        simp only [Category.assoc, pullback.lift_fst, pullback.lift_snd] at fac₁ fac₂
        exact ⟨Z, q, r, ⟨k, F.preimage s, F.map_injective (by simp [fac₁]),
          F.map_injective (by simp [fac₂])⟩, rfl⟩ }⟩

namespace OneHypercoverDenseData

variable {F J₀ J}

section

variable {X : C} (data : OneHypercoverDenseData.{w} F J₀ J X)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `382ea4478ab53131c06e22ee23b4703e6f50cdec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
