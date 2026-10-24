# meas_ge_le_mul_pow_eLpNorm_enorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "360ed8bfc9b4bb1f760ee847215ec853471318ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2aba64e7-da9d-ecac-80b7-0439d9d04696",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2668ad4-ba37-76ed-b4b4-a31080c38456",
  "kind": "theorem",
  "lexical_name": "meas_ge_le_mul_pow_eLpNorm_enorm",
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
  "slug": "meas-ge-le-mul-pow-elpnorm-enorm--3d3a7870411326e08360b5f3",
  "source": {
    "blob": "360ed8bfc9b4bb1f760ee847215ec853471318ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d3a7870411326e08360b5f355b0fa75ddd78c95e39cc2df778a3541f8a7a570",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2668ad4-ba37-76ed-b4b4-a31080c38456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meas_ge_le_mul_pow_eLpNorm_enorm (hp_ne_zero : p ≠ 0) (hp_ne_top : p ≠ ∞)
    {f : α → ε'} (hf : AEStronglyMeasurable f μ)
    {ε : ℝ≥0∞} (hε : ε ≠ 0) (hmeas_top : ε = ∞ → μ {x | ‖f x‖ₑ = ⊤} = 0) :
    μ { x | ε ≤ ‖f x‖ₑ } ≤ ε⁻¹ ^ p.toReal * eLpNorm f p μ ^ p.toReal := by
  by_cases h : ε = ∞
  · have : (0 : ℝ≥0∞) ^ p.toReal = 0 := by
      rw [ENNReal.zero_rpow_of_pos (ENNReal.toReal_pos hp_ne_zero hp_ne_top)]
    simp [h, this, hmeas_top]
  · have hεpow : ε ^ p.toReal ≠ 0 := (ENNReal.rpow_pos (pos_iff_ne_zero.2 hε) h).ne.symm
    have hεpow' : ε ^ p.toReal ≠ ∞ := ENNReal.rpow_ne_top_of_nonneg ENNReal.toReal_nonneg h
    rw [ENNReal.inv_rpow, ← ENNReal.mul_le_mul_left hεpow hεpow', ← mul_assoc,
      ENNReal.mul_inv_cancel hεpow hεpow', one_mul]
    exact mul_meas_ge_le_pow_eLpNorm' μ hp_ne_zero hp_ne_top hf ε

@[deprecated meas_ge_le_mul_pow_eLpNorm_enorm (since := "2025-05-01")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ChebyshevMarkov/Variant4e1f700172c8ae2dd54cb04cd6610110b0d4ffc9678b010cab9e09e97ea52144.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `360ed8bfc9b4bb1f760ee847215ec853471318ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
