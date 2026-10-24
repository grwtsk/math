# geometric_hahn_banach_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43adc2ddf870b6397ead073392db718cbc6e4e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e00b944-b502-3d53-5780-8e1314657b78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e87e4c09-5073-f724-6808-663f3f3de8b1",
  "kind": "theorem",
  "lexical_name": "geometric_hahn_banach_open",
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
  "slug": "geometric-hahn-banach-open--70bb26e2f4faa996002c8e08",
  "source": {
    "blob": "c43adc2ddf870b6397ead073392db718cbc6e4e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 84,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70bb26e2f4faa996002c8e087ee3ea35cfb4861abe2c4114d3bad80e3de4e4d5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e87e4c09-5073-f724-6808-663f3f3de8b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometric_hahn_banach_open (hs₁ : Convex ℝ s) (hs₂ : IsOpen s) (ht : Convex ℝ t)
    (disj : Disjoint s t) : ∃ (f : E →L[ℝ] ℝ) (u : ℝ), (∀ a ∈ s, f a < u) ∧ ∀ b ∈ t, u ≤ f b := by
  obtain rfl | ⟨a₀, ha₀⟩ := s.eq_empty_or_nonempty
  · exact ⟨0, 0, by simp, fun b _hb => le_rfl⟩
  obtain rfl | ⟨b₀, hb₀⟩ := t.eq_empty_or_nonempty
  · exact ⟨0, 1, fun a _ha => zero_lt_one, by simp⟩
  let x₀ := b₀ - a₀
  let C := x₀ +ᵥ (s - t)
  have : (0 : E) ∈ C :=
    ⟨a₀ - b₀, sub_mem_sub ha₀ hb₀, by simp_rw [vadd_eq_add, sub_add_sub_cancel', sub_self]⟩
  have : Convex ℝ C := (hs₁.sub ht).vadd _
  have : x₀ ∉ C := by
    intro hx₀
    rw [← add_zero x₀] at hx₀
    exact disj.zero_not_mem_sub_set (vadd_mem_vadd_set_iff.1 hx₀)
  obtain ⟨f, hf₁, hf₂⟩ := separate_convex_open_set ‹0 ∈ C› ‹_› (hs₂.sub_right.vadd _) ‹x₀ ∉ C›
  have : f b₀ = f a₀ + 1 := by simp [← hf₁]
  have forall_le : ∀ a ∈ s, ∀ b ∈ t, f a ≤ f b := by
    intro a ha b hb
    have := hf₂ (x₀ + (a - b)) (vadd_mem_vadd_set <| sub_mem_sub ha hb)
    simp only [f.map_add, f.map_sub, hf₁] at this
    linarith
  refine' ⟨f, sInf (f '' t), image_subset_iff.1 (_ : f '' s ⊆ Iio (sInf (f '' t))), fun b hb => _⟩
  · rw [← interior_Iic]
    refine' interior_maximal (image_subset_iff.2 fun a ha => _) (f.isOpenMap_of_ne_zero _ _ hs₂)
    · exact le_csInf (Nonempty.image _ ⟨_, hb₀⟩) (ball_image_of_ball <| forall_le _ ha)
    · rintro rfl
      simp at hf₁
  · exact csInf_le ⟨f a₀, ball_image_of_ball <| forall_le _ ha₀⟩ (mem_image_of_mem _ hb)
#align geometric_hahn_banach_open geometric_hahn_banach_open

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43adc2ddf870b6397ead073392db718cbc6e4e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
