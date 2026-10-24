# IsCyclic.card_pow_eq_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb93a05c1b79c927c778756bad363f3dd5d0d421",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bece04e5-fd76-f39b-727a-dc764888b9b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e380be1f-d158-7a0e-3939-7c7261a54f3c",
  "kind": "theorem",
  "lexical_name": "IsCyclic.card_pow_eq_one_le",
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
  "slug": "iscyclic-card-pow-eq-one-le--423278052605a1a6740db6cb",
  "source": {
    "blob": "cb93a05c1b79c927c778756bad363f3dd5d0d421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 242,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:423278052605a1a6740db6cb5a653bf602d3483f4a0538a35a2e8bcbcb68efca",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e380be1f-d158-7a0e-3939-7c7261a54f3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCyclic.card_pow_eq_one_le [DecidableEq α] [Fintype α] [IsCyclic α] {n : ℕ} (hn0 : 0 < n) :
    (univ.filter fun a : α => a ^ n = 1).card ≤ n :=
  let ⟨g, hg⟩ := IsCyclic.exists_generator (α := α)
  calc
    (univ.filter fun a : α => a ^ n = 1).card ≤
        (zpowers (g ^ (Fintype.card α / Nat.gcd n (Fintype.card α))) : Set α).toFinset.card :=
      card_le_of_subset fun x hx =>
        let ⟨m, hm⟩ := show x ∈ Submonoid.powers g from mem_powers_iff_mem_zpowers.2 <| hg x
        Set.mem_toFinset.2
          ⟨(m / (Fintype.card α / Nat.gcd n (Fintype.card α)) : ℕ), by
            dsimp at hm
            have hgmn : g ^ (m * Nat.gcd n (Fintype.card α)) = 1 := by
              rw [pow_mul, hm, ← pow_gcd_card_eq_one_iff]; exact (mem_filter.1 hx).2
            dsimp only
            rw [zpow_ofNat, ← pow_mul, Nat.mul_div_cancel_left', hm]
            refine' Nat.dvd_of_mul_dvd_mul_right (gcd_pos_of_pos_left (Fintype.card α) hn0) _
            conv_lhs =>
              rw [Nat.div_mul_cancel (Nat.gcd_dvd_right _ _), ←
                orderOf_eq_card_of_forall_mem_zpowers hg]
            exact orderOf_dvd_of_pow_eq_one hgmn⟩
    _ ≤ n := by
      let ⟨m, hm⟩ := Nat.gcd_dvd_right n (Fintype.card α)
      have hm0 : 0 < m :=
        Nat.pos_of_ne_zero fun hm0 => by
          rw [hm0, mul_zero, Fintype.card_eq_zero_iff] at hm
          exact hm.elim' 1
      simp only [Set.toFinset_card, SetLike.coe_sort_coe]
      rw [← orderOf_eq_card_zpowers, orderOf_pow g, orderOf_eq_card_of_forall_mem_zpowers hg]
      nth_rw 2 [hm]; nth_rw 3 [hm]
      rw [Nat.mul_div_cancel_left _ (gcd_pos_of_pos_left _ hn0), gcd_mul_left_left, hm,
        Nat.mul_div_cancel _ hm0]
      exact le_of_dvd hn0 (Nat.gcd_dvd_left _ _)
#align is_cyclic.card_pow_eq_one_le IsCyclic.card_pow_eq_one_le
#align is_add_cyclic.card_pow_eq_one_le IsAddCyclic.card_pow_eq_one_le

end Classical

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb93a05c1b79c927c778756bad363f3dd5d0d421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
