# MonovaryOn.sum_smul_comp_perm_eq_sum_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14e5f3b2-e830-3dc9-b2c1-c4545571f2f2",
  "kind": "theorem",
  "lexical_name": "MonovaryOn.sum_smul_comp_perm_eq_sum_smul_iff",
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
  "slug": "monovaryon-sum-smul-comp-perm-eq-sum-smul-iff--d61363b58fd0466b1b7e8c77",
  "source": {
    "blob": "3304723ddbfd50f92976a5b4ba163534ba3cc337",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 178,
    "path": "GRWTSK/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d61363b58fd0466b1b7e8c77f70daa08cb33a870333bf586f5a2da806d7e70d5",
  "verification": {
    "reference": "docs/verification/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14e5f3b2-e830-3dc9-b2c1-c4545571f2f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonovaryOn.sum_smul_comp_perm_eq_sum_smul_iff (hfg : MonovaryOn f g s)
    (hσ : {x | σ x ≠ x} ⊆ s) :
    ∑ i ∈ s, f i • g (σ i) = ∑ i ∈ s, f i • g i ↔ MonovaryOn f (g ∘ σ) s := by
  classical
  refine ⟨not_imp_not.1 fun h ↦ ?_, fun h ↦ (hfg.sum_smul_comp_perm_le_sum_smul hσ).antisymm ?_⟩
  · rw [MonovaryOn] at h
    push_neg at h
    obtain ⟨x, hx, y, hy, hgxy, hfxy⟩ := h
    set τ : Perm ι := (Equiv.swap x y).trans σ
    have hτs : {x | τ x ≠ x} ⊆ s := by
      refine (set_support_mul_subset σ <| swap x y).trans (Set.union_subset hσ fun z hz ↦ ?_)
      obtain ⟨_, rfl | rfl⟩ := swap_apply_ne_self_iff.1 hz <;> assumption
    refine ((hfg.sum_smul_comp_perm_le_sum_smul hτs).trans_lt' ?_).ne
    obtain rfl | hxy := eq_or_ne x y
    · cases lt_irrefl _ hfxy
    simp only [τ, ← s.sum_erase_add _ hx,
      ← (s.erase x).sum_erase_add _ (mem_erase.2 ⟨hxy.symm, hy⟩),
      add_assoc, Equiv.coe_trans, Function.comp_apply, swap_apply_right, swap_apply_left]
    refine add_lt_add_of_le_of_lt (Finset.sum_congr rfl fun z hz ↦ ?_).le
      (smul_add_smul_lt_smul_add_smul hfxy hgxy)
    simp_rw [mem_erase] at hz
    rw [swap_apply_of_ne_of_ne hz.2.1 hz.1]
  · convert h.sum_smul_comp_perm_le_sum_smul ((set_support_inv_eq _).subset.trans hσ) using 1
    simp_rw [Function.comp_apply, apply_inv_self]

/-- **Equality case of the Rearrangement Inequality**: Pointwise scalar multiplication of `f` and
`g`, which antivary together on `s`, is unchanged by a permutation if and only if `f` and `g ∘ σ`
antivary together on `s`. Stated by permuting the entries of `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Rearrangement/Variant8e4dabc9ce02b0fa51a6d39d969df88eae871a462d3af035d4792a52e6e36fae.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3304723ddbfd50f92976a5b4ba163534ba3cc337` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
