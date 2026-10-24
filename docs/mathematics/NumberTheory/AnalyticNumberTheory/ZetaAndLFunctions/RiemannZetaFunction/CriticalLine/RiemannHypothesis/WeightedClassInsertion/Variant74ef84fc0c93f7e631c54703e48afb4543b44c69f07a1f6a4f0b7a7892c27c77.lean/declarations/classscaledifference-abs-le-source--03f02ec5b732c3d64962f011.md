# classScaleDifference_abs_le_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d85a7e5413f0dd23799d93307307e26cb60d6845",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6008e89f-d789-6134-829c-059b7956831a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36059577-6693-7cd0-68b2-16dfb3356d0f",
  "kind": "theorem",
  "lexical_name": "classScaleDifference_abs_le_source",
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
  "slug": "classscaledifference-abs-le-source--03f02ec5b732c3d64962f011",
  "source": {
    "blob": "d85a7e5413f0dd23799d93307307e26cb60d6845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 208,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03f02ec5b732c3d64962f011fb8e7a672de32f5862d7b0ebb3d719532dd31890",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36059577-6693-7cd0-68b2-16dfb3356d0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classScaleDifference_abs_le_source (A : ℝ) (h Y : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hY : Y ≤ ⌊Real.exp A⌋₊) :
    |classScaleDifference A h Y| ≤
      KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) /
        Real.sqrt (h : ℝ) := by
  have hC := KernelScaleComparison.scaleComparisonCoefficient_nonneg A hA
  have hlog : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  calc
    _ ≤ (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 /
        Real.sqrt (h : ℝ)) * ∑ g ∈ Icc 1 Y, 1 / (g : ℝ) :=
      classScaleDifference_abs_le A h Y hA hh
    _ ≤ (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 /
        Real.sqrt (h : ℝ)) * (1 + A) :=
      mul_le_mul_of_nonneg_left (harmonic_sum_le_source A Y hA hY) (by positivity)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85a7e5413f0dd23799d93307307e26cb60d6845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
