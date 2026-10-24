# meas_ge_le_mul_pow_snorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "377fef306ed9bbb6202e67c6b75dcef876549353",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/dec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f120dfb2-ff32-dc9c-94d4-4a46029bb2de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5e0da05-2b69-56e4-856c-7c0364752563",
  "kind": "theorem",
  "lexical_name": "meas_ge_le_mul_pow_snorm",
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
  "slug": "meas-ge-le-mul-pow-snorm--75d040bb3cc27c681c69ba09",
  "source": {
    "blob": "377fef306ed9bbb6202e67c6b75dcef876549353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1185,
    "line": 1172,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LpSeminorm/Variantdec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75d040bb3cc27c681c69ba09759e923b3b3861ccb03bbd607da4cdf8ed599be3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LpSeminorm/Variantdec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5e0da05-2b69-56e4-856c-7c0364752563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1172–1185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meas_ge_le_mul_pow_snorm {f : α → E} (hp_ne_zero : p ≠ 0) (hp_ne_top : p ≠ ∞)
    (hf : AEStronglyMeasurable f μ) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    μ { x | ε ≤ ‖f x‖₊ } ≤ ε⁻¹ ^ p.toReal * snorm f p μ ^ p.toReal := by
  by_cases ε = ∞
  · simp [h]
  have hεpow : ε ^ p.toReal ≠ 0 := (ENNReal.rpow_pos (pos_iff_ne_zero.2 hε) h).ne.symm
  have hεpow' : ε ^ p.toReal ≠ ∞ := ENNReal.rpow_ne_top_of_nonneg ENNReal.toReal_nonneg h
  rw [ENNReal.inv_rpow, ← ENNReal.mul_le_mul_left hεpow hεpow', ← mul_assoc,
    ENNReal.mul_inv_cancel hεpow hεpow', one_mul]
  exact mul_meas_ge_le_pow_snorm' μ hp_ne_zero hp_ne_top hf ε
#align measure_theory.meas_ge_le_mul_pow_snorm MeasureTheory.meas_ge_le_mul_pow_snorm

variable {μ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LpSeminorm/Variantdec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LpSeminorm/Variantdec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean#L1172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377fef306ed9bbb6202e67c6b75dcef876549353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
