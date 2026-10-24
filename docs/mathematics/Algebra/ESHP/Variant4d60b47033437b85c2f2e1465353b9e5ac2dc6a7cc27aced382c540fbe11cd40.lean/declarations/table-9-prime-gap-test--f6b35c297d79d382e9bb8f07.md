# table_9_prime_gap_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9e468fee2e01d3278a32ef82ef1c44b2545514b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9165041b-0e20-01a4-8889-c2c68874cfcf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c892aee-0217-da23-b143-3844dccbce38",
  "kind": "theorem",
  "lexical_name": "table_9_prime_gap_test",
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
  "slug": "table-9-prime-gap-test--f6b35c297d79d382e9bb8f07",
  "source": {
    "blob": "b9e468fee2e01d3278a32ef82ef1c44b2545514b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 178,
    "path": "GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6b35c297d79d382e9bb8f07f33f6dfe5cda6bd8747318db10a9e8a89d201a19",
  "verification": {
    "reference": "docs/verification/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c892aee-0217-da23-b143-3844dccbce38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem table_9_prime_gap_test (g P : ℕ) (h : (g, P) ∈ table_9) (htest : P < 30) :
    first_gap_record g P := by
  have hnp5 : nth_prime 5 = 13 := by
    have hp13 : Nat.Prime 13 := by decide
    have hcount13 : Nat.count Nat.Prime 13 = 5 := by decide
    simpa only [nth_prime, hcount13] using Nat.nth_count (p := Nat.Prime) (n := 13) hp13
  have hnp6 : nth_prime 6 = 17 := by
    have hp17 : Nat.Prime 17 := by decide
    have hcount17 : Nat.count Nat.Prime 17 = 6 := by decide
    simpa only [nth_prime, hcount17] using Nat.nth_count (p := Nat.Prime) (n := 17) hp17
  have hnp7 : nth_prime 7 = 19 := by
    have hp19 : Nat.Prime 19 := by decide
    have hcount19 : Nat.count Nat.Prime 19 = 7 := by decide
    simpa only [nth_prime, hcount19] using Nat.nth_count (p := Nat.Prime) (n := 19) hp19
  have hnp8 : nth_prime 8 = 23 := by
    have hp23 : Nat.Prime 23 := by decide
    have hcount23 : Nat.count Nat.Prime 23 = 8 := by decide
    simpa only [nth_prime, hcount23] using Nat.nth_count (p := Nat.Prime) (n := 23) hp23
  have hnp9 : nth_prime 9 = 29 := by
    have hp29 : Nat.Prime 29 := by decide
    have hcount29 : Nat.count Nat.Prime 29 = 9 := by decide
    simpa only [nth_prime, hcount29] using Nat.nth_count (p := Nat.Prime) (n := 29) hp29
  have hfg1 : first_gap 1 = 2 := by
    have hex1 : ∃ n, nth_prime_gap n = 1 := ⟨0, by simp [nth_prime_gap, nth_prime,
      Nat.nth_prime_zero_eq_two, Nat.nth_prime_one_eq_three]⟩
    have hfind1 : Nat.find hex1 = 0 := by
      exact (Nat.find_eq_zero hex1).2 (by simp [nth_prime_gap, nth_prime,
        Nat.nth_prime_zero_eq_two, Nat.nth_prime_one_eq_three])
    simp [first_gap, hex1, hfind1, nth_prime, Nat.nth_prime_zero_eq_two]
  have hfg2 : first_gap 2 = 3 := by
    have hex2 : ∃ n, nth_prime_gap n = 2 := ⟨1, by simp [nth_prime_gap, nth_prime,
      Nat.nth_prime_one_eq_three, Nat.nth_prime_two_eq_five]⟩
    have hfind2 : Nat.find hex2 = 1 := by
      refine (Nat.find_eq_iff hex2).2 ?_
      exact ⟨by simp [nth_prime_gap, nth_prime, Nat.nth_prime_one_eq_three,
        Nat.nth_prime_two_eq_five], fun n hn => by
        have hn0 : n = 0 := by omega
        subst hn0
        simp [nth_prime_gap, nth_prime, Nat.nth_prime_zero_eq_two,
          Nat.nth_prime_one_eq_three]⟩
    simp [first_gap, hex2, hfind2, nth_prime, Nat.nth_prime_one_eq_three]
  have hfg4 : first_gap 4 = 7 := by
    have hex4 : ∃ n, nth_prime_gap n = 4 := ⟨3, by simp [nth_prime_gap, nth_prime,
      Nat.nth_prime_three_eq_seven, Nat.nth_prime_four_eq_eleven]⟩
    have hfind4 : Nat.find hex4 = 3 := by
      refine (Nat.find_eq_iff hex4).2 ?_
      exact ⟨by simp [nth_prime_gap, nth_prime, Nat.nth_prime_three_eq_seven,
        Nat.nth_prime_four_eq_eleven], fun n hn => by
        interval_cases n <;>
          simp [nth_prime_gap, nth_prime, Nat.nth_prime_zero_eq_two,
            Nat.nth_prime_one_eq_three, Nat.nth_prime_two_eq_five,
            Nat.nth_prime_three_eq_seven]⟩
    simp [first_gap, hex4, hfind4, nth_prime, Nat.nth_prime_three_eq_seven]
  have hfg6 : first_gap 6 = 23 := by
    have hex6 : ∃ n, nth_prime_gap n = 6 := ⟨8, by simp [nth_prime_gap, hnp8, hnp9]⟩
    have hfind6 : Nat.find hex6 = 8 := by
      refine (Nat.find_eq_iff hex6).2 ?_
      exact ⟨by simp [nth_prime_gap, hnp8, hnp9], fun n hn => by
        interval_cases n <;>
          simp [nth_prime_gap, nth_prime, Nat.nth_prime_zero_eq_two,
            Nat.nth_prime_one_eq_three, Nat.nth_prime_two_eq_five,
            Nat.nth_prime_three_eq_seven, Nat.nth_prime_four_eq_eleven,
            hnp5, hnp6, hnp7, hnp8]⟩
    simp [first_gap, hex6, hfind6, hnp8]
  have hrecord1 : first_gap_record 1 2 := by
    simp [first_gap_record, hfg1]
  have hrecord2 : first_gap_record 2 3 := by
    refine ⟨hfg2, ?_⟩
    intro g' hg' _
    have hg'1 : g' = 1 := by
      obtain ⟨hg'1, hg'2⟩ := Finset.mem_Ico.mp hg'
      omega
    subst hg'1
    simp [Set.mem_Ico, hfg1]
  have hrecord4 : first_gap_record 4 7 := by
    refine ⟨hfg4, ?_⟩
    intro g' hg' hpar
    obtain ⟨hg'1, hg'4⟩ := Finset.mem_Ico.mp hg'
    rcases hpar with ⟨k, hk⟩ | hg'Eq1
    · have hk' : k = 1 := by omega
      subst hk; subst hk'
      simp [Set.mem_Ico, hfg2]
    · subst hg'Eq1
      simp [Set.mem_Ico, hfg1]
  have hrecord6 : first_gap_record 6 23 := by
    refine ⟨hfg6, ?_⟩
    intro g' hg' hpar
    obtain ⟨hg'1, hg'6⟩ := Finset.mem_Ico.mp hg'
    rcases hpar with ⟨k, hk⟩ | hg'Eq1
    · have hk' : k = 1 ∨ k = 2 := by omega
      rcases hk' with hk' | hk'
      · subst hk; subst hk'
        simp [Set.mem_Ico, hfg2]
      · subst hk; subst hk'
        simp [Set.mem_Ico, hfg4]
    · subst hg'Eq1
      simp [Set.mem_Ico, hfg1]
  have hPmem : P ∈ table_9.map Prod.snd := by
    simpa using List.mem_map_of_mem (f := Prod.snd) h
  have htestb : decide (P < 30) = true :=
    decide_eq_true htest
  have hPsmallmem : P ∈ (table_9.map Prod.snd).filter (fun n ↦ decide (n < 30)) :=
    List.mem_filter.mpr ⟨hPmem, htestb⟩
  have hPsmall : P = 2 ∨ P = 3 ∨ P = 7 ∨ P = 23 := by
    simpa [table_9] using hPsmallmem
  rcases hPsmall with rfl | rfl | rfl | rfl
  · have hg : g = 1 := by simpa [table_9] using h
    subst hg; exact hrecord1
  · have hg : g = 2 := by simpa [table_9] using h
    subst hg; exact hrecord2
  · have hg : g = 4 := by simpa [table_9] using h
    subst hg; exact hrecord4
  · have hg : g = 6 := by simpa [table_9] using h
    subst hg; exact hrecord6

@[blueprint
  "table-9-prime-gap"
  (title := "Table 9 prime gaps")
  (statement := /--
  For every pair $(g,P)$ in Table 9, $P$ is the first prime
  producing the prime gap $g$, and all smaller $g'$ (that are
  even or $1$) have a smaller first prime. -/)
  (proof := /-- Verified by computer.  Unlikely to be
  formalizable in Lean with current technology, except for
  the small values of the table. -/)
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e468fee2e01d3278a32ef82ef1c44b2545514b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
