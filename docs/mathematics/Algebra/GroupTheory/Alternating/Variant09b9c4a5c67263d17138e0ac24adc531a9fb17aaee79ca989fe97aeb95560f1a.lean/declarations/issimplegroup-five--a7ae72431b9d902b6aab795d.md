# isSimpleGroup_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99e195f9a4af77f524b97d961071c415e6a76fb6a4b3817efd82d9bfa7ee178c",
  "kind": "instance",
  "lexical_name": "isSimpleGroup_five",
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
  "slug": "issimplegroup-five--a7ae72431b9d902b6aab795d",
  "source": {
    "blob": "0fec68f0f822f0bf9b60b946d0046cdc6f807a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 316,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7ae72431b9d902b6aab795d30df8eeb8b9af964146c7173522b69f5a4d1faed",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99e195f9a4af77f524b97d961071c415e6a76fb6a4b3817efd82d9bfa7ee178c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isSimpleGroup_five : IsSimpleGroup (alternatingGroup (Fin 5)) :=
  ⟨fun H => by
    intro Hn
    refine' or_not.imp id fun Hb => _
    rw [eq_bot_iff_forall] at Hb
    push_neg at Hb
    obtain ⟨⟨g, gA⟩, gH, g1⟩ : ∃ x : ↥(alternatingGroup (Fin 5)), x ∈ H ∧ x ≠ 1 := Hb
    -- `g` is a non-identity alternating permutation in a normal subgroup `H` of $A_5$.
    rw [← SetLike.mem_coe, ← Set.singleton_subset_iff] at gH
    refine' eq_top_iff.2 (le_trans (ge_of_eq _) (normalClosure_le_normal gH))
    -- It suffices to show that the normal closure of `g` in $A_5$ is $A_5$.
    by_cases h2 : ∀ n ∈ g.cycleType, n = 2
    -- If the cycle decomposition of `g` consists entirely of swaps, then the cycle type is $(2,2)$.
    -- This means that it is conjugate to $(04)(13)$, whose normal closure is $A_5$.
    · rw [Ne.def, Subtype.ext_iff] at g1
      exact
        (isConj_swap_mul_swap_of_cycleType_two gA g1 h2).normalClosure_eq_top_of
          normalClosure_swap_mul_swap_five
    push_neg at h2
    obtain ⟨n, ng, n2⟩ : ∃ n : ℕ, n ∈ g.cycleType ∧ n ≠ 2 := h2
    -- `n` is the size of a non-swap cycle in the decomposition of `g`.
    have n2' : 2 < n := lt_of_le_of_ne (two_le_of_mem_cycleType ng) n2.symm
    have n5 : n ≤ 5 := le_trans ?_ g.support.card_le_univ
    -- We check that `2 < n ≤ 5`, so that `interval_cases` has a precise range to check.
    swap
    · obtain ⟨m, hm⟩ := Multiset.exists_cons_of_mem ng
      rw [← sum_cycleType, hm, Multiset.sum_cons]
      exact le_add_right le_rfl
    interval_cases n
    -- This breaks into cases `n = 3`, `n = 4`, `n = 5`.
    -- If `n = 3`, then `g` has a 3-cycle in its decomposition, so `g^2` is a 3-cycle.
    -- `g^2` is in the normal closure of `g`, so that normal closure must be $A_5$.
    · rw [eq_top_iff, ← (isThreeCycle_sq_of_three_mem_cycleType_five ng).alternating_normalClosure
        (by rw [card_fin])]
      refine' normalClosure_le_normal _
      rw [Set.singleton_subset_iff, SetLike.mem_coe]
      have h := SetLike.mem_coe.1 (subset_normalClosure
        (G := alternatingGroup (Fin 5)) (Set.mem_singleton ⟨g, gA⟩))
      exact mul_mem h h
    · -- The case `n = 4` leads to contradiction, as no element of $A_5$ includes a 4-cycle.
      have con := mem_alternatingGroup.1 gA
      contrapose! con
      rw [sign_of_cycleType, cycleType_of_card_le_mem_cycleType_add_two (by decide) ng]
      dsimp only
      decide
    · -- If `n = 5`, then `g` is itself a 5-cycle, conjugate to `finRotate 5`.
      refine' (isConj_iff_cycleType_eq.2 _).normalClosure_eq_top_of normalClosure_finRotate_five
      rw [cycleType_of_card_le_mem_cycleType_add_two (by decide) ng, cycleType_finRotate]⟩
#align alternating_group.is_simple_group_five alternatingGroup.isSimpleGroup_five

end alternatingGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fec68f0f822f0bf9b60b946d0046cdc6f807a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
