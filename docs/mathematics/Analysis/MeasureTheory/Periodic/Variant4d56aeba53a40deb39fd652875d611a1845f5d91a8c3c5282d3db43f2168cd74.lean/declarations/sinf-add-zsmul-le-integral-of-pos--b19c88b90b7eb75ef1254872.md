# sInf_add_zsmul_le_integral_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3afaca7-b3f1-7b57-0dca-c5525a6b2ba8",
  "kind": "theorem",
  "lexical_name": "sInf_add_zsmul_le_integral_of_pos",
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
  "slug": "sinf-add-zsmul-le-integral-of-pos--b19c88b90b7eb75ef1254872",
  "source": {
    "blob": "11f88e4f81eff4a22bb313a8a35a02a852844311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 334,
    "path": "GRWTSK/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b19c88b90b7eb75ef1254872fddb2bac6c7c8610155a323392d267c03f4e9f0e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3afaca7-b3f1-7b57-0dca-c5525a6b2ba8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sInf_add_zsmul_le_integral_of_pos (hT : 0 < T) (t : ℝ) :
    (sInf ((fun t => ∫ x in (0)..t, g x) '' Icc 0 T) + ⌊t / T⌋ • ∫ x in (0)..T, g x) ≤
      ∫ x in (0)..t, g x := by
  let ε := Int.fract (t / T) * T
  conv_rhs =>
    rw [← Int.fract_div_mul_self_add_zsmul_eq T t (by linarith), ←
      integral_add_adjacent_intervals (h_int 0 ε) (h_int _ _)]
  rw [hg.intervalIntegral_add_zsmul_eq ⌊t / T⌋ ε h_int, hg.intervalIntegral_add_eq ε 0, zero_add,
    add_le_add_iff_right]
  exact (continuous_primitive h_int 0).continuousOn.sInf_image_Icc_le <|
    mem_Icc_of_Ico (Int.fract_div_mul_self_mem_Ico T t hT)
#align function.periodic.Inf_add_zsmul_le_integral_of_pos Function.Periodic.sInf_add_zsmul_le_integral_of_pos

/-- If `g : ℝ → ℝ` is periodic with period `T > 0`, then for any `t : ℝ`, the function
`t ↦ ∫ x in 0..t, g x` is bounded above by `t ↦ X + ⌊t/T⌋ • Y` for appropriate constants `X` and
`Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f88e4f81eff4a22bb313a8a35a02a852844311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
