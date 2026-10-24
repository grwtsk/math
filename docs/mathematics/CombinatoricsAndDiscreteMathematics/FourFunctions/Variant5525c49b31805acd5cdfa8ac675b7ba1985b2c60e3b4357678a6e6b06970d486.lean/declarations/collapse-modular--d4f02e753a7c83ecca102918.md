# collapse_modular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e475d3e3-c82e-3b3d-6cfc-f70dd61b3914",
  "kind": "lemma",
  "lexical_name": "collapse_modular",
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
  "slug": "collapse-modular--d4f02e753a7c83ecca102918",
  "source": {
    "blob": "adc34eaf2b1dbafd34da9d2464810e6fb854e024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4f02e753a7c83ecca102918ef60b6f70668e5a443ead840a6e86380354af096",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e475d3e3-c82e-3b3d-6cfc-f70dd61b3914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma collapse_modular [ExistsAddOfLE β]
    (hu : a ∉ u) (h₁ : 0 ≤ f₁) (h₂ : 0 ≤ f₂) (h₃ : 0 ≤ f₃) (h₄ : 0 ≤ f₄)
    (h : ∀ ⦃s⦄, s ⊆ insert a u → ∀ ⦃t⦄, t ⊆ insert a u →  f₁ s * f₂ t ≤ f₃ (s ∩ t) * f₄ (s ∪ t))
    (𝒜 ℬ : Finset (Finset α)) :
    ∀ ⦃s⦄, s ⊆ u → ∀ ⦃t⦄, t ⊆ u → collapse 𝒜 a f₁ s * collapse ℬ a f₂ t ≤
      collapse (𝒜 ⊼ ℬ) a f₃ (s ∩ t) * collapse (𝒜 ⊻ ℬ) a f₄ (s ∪ t) := by
  rintro s hsu t htu
  -- Gather a bunch of facts we'll need a lot
  have := hsu.trans <| subset_insert a _
  have := htu.trans <| subset_insert a _
  have := insert_subset_insert a hsu
  have := insert_subset_insert a htu
  have has := notMem_mono hsu hu
  have hat := notMem_mono htu hu
  have : a ∉ s ∩ t := notMem_mono (inter_subset_left.trans hsu) hu
  have := notMem_union.2 ⟨has, hat⟩
  rw [collapse_eq has]
  split_ifs
  · rw [collapse_eq hat]
    split_ifs
    · rw [collapse_of_mem ‹_› (inter_mem_infs ‹_› ‹_›) (inter_mem_infs ‹_› ‹_›) rfl
        (insert_inter_distrib _ _ _).symm, collapse_of_mem ‹_› (union_mem_sups ‹_› ‹_›)
        (union_mem_sups ‹_› ‹_›) rfl (insert_union_distrib _ _ _).symm]
      refine ineq (h₁ _) (h₁ _) (h₂ _) (h₂ _) (h₃ _) (h₃ _) (h₄ _) (h₄ _) (h ‹_› ‹_›) ?_ ?_ ?_
      · simpa [*] using h ‹insert a s ⊆ _› ‹t ⊆ _›
      · simpa [*] using h ‹s ⊆ _› ‹insert a t ⊆ _›
      · simpa [*] using h ‹insert a s ⊆ _› ‹insert a t ⊆ _›
    · rw [add_zero, add_mul]
      refine (add_le_add (h ‹_› ‹_›) <| h ‹_› ‹_›).trans ?_
      rw [collapse_of_mem ‹_› (union_mem_sups ‹_› ‹_›) (union_mem_sups ‹_› ‹_›) rfl
        (insert_union _ _ _), insert_inter_of_notMem ‹_›, ← mul_add]
      gcongr
      exacts [add_nonneg (h₄ _) <| h₄ _, le_collapse_of_mem ‹_› h₃ rfl <| inter_mem_infs ‹_› ‹_›]
    · rw [zero_add, add_mul]
      refine (add_le_add (h ‹_› ‹_›) <| h ‹_› ‹_›).trans ?_
      rw [collapse_of_mem ‹_› (inter_mem_infs ‹_› ‹_›) (inter_mem_infs ‹_› ‹_›)
        (inter_insert_of_notMem ‹_›) (insert_inter_distrib _ _ _).symm, union_insert,
        insert_union_distrib, ← add_mul]
      gcongr
      exacts [add_nonneg (h₃ _) <| h₃ _,
        le_collapse_of_insert_mem ‹_› h₄ (insert_union_distrib _ _ _).symm (union_mem_sups ‹_› ‹_›)]
    · rw [add_zero, mul_zero]
      exact mul_nonneg (collapse_nonneg h₃ _) <| collapse_nonneg h₄ _
  · rw [add_zero, collapse_eq hat, mul_add]
    split_ifs
    · refine (add_le_add (h ‹_› ‹_›) <| h ‹_› ‹_›).trans ?_
      rw [collapse_of_mem ‹_› (union_mem_sups ‹_› ‹_›) (union_mem_sups ‹_› ‹_›) rfl
        (union_insert _ _ _), inter_insert_of_notMem ‹_›, ← mul_add]
      exact mul_le_mul_of_nonneg_right (le_collapse_of_mem ‹_› h₃ rfl <| inter_mem_infs ‹_› ‹_›) <|
        add_nonneg (h₄ _) <| h₄ _
    · rw [mul_zero, add_zero]
      exact (h ‹_› ‹_›).trans <| mul_le_mul (le_collapse_of_mem ‹_› h₃ rfl <|
        inter_mem_infs ‹_› ‹_›) (le_collapse_of_mem ‹_› h₄ rfl <| union_mem_sups ‹_› ‹_›)
        (h₄ _) <| collapse_nonneg h₃ _
    · rw [mul_zero, zero_add]
      refine (h ‹_› ‹_›).trans <| mul_le_mul ?_ (le_collapse_of_insert_mem ‹_› h₄
        (union_insert _ _ _) <| union_mem_sups ‹_› ‹_›) (h₄ _) <| collapse_nonneg h₃ _
      exact le_collapse_of_mem (notMem_mono inter_subset_left ‹_›) h₃
        (inter_insert_of_notMem ‹_›) <| inter_mem_infs ‹_› ‹_›
    · simp_rw [mul_zero, add_zero]
      exact mul_nonneg (collapse_nonneg h₃ _) <| collapse_nonneg h₄ _
  · rw [zero_add, collapse_eq hat, mul_add]
    split_ifs
    · refine (add_le_add (h ‹_› ‹_›) <| h ‹_› ‹_›).trans ?_
      rw [collapse_of_mem ‹_› (inter_mem_infs ‹_› ‹_›) (inter_mem_infs ‹_› ‹_›)
        (insert_inter_of_notMem ‹_›) (insert_inter_distrib _ _ _).symm,
        insert_inter_of_notMem ‹_›, ← insert_inter_distrib, insert_union, insert_union_distrib,
        ← add_mul]
      exact mul_le_mul_of_nonneg_left (le_collapse_of_insert_mem ‹_› h₄
        (insert_union_distrib _ _ _).symm <| union_mem_sups ‹_› ‹_›) <| add_nonneg (h₃ _) <| h₃ _
    · rw [mul_zero, add_zero]
      refine (h ‹_› ‹_›).trans <| mul_le_mul (le_collapse_of_mem ‹_› h₃
        (insert_inter_of_notMem ‹_›) <| inter_mem_infs ‹_› ‹_›) (le_collapse_of_insert_mem ‹_› h₄
        (insert_union _ _ _) <| union_mem_sups ‹_› ‹_›) (h₄ _) <| collapse_nonneg h₃ _
    · rw [mul_zero, zero_add]
      exact (h ‹_› ‹_›).trans <| mul_le_mul (le_collapse_of_insert_mem ‹_› h₃
        (insert_inter_distrib _ _ _).symm <| inter_mem_infs ‹_› ‹_›) (le_collapse_of_insert_mem ‹_›
        h₄ (insert_union_distrib _ _ _).symm <| union_mem_sups ‹_› ‹_›) (h₄ _) <|
        collapse_nonneg h₃ _
    · simp_rw [mul_zero, add_zero]
      exact mul_nonneg (collapse_nonneg h₃ _) <| collapse_nonneg h₄ _
  · simp_rw [add_zero, zero_mul]
    exact mul_nonneg (collapse_nonneg h₃ _) <| collapse_nonneg h₄ _

omit [LinearOrder β] [IsStrictOrderedRing β] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adc34eaf2b1dbafd34da9d2464810e6fb854e024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
