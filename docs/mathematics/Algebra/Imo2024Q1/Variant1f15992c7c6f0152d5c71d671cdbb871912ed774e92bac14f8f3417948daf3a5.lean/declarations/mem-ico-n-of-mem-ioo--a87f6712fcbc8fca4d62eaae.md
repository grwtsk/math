# mem_Ico_n_of_mem_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "066cc6e48981df8dc124ec42e8437d02f73bf50b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72228a63-7c64-a1ec-c5a6-e493b0330547",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad5dabfb-954e-da38-d37d-0adfb663d280",
  "kind": "lemma",
  "lexical_name": "mem_Ico_n_of_mem_Ioo",
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
  "slug": "mem-ico-n-of-mem-ioo--a87f6712fcbc8fca4d62eaae",
  "source": {
    "blob": "066cc6e48981df8dc124ec42e8437d02f73bf50b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 99,
    "path": "GRWTSK/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a87f6712fcbc8fca4d62eaaeb20c790525667f8e386295f3c1187c7dc13a0b11",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad5dabfb-954e-da38-d37d-0adfb663d280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_Ico_n_of_mem_Ioo (h : α ∈ Set.Ioo 0 2) {n : ℕ} (hn : 0 < n) :
    α ∈ Set.Ico ((2 * n - 1) / n : ℝ) 2 := by
  suffices ∑ i ∈ Finset.Icc 1 n, ⌊i * α⌋ = n ^ 2 ∧ α ∈ Set.Ico ((2 * n - 1) / n : ℝ) 2 from this.2
  induction' n, hn using Nat.le_induction with k kpos hk
  · obtain ⟨h1, h2⟩ := hc.mem_Ico_one_of_mem_Ioo h
    simp only [zero_add, Finset.Icc_self, Finset.sum_singleton, Nat.cast_one, one_mul, one_pow,
               Int.floor_eq_iff, Int.cast_one, mul_one, div_one, Set.mem_Ico, tsub_le_iff_right]
    exact ⟨⟨h1, by linarith⟩, by linarith, h2⟩
  · rcases hk with ⟨hks, hkl, hk2⟩
    have hs : (∑ i ∈ Finset.Icc 1 (k + 1), ⌊i * α⌋) =
         ⌊(k + 1 : ℕ) * α⌋ + ((k : ℕ) : ℤ) ^ 2 := by
      have hn11 : k + 1 ∉ Finset.Icc 1 k := by
        rw [Finset.mem_Icc]
        omega
      rw [← insert_Icc_right_eq_Icc_add_one (Nat.le_add_left 1 k), sum_insert hn11, hks]
    specialize hc (k + 1) k.succ_pos
    rw [hs] at hc ⊢
    have hkl' : 2 * k ≤ ⌊(k + 1 : ℕ) * α⌋ := by
      rw [Int.le_floor]
      calc ((2 * k : ℤ) : ℝ) = ((2 * k : ℤ) : ℝ) + 0 := (add_zero _).symm
        _ ≤ ((2 * k : ℤ) : ℝ) + (k - 1) / k := by gcongr; norm_cast; positivity
        _ = (k + 1 : ℕ) * ((2 * (k : ℕ) - 1) / ((k : ℕ) : ℝ)) := by field_simp; ring
        _ ≤ (k + 1 : ℕ) * α := by gcongr
    have hk2' : ⌊(k + 1 : ℕ) * α⌋ < (k + 1 : ℕ) * 2 := by
      rw [Int.floor_lt]
      push_cast
      gcongr
    have hk' : ⌊(k + 1 : ℕ) * α⌋ = 2 * k + 1 := by
      by_contra
      rw [show ⌊(k + 1 : ℕ) * α⌋ = 2 * k by omega] at hc
      have hc' : ((k + 1 : ℕ) : ℤ) ∣ ((k + 1 : ℕ) : ℤ) * ((k + 1 : ℕ) : ℤ) - 1 := by
        convert hc using 1
        push_cast
        ring
      rw [dvd_sub_right (dvd_mul_right _ _), ← isUnit_iff_dvd_one, Int.isUnit_iff] at hc'
      omega
    rw [hk']
    refine ⟨?_, ?_, h.2⟩
    · push_cast
      ring
    · rw [Int.floor_eq_iff] at hk'
      rw [div_le_iff₀ (by norm_cast; omega), mul_comm α]
      convert hk'.1
      push_cast
      ring

end Condition

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `066cc6e48981df8dc124ec42e8437d02f73bf50b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
