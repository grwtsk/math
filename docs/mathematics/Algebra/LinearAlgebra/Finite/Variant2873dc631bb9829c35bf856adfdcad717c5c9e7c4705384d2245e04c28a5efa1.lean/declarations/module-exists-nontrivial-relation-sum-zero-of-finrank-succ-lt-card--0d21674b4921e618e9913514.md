# Module.exists_nontrivial_relation_sum_zero_of_finrank_succ_lt_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c75dcfe5-b354-e800-f1ca-5f9d20a881b2",
  "kind": "theorem",
  "lexical_name": "Module.exists_nontrivial_relation_sum_zero_of_finrank_succ_lt_card",
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
  "slug": "module-exists-nontrivial-relation-sum-zero-of-finrank-succ-lt-card--0d21674b4921e618e9913514",
  "source": {
    "blob": "36d19356ce3d37bd9d45892787bf79b386df16a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 317,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant2873dc631bb9829c35bf856adfdcad717c5c9e7c4705384d2245e04c28a5efa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d21674b4921e618e99135148a3a1e011e0eb51facf1cce4b2b0a5e5991badfb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variant2873dc631bb9829c35bf856adfdcad717c5c9e7c4705384d2245e04c28a5efa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c75dcfe5-b354-e800-f1ca-5f9d20a881b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.exists_nontrivial_relation_sum_zero_of_finrank_succ_lt_card
    {t : Finset M} (h : finrank R M + 1 < t.card) :
    ∃ f : M → R, ∑ e ∈ t, f e • e = 0 ∧ ∑ e ∈ t, f e = 0 ∧ ∃ x ∈ t, f x ≠ 0 := by
  -- Pick an element x₀ ∈ t,
  obtain ⟨x₀, x₀_mem⟩ := card_pos.1 ((Nat.succ_pos _).trans h)
  -- and apply the previous lemma to the {xᵢ - x₀}
  let shift : M ↪ M := ⟨(· - x₀), sub_left_injective⟩
  classical
  let t' := (t.erase x₀).map shift
  have h' : finrank R M < t'.card := by
    rw [card_map, card_erase_of_mem x₀_mem]
    exact Nat.lt_pred_iff.mpr h
  -- to obtain a function `g`.
  obtain ⟨g, gsum, x₁, x₁_mem, nz⟩ := exists_nontrivial_relation_of_finrank_lt_card h'
  -- Then obtain `f` by translating back by `x₀`,
  -- and setting the value of `f` at `x₀` to ensure `∑ e ∈ t, f e = 0`.
  let f : M → R := fun z ↦ if z = x₀ then -∑ z ∈ t.erase x₀, g (z - x₀) else g (z - x₀)
  refine ⟨f, ?_, ?_, ?_⟩
  -- After this, it's a matter of verifying the properties,
  -- based on the corresponding properties for `g`.
  · rw [sum_map, Embedding.coeFn_mk] at gsum
    simp_rw [f, ← t.sum_erase_add _ x₀_mem, ite_eq_left, neg_smul, sum_smul,
             ← sub_eq_add_neg, ← sum_sub_distrib, ← gsum, smul_sub]
    refine sum_congr rfl fun x x_mem ↦ ?_
    rw [ite_eq_right (mem_erase.mp x_mem).1]
  · simp_rw [f, ← t.sum_erase_add _ x₀_mem, ite_eq_left, add_neg_eq_zero]
    exact sum_congr rfl fun x x_mem ↦ ite_eq_right (mem_erase.mp x_mem).1
  · obtain ⟨x₁, x₁_mem', rfl⟩ := Finset.mem_map.mp x₁_mem
    have := mem_erase.mp x₁_mem'
    exact ⟨x₁, by
      simpa only [f, Embedding.coeFn_mk, sub_add_cancel, this.2, true_and, ite_eq_right this.1]⟩

end

end Finite

section FinrankZero

section
variable [Nontrivial R]

/-- A (finite-dimensional) space that is a subsingleton has zero `finrank`. -/
@[nontriviality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant2873dc631bb9829c35bf856adfdcad717c5c9e7c4705384d2245e04c28a5efa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant2873dc631bb9829c35bf856adfdcad717c5c9e7c4705384d2245e04c28a5efa1.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36d19356ce3d37bd9d45892787bf79b386df16a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
