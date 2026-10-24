# mem_kleinFour_of_order_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7364c02d6a12bedd382ecd64b4ec98586263c328",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b3310ef-8013-5404-493f-6714ca250d2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17116dd8-f979-be04-2fa5-b89f859010f6",
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
  "slug": "mem-kleinfour-of-order-two-pow--7388d3ec37f0f4fb18e92ea2",
  "source": {
    "blob": "7364c02d6a12bedd382ecd64b4ec98586263c328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 69,
    "path": "GRWTSK/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7388d3ec37f0f4fb18e92ea2ec45abdd79d269c0c1e51ee1470f1a2a5cf264a9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17116dd8-f979-be04-2fa5-b89f859010f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–94.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7364c02d6a12bedd382ecd64b4ec98586263c328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
