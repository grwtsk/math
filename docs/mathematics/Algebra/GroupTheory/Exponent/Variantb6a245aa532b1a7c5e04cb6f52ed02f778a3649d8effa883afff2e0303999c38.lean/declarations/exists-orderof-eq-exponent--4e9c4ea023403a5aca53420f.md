# exists_orderOf_eq_exponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e0aa1d56772413a72fd3aec68bd4027a5ac2537",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 414,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e7e252c-9957-3c8d-a283-157938b76a85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f57e713c-9d4e-8e92-3911-52f561d38062",
  "kind": "theorem",
  "lexical_name": "exists_orderOf_eq_exponent",
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
  "slug": "exists-orderof-eq-exponent--4e9c4ea023403a5aca53420f",
  "source": {
    "blob": "8e0aa1d56772413a72fd3aec68bd4027a5ac2537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 414,
    "path": "GRWTSK/Algebra/GroupTheory/Exponent/Variantb6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e9c4ea023403a5aca53420fad63b7edaefc0a32d4c584e4a7b04437ce37c492",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Exponent/Variantb6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f57e713c-9d4e-8e92-3911-52f561d38062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_orderOf_eq_exponent (hG : ExponentExists G) : ∃ g : G, orderOf g = exponent G := by
  have he := hG.exponent_ne_zero
  have hne : (Set.range (orderOf : G → ℕ)).Nonempty := ⟨1, 1, orderOf_one⟩
  have hfin : (Set.range (orderOf : G → ℕ)).Finite := by
    rwa [← exponent_ne_zero_iff_range_orderOf_finite hG.orderOf_pos]
  obtain ⟨t, ht⟩ := hne.csSup_mem hfin
  use t
  apply Nat.dvd_antisymm (order_dvd_exponent _)
  refine Nat.dvd_of_primeFactorsList_subperm he ?_
  rw [List.subperm_ext_iff]
  by_contra! h
  obtain ⟨p, hp, hpe⟩ := h
  replace hp := Nat.prime_of_mem_primeFactorsList hp
  simp only [Nat.primeFactorsList_count_eq] at hpe
  set k := (orderOf t).factorization p with hk
  obtain ⟨g, hg⟩ := hp.exists_orderOf_eq_pow_factorization_exponent G
  suffices orderOf t < orderOf (t ^ p ^ k * g) by
    rw [ht] at this
    exact this.not_le (le_csSup hfin.bddAbove <| Set.mem_range_self _)
  have hpk : p ^ k ∣ orderOf t := Nat.ordProj_dvd _ _
  have hpk' : orderOf (t ^ p ^ k) = orderOf t / p ^ k := by
    rw [orderOf_pow' t (pow_ne_zero k hp.ne_zero), Nat.gcd_eq_right hpk]
  obtain ⟨a, ha⟩ := Nat.exists_eq_add_of_lt hpe
  have hcoprime : (orderOf (t ^ p ^ k)).Coprime (orderOf g) := by
    rw [hg, Nat.coprime_pow_right_iff (pos_of_gt hpe), Nat.coprime_comm]
    apply Or.resolve_right (Nat.coprime_or_dvd_of_prime hp _)
    nth_rw 1 [← pow_one p]
    have : 1 = (Nat.factorization (orderOf (t ^ p ^ k))) p + 1 := by
      rw [hpk', Nat.factorization_div hpk]
      simp [k, hp]
    rw [this]
    -- Porting note: convert made to_additive complain
    apply Nat.pow_succ_factorization_not_dvd (hG.orderOf_pos <| t ^ p ^ k).ne' hp
  rw [(Commute.all _ g).orderOf_mul_eq_mul_orderOf_of_coprime hcoprime, hpk',
    hg, ha, hk, pow_add, pow_add, pow_one, ← mul_assoc, ← mul_assoc,
    Nat.div_mul_cancel, mul_assoc, lt_mul_iff_one_lt_right <| hG.orderOf_pos t, ← pow_succ]
  · exact one_lt_pow₀ hp.one_lt a.succ_ne_zero
  · exact hpk

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Exponent/Variantb6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Exponent/Variantb6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0aa1d56772413a72fd3aec68bd4027a5ac2537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
