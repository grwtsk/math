# mem_Ico_one_of_mem_Ioo

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
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a1db9df-2f2f-40e9-a074-af336c6e717b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cdcd100-9fec-2770-946a-9ab07eae5643",
  "kind": "lemma",
  "lexical_name": "mem_Ico_one_of_mem_Ioo",
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
  "slug": "mem-ico-one-of-mem-ioo--1aae18ca98f73f666607a5f9",
  "source": {
    "blob": "066cc6e48981df8dc124ec42e8437d02f73bf50b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 69,
    "path": "GRWTSK/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aae18ca98f73f666607a5f9dc427385215b806aa37c3ef6bc94d2e50d88ff3e",
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

Occurrence: `result:5cdcd100-9fec-2770-946a-9ab07eae5643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_Ico_one_of_mem_Ioo (h : α ∈ Set.Ioo 0 2) : α ∈ Set.Ico 1 2 := by
  rcases h with ⟨h0, h2⟩
  refine ⟨?_, h2⟩
  by_contra! hn
  have hr : 1 < ⌈α⁻¹⌉₊ := by
    rw [Nat.lt_ceil]
    exact_mod_cast (one_lt_inv₀ h0).2 hn
  apply hr.ne'
  suffices ⌈α⁻¹⌉₊ = (1 : ℤ) from mod_cast this
  apply Int.eq_one_of_dvd_one (Int.zero_le_ofNat _)
  convert hc ⌈α⁻¹⌉₊ (zero_lt_one.trans hr)
  rw [← Finset.add_sum_Ico_eq_sum_Icc hr.le]
  convert (add_zero _).symm
  · rw [Int.floor_eq_iff]
    constructor
    · rw [Int.cast_one]
      calc 1 ≤ α⁻¹ * α := by simp [h0.ne']
        _ ≤ ⌈α⁻¹⌉₊ * α := by gcongr; exact Nat.le_ceil α⁻¹
    · calc ⌈α⁻¹⌉₊ * α
        _ < (α⁻¹ + 1) * α := by gcongr; exact Nat.ceil_lt_add_one (inv_nonneg.2 h0.le)
        _ = 1 + α := by field_simp [h0.ne']
        _ ≤ (1 : ℕ) + 1 := by gcongr; norm_cast
  · apply Finset.sum_eq_zero
    intro x hx
    rw [Int.floor_eq_zero_iff]
    refine ⟨by positivity, ?_⟩
    rw [Finset.mem_Ico, Nat.lt_ceil] at hx
    calc x * α < α⁻¹ * α := by gcongr; exact hx.2
      _ = 1 := by simp [h0.ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2024Q1/Variant1f15992c7c6f0152d5c71d671cdbb871912ed774e92bac14f8f3417948daf3a5.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `066cc6e48981df8dc124ec42e8437d02f73bf50b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
