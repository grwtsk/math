# mem_kleinFour_of_order_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d38b216-7380-95b5-c8b8-8df4f8e8a048",
  "kind": "theorem",
  "lexical_name": "mem_kleinFour_of_order_two_pow",
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
  "slug": "mem-kleinfour-of-order-two-pow--6b801712a914ab43d77a0c04",
  "source": {
    "blob": "ccb212a2cef971d060984bffbaef8585dada3993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 77,
    "path": "GRWTSK/Algebra/GroupTheory/KleinFour/Variantc9d1bbc237c506378e34e8502d37e1885054edaf03196df25ac5565e559b328f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b801712a914ab43d77a0c046e038c2c33ed97b9b1011c1f90bd7fca75a3e6bf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/KleinFour/Variantc9d1bbc237c506378e34e8502d37e1885054edaf03196df25ac5565e559b328f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d38b216-7380-95b5-c8b8-8df4f8e8a048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_kleinFour_of_order_two_pow (hα4 : Nat.card α = 4) {g : Perm α}
    (hg0 : g ∈ alternatingGroup α) {n : ℕ} (hg : orderOf g ∣ 2 ^ n) :
    g.cycleType = { } ∨ g.cycleType = {2, 2} := by
  rw [mem_alternatingGroup, sign_of_cycleType] at hg0
  have h1 : g.cycleType.sum ≤ 4 := by
    rw [sum_cycleType, ← hα4, Nat.card_eq_fintype_card]
    exact g.support.card_le_univ
  have h2 : ∀ k ∈ g.cycleType, k = 2 := by
    intro k hk
    have hk4 := (Multiset.le_sum_of_mem hk).trans h1
    have hk1 := one_lt_of_mem_cycleType hk
    interval_cases k
    · rfl
    · rw [← lcm_cycleType, Multiset.lcm_dvd] at hg
      exact Nat.prime_eq_prime_of_dvd_pow Nat.prime_three Nat.prime_two (hg 3 hk)
    · contrapose! hg0
      obtain ⟨t, ht⟩ := Multiset.exists_cons_of_mem hk
      rw [ht, Multiset.sum_cons, add_le_iff_nonpos_right, le_zero_iff,
        Multiset.sum_eq_zero_iff, ← Multiset.eq_replicate_card] at h1
      have h : 0 ∉ g.cycleType := Nat.not_succ_lt_self ∘ one_lt_of_mem_cycleType
      replace h : t = 0 := by simpa [h1 ▸ ht, Multiset.mem_replicate] using h
      simp [ht, h, Units.ext_iff]
  rw [← Multiset.eq_replicate_card] at h2
  rw [h2, Multiset.sum_replicate, smul_eq_mul, ← Nat.le_div_iff_mul_le two_pos] at h1
  interval_cases g.cycleType.card <;> simp [h2, Units.ext_iff] at hg0 ⊢

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/KleinFour/Variantc9d1bbc237c506378e34e8502d37e1885054edaf03196df25ac5565e559b328f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/KleinFour/Variantc9d1bbc237c506378e34e8502d37e1885054edaf03196df25ac5565e559b328f.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccb212a2cef971d060984bffbaef8585dada3993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
