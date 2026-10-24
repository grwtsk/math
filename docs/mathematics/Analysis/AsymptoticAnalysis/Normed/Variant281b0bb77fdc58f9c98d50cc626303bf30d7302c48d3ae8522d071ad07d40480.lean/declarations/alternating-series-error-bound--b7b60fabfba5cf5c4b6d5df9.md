# alternating_series_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b033d8917bbd2c274f2bb55e6b07c46c9204db5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1044,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8497ce87-3c9f-360c-cfc5-31e4a2462c3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c31038b-5a40-b6f7-84e1-4e3ff5c4f509",
  "kind": "theorem",
  "lexical_name": "alternating_series_error_bound",
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
  "slug": "alternating-series-error-bound--b7b60fabfba5cf5c4b6d5df9",
  "source": {
    "blob": "b033d8917bbd2c274f2bb55e6b07c46c9204db5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1083,
    "line": 1044,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7b60fabfba5cf5c4b6d5df905413d5f7454d78cd8937c919f07910b661e2eb1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c31038b-5a40-b6f7-84e1-4e3ff5c4f509`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1044–1083.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alternating_series_error_bound
    {E} [Ring E] [LinearOrder E] [IsOrderedRing E]
    [UniformSpace E] [IsUniformAddGroup E] [CompleteSpace E] [OrderClosedTopology E]
    (f : ℕ → E) (hfa : Antitone f) (hfs : Summable f) (n : ℕ) :
    |(∑' i : ℕ, (-1) ^ i * f i) - (∑ i ∈ range n, (-1) ^ i * f i)| ≤ f n := by
  obtain h := hfs.tendsto_alternating_series_tsum
  have upper := hfa.alternating_series_le_tendsto h
  have lower := hfa.tendsto_le_alternating_series h
  have I (n : ℕ) : 0 ≤ f n := by
    apply le_of_tendsto hfs.tendsto_atTop_zero
    filter_upwards [Ici_mem_atTop n] with m hm using hfa hm
  obtain (h | h) := even_or_odd n
  · obtain ⟨n, rfl⟩ := even_iff_exists_two_mul.mp h
    specialize upper n
    specialize lower n
    simp only [sum_range_succ, even_two, Even.mul_right, Even.neg_pow, one_pow, one_mul] at lower
    rw [abs_sub_le_iff]
    constructor
    · rwa [sub_le_iff_le_add, add_comm]
    · rw [sub_le_iff_le_add, add_comm]
      exact upper.trans (le_add_of_nonneg_right (I (2 * n)))
  · obtain ⟨n, rfl⟩ := odd_iff_exists_bit1.mp h
    specialize upper (n + 1)
    specialize lower n
    rw [Nat.mul_add, Finset.sum_range_succ] at upper
    rw [abs_sub_le_iff]
    constructor
    · rw [sub_le_iff_le_add, add_comm]
      exact lower.trans (le_add_of_nonneg_right (I (2 * n + 1)))
    · simpa [Finset.sum_range_succ, add_comm, pow_add] using upper

end

/-!
### Factorial
-/

/-- The series `∑' n, x ^ n / n!` is summable of any `x : ℝ`. See also `expSeries_div_summable`
for a version that also works in `ℂ`, and `NormedSpace.expSeries_summable'` for a version
that works in any normed algebra over `ℝ` or `ℂ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean#L1044).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b033d8917bbd2c274f2bb55e6b07c46c9204db5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
