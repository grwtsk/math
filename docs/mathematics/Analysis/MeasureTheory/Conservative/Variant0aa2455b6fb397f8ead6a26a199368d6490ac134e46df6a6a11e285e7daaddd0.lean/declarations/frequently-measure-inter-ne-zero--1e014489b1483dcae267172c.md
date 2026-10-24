# frequently_measure_inter_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83c3aca4-dde8-ccc3-67e0-b4877fe15acc",
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
  "slug": "frequently-measure-inter-ne-zero--1e014489b1483dcae267172c",
  "source": {
    "blob": "035f978aa871877a4fe58fdd2966c86426f6e01e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 116,
    "path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e014489b1483dcae267172ca8988cfa3ef875957e5799cc813344b592cdece0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83c3aca4-dde8-ccc3-67e0-b4877fe15acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–144.

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
    convert! exists_max_image _ (·) H ⟨0, by simpa⟩ using 4
    rw [gt_iff_lt, ← not_le, not_imp_comm, mem_ofPred]
  have htm {n : ℕ} : NullMeasurableSet (t n) μ :=
    hs.inter <| hs.preimage <| hf.toQuasiMeasurePreserving.iterate n
  -- Then all `t n`, `n > N`, are null sets, hence `T = t N \ ⋃ n > N, t n` has positive measure.
  set T := t N \ ⋃ n > N, t n with hT
  have hμT : μ T ≠ 0 := by
    rwa [hT, measure_sdiff_null]
    exact (measure_biUnion_null_iff {n | N < n}.to_countable).2 hmax
  have hTm : NullMeasurableSet T μ := htm.diff <| .biUnion {n | N < n}.to_countable fun _ _ ↦ htm
  -- Take `x ∈ T` and `m ≠ 0` such that `f^[m] x ∈ T`.
  rcases hf.exists_mem_iterate_mem hTm hμT with ⟨x, hxt, m, hm₀, hmt⟩
  -- Then `N + m > N`, `x ∈ s`, and `f^[N + m] x = f^[N] (f^[m] x) ∈ s`.
  -- This contradicts `x ∈ T ⊆ (⋃ n > N, t n)ᶜ`.
  refine hxt.2 <| mem_iUnion₂.2 ⟨N + m, ?_, hxt.1.1, ?_⟩
  · simpa [pos_iff_ne_zero]
  · simpa only [iterate_add] using! hmt.1.2

/-- If `f` is a conservative map and `s` is a measurable set of nonzero measure, then
for an arbitrarily large `m` a positive measure of points `x ∈ s` returns back to `s`
after `m` iterations of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `035f978aa871877a4fe58fdd2966c86426f6e01e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
