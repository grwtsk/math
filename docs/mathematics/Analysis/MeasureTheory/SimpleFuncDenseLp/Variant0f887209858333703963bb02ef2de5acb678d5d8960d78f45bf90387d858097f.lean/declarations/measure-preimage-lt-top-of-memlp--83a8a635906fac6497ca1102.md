# measure_preimage_lt_top_of_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63adfbbd-7717-0b31-00e3-ab22cc9c542f",
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
  "slug": "measure-preimage-lt-top-of-memlp--83a8a635906fac6497ca1102",
  "source": {
    "blob": "bc237f045196c891c518d440ecfe10e5273ff39c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 280,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83a8a635906fac6497ca1102524a0bbd4ae268df511668323d0ef58f16edb619",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63adfbbd-7717-0b31-00e3-ab22cc9c542f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–307.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc237f045196c891c518d440ecfe10e5273ff39c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
