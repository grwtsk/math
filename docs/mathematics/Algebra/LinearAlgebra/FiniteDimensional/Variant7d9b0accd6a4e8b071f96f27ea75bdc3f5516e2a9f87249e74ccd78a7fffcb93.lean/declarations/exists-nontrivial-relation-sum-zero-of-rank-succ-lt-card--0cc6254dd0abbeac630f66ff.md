# exists_nontrivial_relation_sum_zero_of_rank_succ_lt_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dc4ef2d-3a11-ac0f-23e5-b5563eee60d1",
  "kind": "theorem",
  "lexical_name": "exists_nontrivial_relation_sum_zero_of_rank_succ_lt_card",
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
  "slug": "exists-nontrivial-relation-sum-zero-of-rank-succ-lt-card--0cc6254dd0abbeac630f66ff",
  "source": {
    "blob": "a7b6dc188797b6b20926e3de9421df9b5b45f3d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 497,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant7d9b0accd6a4e8b071f96f27ea75bdc3f5516e2a9f87249e74ccd78a7fffcb93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cc6254dd0abbeac630f66ff214c4b91b080d596c1aeb5cf9ac91105db3379ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensional/Variant7d9b0accd6a4e8b071f96f27ea75bdc3f5516e2a9f87249e74ccd78a7fffcb93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dc4ef2d-3a11-ac0f-23e5-b5563eee60d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nontrivial_relation_sum_zero_of_rank_succ_lt_card [FiniteDimensional K V]
    {t : Finset V} (h : finrank K V + 1 < t.card) :
    ∃ f : V → K, ∑ e in t, f e • e = 0 ∧ ∑ e in t, f e = 0 ∧ ∃ x ∈ t, f x ≠ 0 := by
  classical
  -- Pick an element x₀ ∈ t,
  have card_pos : 0 < t.card := lt_trans (Nat.succ_pos _) h
  obtain ⟨x₀, m⟩ := (Finset.card_pos.1 card_pos).bex
  -- and apply the previous lemma to the {xᵢ - x₀}
  let shift : V ↪ V := ⟨fun x => x - x₀, sub_left_injective⟩
  let t' := (t.erase x₀).map shift
  have h' : finrank K V < t'.card := by
    simp only [card_map, Finset.card_erase_of_mem m]
    exact Nat.lt_pred_iff.mpr h
  -- to obtain a function `g`.
  obtain ⟨g, gsum, x₁, x₁_mem, nz⟩ := exists_nontrivial_relation_of_rank_lt_card h'
  -- Then obtain `f` by translating back by `x₀`,
  -- and setting the value of `f` at `x₀` to ensure `∑ e in t, f e = 0`.
  let f : V → K := fun z => if z = x₀ then -∑ z in t.erase x₀, g (z - x₀) else g (z - x₀)
  refine' ⟨f, _, _, _⟩
  -- After this, it's a matter of verifying the properties,
  -- based on the corresponding properties for `g`.
  · show (∑ e : V in t, f e • e) = 0
    -- We prove this by splitting off the `x₀` term of the sum,
    -- which is itself a sum over `t.erase x₀`,
    -- combining the two sums, and
    -- observing that after reindexing we have exactly
    -- ∑ (x : V) in t', g x • x = 0.
    simp only
    conv_lhs =>
      apply_congr
      rfl
      rw [ite_smul]
    rw [Finset.sum_ite]
    conv =>
      congr
      congr
      apply_congr
      -- Porting note: the next two steps used to work by `simp [filter_eq', m]`
      erw [filter_eq']
      simp [m]
    conv =>
      congr
      congr
      rfl
      apply_congr
      simp [filter_ne']
    rw [sum_singleton, neg_smul, add_comm, ← sub_eq_add_neg, sum_smul, ← sum_sub_distrib]
    simp only [← smul_sub]
    -- At the end we have to reindex the sum, so we use `change` to
    -- express the summand using `shift`.
    change (∑ x : V in t.erase x₀, (fun e => g e • e) (shift x)) = 0
    -- porting note: last argument can't be inferred
    rw [← sum_map _ shift (fun e => g e • e)]
    exact gsum
  · show (∑ e : V in t, f e) = 0
    -- Again we split off the `x₀` term,
    -- observing that it exactly cancels the other terms.
    rw [← insert_erase m, sum_insert (not_mem_erase x₀ t)]
    dsimp
    rw [if_pos rfl]
    conv_lhs =>
      congr
      rfl
      apply_congr
      rfl
      rw [if_neg (show _ ≠ x₀ from (mem_erase.mp ‹_›).1)]
    exact neg_add_self _
  · show ∃ (x : V), x ∈ t ∧ f x ≠ 0
    -- We can use x₁ + x₀.
    refine' ⟨x₁ + x₀, _, _⟩
    · rw [Finset.mem_map] at x₁_mem
      rcases x₁_mem with ⟨x₁, x₁_mem, rfl⟩
      rw [mem_erase] at x₁_mem
      simp only [x₁_mem, sub_add_cancel, Function.Embedding.coeFn_mk]
    · dsimp only
      rwa [if_neg, add_sub_cancel]
      rw [add_left_eq_self]
      rintro rfl
      simp only [sub_eq_zero, exists_prop, Finset.mem_map, Embedding.coeFn_mk, eq_self_iff_true,
        mem_erase, not_true, exists_eq_right, Ne.def, false_and_iff] at x₁_mem
#align finite_dimensional.exists_nontrivial_relation_sum_zero_of_rank_succ_lt_card FiniteDimensional.exists_nontrivial_relation_sum_zero_of_rank_succ_lt_card

section

variable {L : Type*} [LinearOrderedField L]

variable {W : Type v} [AddCommGroup W] [Module L W]

/-- A slight strengthening of `exists_nontrivial_relation_sum_zero_of_rank_succ_lt_card`
available when working over an ordered field:
we can ensure a positive coefficient, not just a nonzero coefficient.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensional/Variant7d9b0accd6a4e8b071f96f27ea75bdc3f5516e2a9f87249e74ccd78a7fffcb93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant7d9b0accd6a4e8b071f96f27ea75bdc3f5516e2a9f87249e74ccd78a7fffcb93.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b6dc188797b6b20926e3de9421df9b5b45f3d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
