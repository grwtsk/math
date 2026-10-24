# exists_map_eq_of_sorted_nonempty_iff_wbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c01b684-ae45-454c-6710-ee7b01c7dbeb",
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
  "slug": "exists-map-eq-of-sorted-nonempty-iff-wbtw--9d6af529818d02f1a4b877bb",
  "source": {
    "blob": "08d1841490974239509a830cdc39c4585bc5a0d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d6af529818d02f1a4b877bb9021b3fe6484d77298d34af1e483419886efe301",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c01b684-ae45-454c-6710-ee7b01c7dbeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_map_eq_of_sorted_nonempty_iff_wbtw {l : List P} (hl : l ≠ []) :
    (∃ l' : List R, l'.Sorted (· ≤ ·) ∧ l'.map (lineMap (l.head hl) (l.getLast hl)) = l) ↔
      l.Wbtw R := by
  refine ⟨fun ⟨l', hl's, hl'l⟩ ↦ ?_, fun h ↦ ?_⟩
  · rw [← hl'l]
    exact Wbtw.map hl's.wbtw _
  · suffices ∃ l' : List R, (∀ a ∈ l', 0 ≤ a) ∧ l'.Sorted (· ≤ ·) ∧
        l'.map (lineMap (l.head hl) (l.getLast hl)) = l by
      rcases this with ⟨l', -, hl'⟩
      exact ⟨l', hl'⟩
    induction l with
    | nil => simp at hl
    | cons head tail ih =>
      by_cases ht : tail = []
      · refine ⟨[0], ?_⟩
        simp [ht]
      · rw [wbtw_cons] at h
        replace ih := ih ht h.2
        rcases ih with ⟨l'', hl''0, hl''s, hl''⟩
        simp only [head_cons, getLast_cons ht]
        cases tail with
        | nil => simp at ht
        | cons head2 tail =>
          by_cases ht2 : tail = []
          · exact ⟨[0, 1], by simp [ht2]⟩
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
            · simp only [sorted_cons, mem_map, forall_exists_index, and_imp,
                forall_apply_eq_imp_iff₂]
              refine ⟨?_, ?_⟩
              · intro a ha
                have := hl''0 a ha
                nlinarith
              · refine hl''s.map _ fun a b hab ↦ ?_
                gcongr
                linarith
            · simp only [map_cons, lineMap_apply_zero, map_map, ← hl'', cons.injEq,
                map_inj_left, Function.comp_apply, lineMap_lineMap_left, lineMap_eq_lineMap_iff,
                true_and]
              ring_nf
              simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetweenList/Varianta686c977c58cb6a49e24950df7f9b100bd015a3d4a60dcf54c731bea1fc1156c.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08d1841490974239509a830cdc39c4585bc5a0d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
