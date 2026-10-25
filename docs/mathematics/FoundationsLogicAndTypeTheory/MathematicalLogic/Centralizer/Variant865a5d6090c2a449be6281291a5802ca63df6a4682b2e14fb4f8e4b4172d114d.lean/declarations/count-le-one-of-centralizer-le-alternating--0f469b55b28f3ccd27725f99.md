# count_le_one_of_centralizer_le_alternating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b91ee73f7f677b9a856c9b8a1ae701dd568a791",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1b13972-a36b-426e-a8c0-97c03f4b752e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84a0da08-a891-b0e5-701f-8c5912b7d728",
  "kind": "theorem",
  "lexical_name": "count_le_one_of_centralizer_le_alternating",
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
  "slug": "count-le-one-of-centralizer-le-alternating--0f469b55b28f3ccd27725f99",
  "source": {
    "blob": "7b91ee73f7f677b9a856c9b8a1ae701dd568a791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f469b55b28f3ccd27725f99a85ee763608681aa04e99906af008f98a4a6fb4f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84a0da08-a891-b0e5-701f-8c5912b7d728`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_le_one_of_centralizer_le_alternating
    (h : Subgroup.centralizer {g} ≤ alternatingGroup α) :
    ∀ i, g.cycleType.count i ≤ 1 := by
  rw [← Multiset.nodup_iff_count_le_one, Equiv.Perm.cycleType_def]
  rw [Multiset.nodup_map_iff_inj_on g.cycleFactorsFinset.nodup]
  simp only [Function.comp_apply, ← Finset.mem_def]
  by_contra! ⟨c, hc, d, hd, hm, hm'⟩
  let τ : Equiv.Perm g.cycleFactorsFinset := Equiv.swap ⟨c, hc⟩ ⟨d, hd⟩
  obtain ⟨a⟩ := Equiv.Perm.Basis.nonempty g
  have hτ : τ ∈ range_toPermHom' g := fun x ↦ by
    by_cases hx : x = ⟨c, hc⟩
    · rw [hx, Equiv.swap_apply_left]; exact hm.symm
    by_cases hx' : x = ⟨d, hd⟩
    · rw [hx', Equiv.swap_apply_right]; exact hm
    · rw [Equiv.swap_apply_of_ne_of_ne hx hx']
  set k := toCentralizer a ⟨τ, hτ⟩ with hk
  suffices hsign_k : k.val.sign = -1 by
    apply units_ne_neg_self (1 : ℤˣ)
    rw [← hsign_k, h (toCentralizer a ⟨τ, hτ⟩).prop]
  /- to prove that `hsign_k : sign k = -1` below,
  we could prove that it is the product of the transpositions with disjoint supports
  [(g ^ n) (a c), (g ^ n) (a d)], for 0 ≤ n < c.support.card,
  which are in odd number by `odd_of_centralizer_le_alternatingGroup`,
  but it will be sufficient to observe that `k ^ 2 = 1`
  (which implies that `k.cycleType` is of the form (2,2,…))
  and to control its support. -/
  have hk_cT : k.val.cycleType = Multiset.replicate k.val.cycleType.card 2 := by
    rw [Multiset.eq_replicate_card, ← pow_prime_eq_one_iff, ← Subgroup.coe_pow,
      ← Subgroup.coe_one, Subtype.coe_inj, hk, ← map_pow]
    convert! MonoidHom.map_one _
    rw [← Subtype.coe_inj]
    apply Equiv.swap_mul_self
  rw [sign_of_cycleType, hk_cT]
  simp only [Multiset.sum_replicate, smul_eq_mul, Multiset.card_replicate, pow_add,
    even_two, Even.mul_left, Even.neg_pow, one_pow, one_mul]
  apply Odd.neg_one_pow
  apply odd_of_centralizer_le_alternatingGroup h
  have : (k : Perm α).cycleType.card * 2 = (k : Perm α).support.card := by
    rw [← sum_cycleType, hk_cT]
    simp
  have that : Multiset.card (k : Perm α).cycleType = (c : Perm α).support.card := by
    rw [← Nat.mul_left_inj (a := 2) (by simp), this]
    simp only [hk, toCentralizer, MonoidHom.coe_mk, OneHom.coe_mk, card_ofPermHom_support]
    have H : (⟨c, hc⟩ : g.cycleFactorsFinset) ≠ ⟨d, hd⟩ := Subtype.coe_ne_coe.mp hm'
    simp only [τ, support_swap H]
    rw [Finset.sum_insert (by simp only [mem_singleton, H, not_false_eq_true]),
      Finset.sum_singleton, hm, mul_two]
  rw [that]
  simp only [cycleType_def, Multiset.mem_map]
  exact ⟨c, hc, by simp only [Function.comp_apply]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b91ee73f7f677b9a856c9b8a1ae701dd568a791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
