# sum_mul_div_add_sum_mul_div_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffb25173-f646-0aed-49c4-36d47b9e0972",
  "kind": "theorem",
  "lexical_name": "sum_mul_div_add_sum_mul_div_eq_mul",
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
  "slug": "sum-mul-div-add-sum-mul-div-eq-mul--e218269deeba5855f68f6703",
  "source": {
    "blob": "97490383751b7fef99453c178d184f7d7441a2a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 191,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e218269deeba5855f68f670394aff656a398654e62c41f96220d80f29c777d89",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffb25173-f646-0aed-49c4-36d47b9e0972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mul_div_add_sum_mul_div_eq_mul (p q : ℕ) [hp : Fact p.Prime] (hq0 : (q : ZMod p) ≠ 0) :
    ∑ a ∈ Ico 1 (p / 2).succ, a * q / p + ∑ a ∈ Ico 1 (q / 2).succ, a * p / q =
    p / 2 * (q / 2) := by
  have hswap :
    #{x ∈ Ico 1 (q / 2).succ ×ˢ Ico 1 (p / 2).succ | x.2 * q ≤ x.1 * p} =
      #{x ∈ Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ | x.1 * q ≤ x.2 * p} :=
    card_equiv (Equiv.prodComm _ _)
      (fun ⟨_, _⟩ => by
        simp +contextual only [mem_filter, and_self_iff, Prod.swap_prod_mk,
          forall_true_iff, mem_product, Equiv.prodComm_apply, and_assoc, and_left_comm])
  have hdisj :
    Disjoint {x ∈ Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ | x.2 * p ≤ x.1 * q}
      {x ∈ Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ | x.1 * q ≤ x.2 * p} := by
    apply disjoint_filter.2 fun x hx hpq hqp => ?_
    have hxp : x.1 < p := lt_of_le_of_lt
      (show x.1 ≤ p / 2 by simp_all only [Nat.lt_succ_iff, mem_Ico, mem_product])
      (Nat.div_lt_self hp.1.pos (by decide))
    have : (x.1 : ZMod p) = 0 := by
      simpa [hq0] using congr_arg ((↑) : ℕ → ZMod p) (le_antisymm hpq hqp)
    apply_fun ZMod.val at this
    rw [val_cast_of_lt hxp, val_zero] at this
    simp only [this, nonpos_iff_eq_zero, mem_Ico, one_ne_zero, false_and, mem_product] at hx
  have hunion :
      {x ∈ Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ | x.2 * p ≤ x.1 * q} ∪
        {x ∈ Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ | x.1 * q ≤ x.2 * p} =
      Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ :=
    Finset.ext fun x => by
      have := le_total (x.2 * p) (x.1 * q)
      simp only [mem_union, mem_filter, mem_Ico, mem_product]
      tauto
  rw [sum_Ico_eq_card_lt, sum_Ico_eq_card_lt, hswap, ← card_union_of_disjoint hdisj, hunion,
    card_product]
  simp only [card_Ico, tsub_zero, succ_sub_succ_eq_sub]

/-- **Eisenstein's lemma** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussEisensteinLemmas/Variant3130f6be885a76608987e7f4a4c62915eeef035b6875f73c8533565dce79cb13.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97490383751b7fef99453c178d184f7d7441a2a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
