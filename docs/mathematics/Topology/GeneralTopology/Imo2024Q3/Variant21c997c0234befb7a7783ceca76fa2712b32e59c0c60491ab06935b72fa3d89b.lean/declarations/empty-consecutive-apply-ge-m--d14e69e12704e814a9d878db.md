# empty_consecutive_apply_ge_M

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e2ad1a6-4920-8da3-9576-3aec77d41c57",
  "kind": "lemma",
  "lexical_name": "empty_consecutive_apply_ge_M",
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
  "slug": "empty-consecutive-apply-ge-m--d14e69e12704e814a9d878db",
  "source": {
    "blob": "3c11165dfa3919745c9b6bf989c565b8f58a342c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant21c997c0234befb7a7783ceca76fa2712b32e59c0c60491ab06935b72fa3d89b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d14e69e12704e814a9d878db92555c02e7a316f90d14231c7c54dc621c9ecbf9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variant21c997c0234befb7a7783ceca76fa2712b32e59c0c60491ab06935b72fa3d89b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e2ad1a6-4920-8da3-9576-3aec77d41c57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma empty_consecutive_apply_ge_M : {i | M a N ≤ a i ∧ M a N ≤ a (i + 1)} = ∅ := by
  rw [Set.eq_empty_iff_forall_notMem]
  intro i
  induction i using Nat.strong_induction_on with | h i ih =>
  -- Let i be the first index where both `a i` and `a (i + 1)` are at least M.
  rintro ⟨hi1, hi2⟩
  have hi : ∀ j < i, M a N ≤ a j → a (j + 1) < M a N := by simp_all
  -- t is the set of indices before an appearance of the integer (a i).  For each j ∈ t, (a j)
  -- is the (a i)th appearance of that value, so each such value before index i appears at least
  -- M times before that index; since (a i) is the (at least) Mth appearance of that value, there
  -- are at least M positive integers appearing M times before (a i), a contradiction because one of
  -- those must be at least M.
  let t : Finset ℕ := {j ∈ Finset.range i | a (j + 1) = a i}
  let t' : Finset ℕ := {j ∈ Finset.range (i + 1) | a j = a i}
  have t_map_eq_t' : t.map ⟨(· + 1), add_left_injective 1⟩ = t' := by
    refine map_add_one_range (a · = a i) i ?_
    intro H
    rw [←H, M] at hi1
    have a0_le : a 0 ≤ (Finset.range (N + 1)).sup a := Finset.le_sup (by simp)
    omega
  have card_t_eq_card_t' : #t = #t' := by simp [← t_map_eq_t', t]
  have htM : ∀ j ∈ t, a j < M a N := by
    intro j hj
    simp only [t, Finset.mem_filter, Finset.mem_range] at hj
    obtain ⟨hj, hji⟩ := hj
    by_contra! hjM
    exact (lt_self_iff_false _).mp ((hji ▸ hi j hj hjM).trans_le hi1)
  have N_le_i : N ≤ i := by
    unfold M at hi1
    by_contra! HH
    have i_in_range : i ∈ Finset.range (N + 1) := by rw [Finset.mem_range]; omega
    have ai_le_sup : a i ≤ (Finset.range (N + 1)).sup a := Finset.le_sup i_in_range
    omega
  have ht' : a (i + 1) = #t' := hc.apply_add_one_eq_card N_le_i
  rw [← card_t_eq_card_t'] at ht'
  have ht'inj : Set.InjOn a t := by
    refine (hc.injOn_setOf_apply_add_one_eq_of_M_le hi1).mono ?_
    simp_all [t, t']
  have card_image_eq_card_t : #(Finset.image a t) = #t := Finset.card_image_of_injOn ht'inj
  have card_image_lt_M : #(Finset.image a t) < M a N := by
    refine (Finset.card_le_card (t := Finset.Ico 1 (M a N)) ?_).trans_lt ?_
    · simp only [Finset.subset_iff, Finset.mem_image, Finset.mem_Ico, forall_exists_index, and_imp,
                 forall_apply_eq_imp_iff₂]
      exact fun j hj ↦ ⟨hc.pos _, htM j hj⟩
    · simpa using M_pos a N
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variant21c997c0234befb7a7783ceca76fa2712b32e59c0c60491ab06935b72fa3d89b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant21c997c0234befb7a7783ceca76fa2712b32e59c0c60491ab06935b72fa3d89b.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c11165dfa3919745c9b6bf989c565b8f58a342c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
