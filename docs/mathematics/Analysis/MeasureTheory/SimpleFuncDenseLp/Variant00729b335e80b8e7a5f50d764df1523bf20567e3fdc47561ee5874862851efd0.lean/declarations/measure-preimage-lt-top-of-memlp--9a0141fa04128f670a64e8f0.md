# measure_preimage_lt_top_of_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8c42bc3f0aa0818639c71056518a58cf5f53418",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d35778a9-d2d8-c51c-1b4b-ab635ad7acb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0dff7344-8ae4-91af-417d-1e863d3b5a1f",
  "kind": "theorem",
  "lexical_name": "measure_preimage_lt_top_of_memLp",
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
  "slug": "measure-preimage-lt-top-of-memlp--9a0141fa04128f670a64e8f0",
  "source": {
    "blob": "b8c42bc3f0aa0818639c71056518a58cf5f53418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 272,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a0141fa04128f670a64e8f099a77136c290ed2d2cf6f179311359fd696ebcb0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dff7344-8ae4-91af-417d-1e863d3b5a1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_preimage_lt_top_of_memLp (hp_pos : p ≠ 0) (hp_ne_top : p ≠ ∞) (f : α →ₛ E)
    (hf : MemLp f p μ) (y : E) (hy_ne : y ≠ 0) : μ (f ⁻¹' {y}) < ∞ := by
  have hp_pos_real : 0 < p.toReal := ENNReal.toReal_pos hp_pos hp_ne_top
  have hf_eLpNorm := MemLp.eLpNorm_lt_top hf
  rw [eLpNorm_eq_eLpNorm' hp_pos hp_ne_top, f.eLpNorm'_eq, one_div,
    ← @ENNReal.lt_rpow_inv_iff _ _ p.toReal⁻¹ (by simp [hp_pos_real]),
    @ENNReal.top_rpow_of_pos p.toReal⁻¹⁻¹ (by simp [hp_pos_real]),
    ENNReal.sum_lt_top] at hf_eLpNorm
  by_cases hyf : y ∈ f.range
  swap
  · suffices h_empty : f ⁻¹' {y} = ∅ by
      rw [h_empty, measure_empty]; exact ENNReal.coe_lt_top
    ext1 x
    rw [Set.mem_preimage, Set.mem_singleton_iff, mem_empty_iff_false, iff_false]
    refine fun hxy => hyf ?_
    rw [mem_range, Set.mem_range]
    exact ⟨x, hxy⟩
  specialize hf_eLpNorm y hyf
  rw [ENNReal.mul_lt_top_iff] at hf_eLpNorm
  cases hf_eLpNorm with
  | inl hf_eLpNorm => exact hf_eLpNorm.2
  | inr hf_eLpNorm =>
    cases hf_eLpNorm with
    | inl hf_eLpNorm =>
      refine absurd ?_ hy_ne
      simpa [hp_pos_real] using hf_eLpNorm
    | inr hf_eLpNorm => simp [hf_eLpNorm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8c42bc3f0aa0818639c71056518a58cf5f53418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
