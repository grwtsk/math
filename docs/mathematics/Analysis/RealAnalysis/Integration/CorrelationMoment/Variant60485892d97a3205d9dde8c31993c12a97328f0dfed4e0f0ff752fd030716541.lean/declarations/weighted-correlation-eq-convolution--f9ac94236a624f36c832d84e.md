# weighted_correlation_eq_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7049bd69-fed8-0a29-5807-46687e57b68b",
  "kind": "theorem",
  "lexical_name": "weighted_correlation_eq_convolution",
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
  "slug": "weighted-correlation-eq-convolution--f9ac94236a624f36c832d84e",
  "source": {
    "blob": "37fa3bd5de1a7a19e39a9bafe00e49b823aaa9c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9ac94236a624f36c832d84e03f02ce68b176e63fd51bf99a6b9e66177b5c4df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7049bd69-fed8-0a29-5807-46687e57b68b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_correlation_eq_convolution (v : ℝ → ℝ) (σ t : ℝ) :
    Real.exp (σ * t) * correlation v t =
      ((fun x ↦ Real.exp (σ * x) * v x) ⋆
        (fun x ↦ Real.exp (σ * x) * v (-x))) t := by
  rw [correlation, ← integral_const_mul, convolution_lsmul]
  apply integral_congr_ae
  filter_upwards [] with x
  change Real.exp (σ * t) * (v x * v (x - t)) =
    (Real.exp (σ * x) * v x) * (Real.exp (σ * (t - x)) * v (-(t - x)))
  rw [neg_sub]
  have he : Real.exp (σ * t) = Real.exp (σ * x) * Real.exp (σ * (t - x)) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he]
  ring

/-- Reflection of the negative weighted factor is integrable whenever that factor is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant60485892d97a3205d9dde8c31993c12a97328f0dfed4e0f0ff752fd030716541.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37fa3bd5de1a7a19e39a9bafe00e49b823aaa9c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
