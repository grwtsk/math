# frequently_measure_inter_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10c5678c640d3c5cce5f59b1e3160b12305bad2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c9238c9-622f-cc99-17e6-cba89f12b1bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c97d159e-c6d4-f46f-7ad8-6277f05cc360",
  "kind": "theorem",
  "lexical_name": "frequently_measure_inter_ne_zero",
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
  "slug": "frequently-measure-inter-ne-zero--eecdd78558030324048e9d32",
  "source": {
    "blob": "10c5678c640d3c5cce5f59b1e3160b12305bad2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 102,
    "path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eecdd78558030324048e9d32eac88009a8ba93a9fb9ca6ca96831d497b30291f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c97d159e-c6d4-f46f-7ad8-6277f05cc360`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_measure_inter_ne_zero (hf : Conservative f μ) (hs : NullMeasurableSet s μ)
    (h0 : μ s ≠ 0) : ∃ᶠ m in atTop, μ (s ∩ f^[m] ⁻¹' s) ≠ 0 := by
  set t : ℕ → Set α := fun n ↦ s ∩ f^[n] ⁻¹' s
  -- Assume that `μ (t n) ≠ 0`, where `t n = s ∩ f^[n] ⁻¹' s`, only for finitely many `n`.
  by_contra H
  -- Let `N` be the maximal `n` such that `μ (t n) ≠ 0`.
  obtain ⟨N, hN, hmax⟩ : ∃ N, μ (t N) ≠ 0 ∧ ∀ n > N, μ (t n) = 0 := by
    rw [Nat.frequently_atTop_iff_infinite, not_infinite] at H
    convert exists_max_image _ (·) H ⟨0, by simpa⟩ using 4
    rw [gt_iff_lt, ← not_le, not_imp_comm, mem_setOf]
  have htm {n : ℕ} : NullMeasurableSet (t n) μ :=
    hs.inter <| hs.preimage <| hf.toQuasiMeasurePreserving.iterate n
  -- Then all `t n`, `n > N`, are null sets, hence `T = t N \ ⋃ n > N, t n` has positive measure.
  set T := t N \ ⋃ n > N, t n with hT
  have hμT : μ T ≠ 0 := by
    rwa [hT, measure_diff_null]
    exact (measure_biUnion_null_iff {n | N < n}.to_countable).2 hmax
  have hTm : NullMeasurableSet T μ := htm.diff <| .biUnion {n | N < n}.to_countable fun _ _ ↦ htm
  -- Take `x ∈ T` and `m ≠ 0` such that `f^[m] x ∈ T`.
  rcases hf.exists_mem_iterate_mem hTm hμT with ⟨x, hxt, m, hm₀, hmt⟩
  -- Then `N + m > N`, `x ∈ s`, and `f^[N + m] x = f^[N] (f^[m] x) ∈ s`.
  -- This contradicts `x ∈ T ⊆ (⋃ n > N, t n)ᶜ`.
  refine hxt.2 <| mem_iUnion₂.2 ⟨N + m, ?_, hxt.1.1, ?_⟩
  · simpa [pos_iff_ne_zero]
  · simpa only [iterate_add] using hmt.1.2

/-- If `f` is a conservative map and `s` is a measurable set of nonzero measure, then
for an arbitrarily large `m` a positive measure of points `x ∈ s` returns back to `s`
after `m` iterations of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10c5678c640d3c5cce5f59b1e3160b12305bad2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
