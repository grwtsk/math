# exists_mem_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c9036dfc78fc47e8a3e9d51ab6c20d47e6b9d51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fccd4c8-775c-3bbc-2e39-d25142a2153b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce886444-975e-d5c4-7374-c7ff175c3609",
  "kind": "theorem",
  "lexical_name": "exists_mem_range",
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
  "slug": "exists-mem-range--968fef19ac781200b6bf0146",
  "source": {
    "blob": "9c9036dfc78fc47e8a3e9d51ab6c20d47e6b9d51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 163,
    "path": "GRWTSK/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:968fef19ac781200b6bf01469bfcd84645e61742272fc77128dc7e527440f8e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce886444-975e-d5c4-7374-c7ff175c3609`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_range : ∃ n : ℕ, n < p ∧ x - n ∈ maximalIdeal ℤ_[p] := by
  simp only [maximalIdeal_eq_span_p, Ideal.mem_span_singleton, ← norm_lt_one_iff_dvd]
  obtain ⟨r, hr⟩ := rat_dense p (x : ℚ_[p]) zero_lt_one
  have H : ‖(r : ℚ_[p])‖ ≤ 1 := by
    rw [norm_sub_rev] at hr
    calc
      _ = ‖(r : ℚ_[p]) - x + x‖ := by ring_nf
      _ ≤ _ := padicNormE.nonarchimedean _ _
      _ ≤ _ := max_le (le_of_lt hr) x.2

  obtain ⟨n, hzn, hnp, hn⟩ := exists_mem_range_of_norm_rat_le_one r H
  lift n to ℕ using hzn
  use n
  constructor
  · exact mod_cast hnp
  simp only [norm_def, coe_sub, Subtype.coe_mk, coe_natCast] at hn ⊢
  rw [show (x - n : ℚ_[p]) = x - r + (r - n) by ring]
  apply lt_of_le_of_lt (padicNormE.nonarchimedean _ _)
  apply max_lt hr
  simpa using hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c9036dfc78fc47e8a3e9d51ab6c20d47e6b9d51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
