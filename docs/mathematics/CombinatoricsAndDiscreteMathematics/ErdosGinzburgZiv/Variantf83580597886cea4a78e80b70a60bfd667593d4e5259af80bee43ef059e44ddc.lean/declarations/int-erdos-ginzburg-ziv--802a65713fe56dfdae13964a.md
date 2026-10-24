# Int.erdos_ginzburg_ziv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "846c398bc8e5b925a765d2178949dbd29a804452",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed5ea7c0-d223-3f4a-fe3b-4ad834dd8cf9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fb94674-b954-7cd9-1321-274eebb63871",
  "kind": "theorem",
  "lexical_name": "Int.erdos_ginzburg_ziv",
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
  "slug": "int-erdos-ginzburg-ziv--802a65713fe56dfdae13964a",
  "source": {
    "blob": "846c398bc8e5b925a765d2178949dbd29a804452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:802a65713fe56dfdae13964a8e15af8e5446eb0edb537168158cbc09456c0e57",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fb94674-b954-7cd9-1321-274eebb63871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.erdos_ginzburg_ziv (a : ι → ℤ) (hs : 2 * n - 1 ≤ #s) :
    ∃ t ⊆ s, #t = n ∧ ↑n ∣ ∑ i ∈ t, a i := by
  classical
  -- Do induction on the prime factorisation of `n`. Note that we will apply the induction
  -- hypothesis with `ι := Finset ι`, so we need to generalise.
  induction n using Nat.prime_composite_induction generalizing ι with
  -- When `n := 0`, we can set `t := ∅`.
  | zero => exact ⟨∅, by simp⟩
  -- When `n := 1`, we can take `t` to be any subset of `s` of size `2 * n - 1`.
  | one => simpa using exists_subset_card_eq hs
  -- When `n := p` is prime, we use the prime case `Int.erdos_ginzburg_ziv_prime`.
  | prime p hp =>
    haveI := Fact.mk hp
    obtain ⟨t, hts, ht⟩ := exists_subset_card_eq hs
    obtain ⟨u, hut, hu⟩ := Int.erdos_ginzburg_ziv_prime a ht
    exact ⟨u, hut.trans hts, hu⟩
  -- When `n := m * n` is composite, we pick (by induction hypothesis on `n`) `2 * m - 1` sets of
  -- size `n` and sums divisible by `n`. Then by induction hypothesis (on `m`) we can pick `m` of
  -- these sets whose sum is divisible by `m * n`.
  | composite m hm ihm n hn ihn =>
     -- First, show that it is enough to have those `2 * m - 1` sets.
    suffices ∀ k ≤ 2 * m - 1, ∃ 𝒜 : Finset (Finset ι), #𝒜 = k ∧
      (𝒜 : Set (Finset ι)).Pairwise _root_.Disjoint ∧
        ∀ ⦃t⦄, t ∈ 𝒜 → t ⊆ s ∧ #t = n ∧ ↑n ∣ ∑ i ∈ t, a i by
     -- Assume `𝒜` is a family of `2 * m - 1` sets, each of size `n` and sum divisible by `n`.
      obtain ⟨𝒜, h𝒜card, h𝒜disj, h𝒜⟩ := this _ le_rfl
      -- By induction hypothesis on `m`, find a subfamily `ℬ` of size `m` such that the sum over
      -- `t ∈ ℬ` of `(∑ i ∈ t, a i) / n` is divisible by `m`.
      obtain ⟨ℬ, hℬ𝒜, hℬcard, hℬ⟩ := ihm (fun t ↦ (∑ i ∈ t, a i) / n) h𝒜card.ge
      -- We are done.
      refine ⟨ℬ.biUnion fun x ↦ x, biUnion_subset.2 fun t ht ↦ (h𝒜 <| hℬ𝒜 ht).1, ?_, ?_⟩
      · rw [card_biUnion (h𝒜disj.mono hℬ𝒜), sum_const_nat fun t ht ↦ (h𝒜 <| hℬ𝒜 ht).2.1, hℬcard]
      rwa [sum_biUnion, Int.natCast_mul, mul_comm, ← Int.dvd_div_iff_mul_dvd, Int.sum_div]
      · exact fun t ht ↦ (h𝒜 <| hℬ𝒜 ht).2.2
      · exact dvd_sum fun t ht ↦ (h𝒜 <| hℬ𝒜 ht).2.2
      · exact h𝒜disj.mono hℬ𝒜
    -- Now, let's find those `2 * m - 1` sets.
    rintro k hk
    -- We induct on the size `k ≤ 2 * m - 1` of the family we are constructing.
    induction k with
    -- For `k = 0`, the empty family trivially works.
    | zero => exact ⟨∅, by simp⟩
    | succ k ih =>
    -- At `k + 1`, call `𝒜` the existing family of size `k ≤ 2 * m - 2`.
    obtain ⟨𝒜, h𝒜card, h𝒜disj, h𝒜⟩ := ih (Nat.le_of_succ_le hk)
    -- There are at least `2 * (m * n) - 1 - k * n ≥ 2 * m - 1` elements in `s` that have not been
    -- taken in any element of `𝒜`.
    have : 2 * n - 1 ≤ #(s \ 𝒜.biUnion id) := by
      calc
        _ ≤ (2 * m - k) * n - 1 := by gcongr; omega
        _ = (2 * (m * n) - 1) - ∑ t ∈ 𝒜, #t := by
          rw [tsub_mul, mul_assoc, tsub_right_comm, sum_const_nat fun t ht ↦ (h𝒜 ht).2.1, h𝒜card]
        _ ≤ #s - #(𝒜.biUnion id) := by gcongr; exact card_biUnion_le
        _ ≤ #(s \ 𝒜.biUnion id) := le_card_sdiff ..
    -- So by the induction hypothesis on `n` we can find a new set `t` of size `n` and sum divisible
    -- by `n`.
    obtain ⟨t₀, ht₀, ht₀card, ht₀sum⟩ := ihn a this
    -- This set is distinct and disjoint from the previous ones, so we are done.
    have : t₀ ∉ 𝒜 := by
      rintro h
      obtain rfl : n = 0 := by
        simpa [← card_eq_zero, ht₀card] using sdiff_disjoint.mono ht₀ <| subset_biUnion_of_mem id h
      omega
    refine ⟨𝒜.cons t₀ this, by rw [card_cons, h𝒜card], ?_, ?_⟩
    · simp only [cons_eq_insert, coe_insert, Set.pairwise_insert_of_symmetric symmetric_disjoint,
        mem_coe, ne_eq]
      exact ⟨h𝒜disj, fun t ht _ ↦ sdiff_disjoint.mono ht₀ <| subset_biUnion_of_mem id ht⟩
    · simp only [cons_eq_insert, mem_insert, forall_eq_or_imp, and_assoc]
      exact ⟨ht₀.trans sdiff_subset, ht₀card, ht₀sum, h𝒜⟩

/-- The **Erdős–Ginzburg–Ziv theorem** for `ℤ/nℤ`.

Any sequence of at least `2 * n - 1` elements of `ZMod n` contains a subsequence of `n` elements
whose sum is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846c398bc8e5b925a765d2178949dbd29a804452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
