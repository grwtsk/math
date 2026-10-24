# eVariationOn_add_jump_greatest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 5146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d57fb624-1a05-09f3-44b4-f3a84b3b4c51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:082c3a8d-053a-d1e5-4308-a4fb72ef0165",
  "kind": "lemma",
  "lexical_name": "eVariationOn_add_jump_greatest",
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
  "slug": "evariationon-add-jump-greatest--e07dd997d64b4d7c09ce0441",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5202,
    "line": 5146,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e07dd997d64b4d7c09ce0441bb4ec6760ff98b778f0d1735750d49c9c037db27",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:082c3a8d-053a-d1e5-4308-a4fb72ef0165`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5146–5202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma eVariationOn_add_jump_greatest {α E : Type*} [LinearOrder α] [PseudoEMetricSpace E]
    {f f' : α → E} {s : Set α} {x : α} (hs : IsGreatest s x) (heq : Set.EqOn f f' (s \ {x})) :
    eVariationOn f' s ≤ eVariationOn f s + edist (f' x) (f x) := by
  apply iSup_le; rintro ⟨n, u, hu, us⟩
  by_cases hx : u n = x
  · rcases n with - | n
    · simp
    · let k := Nat.find (⟨n + 1, hx⟩ : ∃ i, u i = x)
      have hk : u k = x := Nat.find_spec (⟨n + 1, hx⟩ : ∃ i, u i = x)
      have h_lt : ∀ i < k, u i < x := fun i hi ↦ lt_of_le_of_ne (hs.2 (us i)) (Nat.find_min _ hi)
      have h_eq_k : ∀ i < k, f' (u i) = f (u i) := fun i hi ↦ (heq ⟨us i, (h_lt i hi).ne⟩).symm
      calc
        ∑ i ∈ Finset.range (n + 1), edist (f' (u (i + 1))) (f' (u i))
            = ∑ i ∈ Finset.range k, edist (f' (u (i + 1))) (f' (u i)) := by
          rw [← Finset.sum_range_add_sum_Ico _ (Nat.find_le hx : k ≤ n + 1)]
          nth_rw 2 [← add_zero (∑ i ∈ Finset.range k, edist (f' (u (i + 1))) (f' (u i)))]
          congr 1
          apply Finset.sum_eq_zero; intro i hi
          have : u i = x := le_antisymm (hs.2 (us i)) (hk ▸ hu (Finset.mem_Ico.mp hi).1)
          have : u (i + 1) = x := le_antisymm (hs.2 (us (i + 1))) (this ▸ hu (Nat.le_succ i))
          simp [*]
        _ = (∑ i ∈ Finset.range (k - 1), edist (f (u (i + 1))) (f (u i))) + edist (f' x) (f' (u (k - 1))) := by
          rcases k with - | k
          · simp [hk]
          · simp only [Finset.sum_range_succ, Nat.add_sub_cancel, hk]
            congr 1
            apply Finset.sum_congr rfl; intro i hi
            rw [h_eq_k i (Nat.lt_succ_of_lt (Finset.mem_range.mp hi)),
                h_eq_k (i + 1) (Nat.add_lt_add_right (Finset.mem_range.mp hi) 1)]
        _ ≤ (∑ i ∈ Finset.range (k - 1), edist (f (u (i + 1))) (f (u i))) + (edist (f' x) (f x) + edist (f x) (f (u (k - 1)))) := by
          apply add_le_add_right
          by_cases hk0 : k = 0
          · simp only [hk0, zero_tsub]; rw [hk0] at hk; rw [hk, edist_self, edist_self]; simp
          · have : k - 1 < k := Nat.sub_lt (Nat.pos_of_ne_zero hk0) (Nat.zero_lt_one)
            rw [h_eq_k (k - 1) this]
            apply edist_triangle
        _ ≤ eVariationOn f s + edist (f' x) (f x) := by
          rw [add_comm (edist (f' x) (f x)), ← add_assoc]
          apply add_le_add_left
          by_cases hk0 : k = 0
          · simp only [hk0, zero_tsub, Finset.range_zero, Finset.sum_empty, zero_add]
            rw [hk0] at hk; rw [hk, edist_self]; simp
          · rw [← hk]
            have h_k : k = (k - 1) + 1 := (Nat.sub_add_cancel (Nat.pos_of_ne_zero hk0)).symm
            nth_rw 2 [h_k]
            rw [← Finset.sum_range_succ, ← h_k]
            exact eVariationOn.sum_le hu us
  · have h_in : ∀ i ≤ n, u i ∈ s \ {x} := fun i hi ↦
      ⟨us i, ((hu hi).trans_lt (lt_of_le_of_ne (hs.2 (us n)) hx)).ne⟩
    calc
      ∑ i ∈ Finset.range n, edist (f' (u (i + 1))) (f' (u i))
          = ∑ i ∈ Finset.range n, edist (f (u (i + 1))) (f (u i)) := by
        apply Finset.sum_congr rfl; intro i hi; have hi' := Finset.mem_range.mp hi
        rw [← heq (h_in i hi'.le), ← heq (h_in (i + 1) hi')]
    _ ≤ eVariationOn f s := eVariationOn.sum_le hu us
    _ ≤ eVariationOn f s + edist (f' x) (f x) := le_self_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L5146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
