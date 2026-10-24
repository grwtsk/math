# exists_map_eq_of_sorted_nonempty_iff_wbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:579438ad-be0f-3033-82c4-77b0ec5dec1d",
  "kind": "lemma",
  "lexical_name": "exists_map_eq_of_sorted_nonempty_iff_wbtw",
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
  "slug": "exists-map-eq-of-sorted-nonempty-iff-wbtw--e778a97d74bc19f71375a291",
  "source": {
    "blob": "6df737761c9dd3f993e7382e6cadd0d1f95cfbac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 198,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e778a97d74bc19f71375a291c900e3251437c91453772dc9f32e1418796d3697",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:579438ad-be0f-3033-82c4-77b0ec5dec1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_map_eq_of_sorted_nonempty_iff_wbtw {l : List P} (hl : l ≠ []) :
    (∃ l' : List R, l'.SortedLE ∧ l'.map (lineMap (l.head hl) (l.getLast hl)) = l) ↔
      l.Wbtw R := by
  refine ⟨fun ⟨l', hl's, hl'l⟩ ↦ ?_, fun h ↦ ?_⟩
  · rw [← hl'l]
    exact Wbtw.map hl's.wbtw _
  · suffices ∃ l' : List R, (∀ a ∈ l', 0 ≤ a) ∧ l'.SortedLE ∧
        l'.map (lineMap (l.head hl) (l.getLast hl)) = l by
      rcases this with ⟨l', -, hl'⟩
      exact ⟨l', hl'⟩
    induction l with
    | nil => simp at hl
    | cons head tail ih =>
      by_cases ht : tail = []
      · refine ⟨[0], ?_⟩
        simp [ht, sortedLE_iff_pairwise]
      · rw [wbtw_cons] at h
        replace ih := ih ht h.2
        rcases ih with ⟨l'', hl''0, hl''s, hl''⟩
        simp only [head_cons, getLast_cons ht]
        cases tail with
        | nil => simp at ht
        | cons head2 tail =>
          by_cases ht2 : tail = []
          · exact ⟨[0, 1], by simp [ht2, sortedLE_iff_pairwise]⟩
          · simp only [head_cons, getLast_cons ht2] at hl'' ⊢
            rw [pairwise_cons] at h
            have hw := h.1.1 _ (getLast_mem ht2)
            rcases hw with ⟨r, ⟨hr0, hr1⟩, rfl⟩
            refine ⟨0 :: l''.map fun x ↦ r + (1 - r) * x, ?_, ?_, ?_⟩
            · simp only [mem_cons, mem_map, forall_eq_or_imp, le_refl, forall_exists_index,
                and_imp, forall_apply_eq_imp_iff₂, true_and]
              intro a ha
              have := hl''0 a ha
              nlinarith
            · simp only [sortedLE_iff_pairwise, pairwise_cons, mem_map,
                forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
              refine ⟨?_, ?_⟩
              · intro a ha
                have := hl''0 a ha
                nlinarith
              · refine hl''s.pairwise.map _ fun a b hab ↦ ?_
                gcongr
            · simp only [map_cons, lineMap_apply_zero, map_map, ← hl'', cons.injEq,
                map_inj_left, Function.comp_apply, lineMap_lineMap_left, lineMap_eq_lineMap_iff,
                true_and]
              ring_nf
              simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Variantb7cc906ab4a0132ffdee60eaa88fb6a1e1a8db8e2bedb8d642c4b991a8cdfc03.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df737761c9dd3f993e7382e6cadd0d1f95cfbac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
