# posConvolution_eq_convolution_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01ac3fc1f4d36b203933f575dde6b0931b0b8556",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 993,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af9bece1-922c-5826-ee9a-934ebb1c574b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53cef2ea-0943-83e7-c310-5f0ff46d89be",
  "kind": "theorem",
  "lexical_name": "posConvolution_eq_convolution_indicator",
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
  "slug": "posconvolution-eq-convolution-indicator--6d232f345fd87f95b0387de1",
  "source": {
    "blob": "01ac3fc1f4d36b203933f575dde6b0931b0b8556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1020,
    "line": 993,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d232f345fd87f95b0387de12bc67bc3b18277950de28b28d0f7f1a1fba837d2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53cef2ea-0943-83e7-c310-5f0ff46d89be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 993–1020.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posConvolution_eq_convolution_indicator (f : ℝ → E) (g : ℝ → E') (L : E →L[ℝ] E' →L[ℝ] F)
    (ν : Measure ℝ := by volume_tac) [NullSingletonClass ν] :
    posConvolution f g L ν = convolution (indicator (Ioi 0) f) (indicator (Ioi 0) g) L ν := by
  ext1 x
  rw [convolution, posConvolution, indicator]
  split_ifs with h
  · rw [intervalIntegral.integral_of_le (le_of_lt h), integral_Ioc_eq_integral_Ioo, ←
      integral_indicator (measurableSet_Ioo : MeasurableSet (Ioo 0 x))]
    congr 1 with t : 1
    have : t ≤ 0 ∨ t ∈ Ioo 0 x ∨ x ≤ t := by
      rcases le_or_gt t 0 with (h | h)
      · exact Or.inl h
      · rcases lt_or_ge t x with (h' | h')
        exacts [Or.inr (Or.inl ⟨h, h'⟩), Or.inr (Or.inr h')]
    rcases this with (ht | ht | ht)
    · rw [indicator_of_notMem (notMem_Ioo_of_le ht), indicator_of_notMem (notMem_Ioi.mpr ht),
        map_zero, zero_apply]
    · rw [indicator_of_mem ht, indicator_of_mem (mem_Ioi.mpr ht.1),
          indicator_of_mem (mem_Ioi.mpr <| sub_pos.mpr ht.2)]
    · rw [indicator_of_notMem (notMem_Ioo_of_ge ht),
          indicator_of_notMem (notMem_Ioi.mpr (sub_nonpos_of_le ht)), map_zero]
  · convert! (integral_zero ℝ F).symm with t
    by_cases ht : 0 < t
    · rw [indicator_of_notMem (_ : x - t ∉ Ioi 0), map_zero]
      rw [notMem_Ioi] at h ⊢
      exact sub_nonpos.mpr (h.trans ht.le)
    · rw [indicator_of_notMem (mem_Ioi.not.mpr ht), map_zero, zero_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.lean#L993).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01ac3fc1f4d36b203933f575dde6b0931b0b8556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
