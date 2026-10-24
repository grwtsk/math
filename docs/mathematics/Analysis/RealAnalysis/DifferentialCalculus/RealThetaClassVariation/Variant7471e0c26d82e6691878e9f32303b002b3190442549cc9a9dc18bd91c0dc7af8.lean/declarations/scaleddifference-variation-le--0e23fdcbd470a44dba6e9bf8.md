# scaledDifference_variation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fa687e5-6ead-7cfe-c9da-425424fb3f84",
  "kind": "theorem",
  "lexical_name": "scaledDifference_variation_le",
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
  "slug": "scaleddifference-variation-le--0e23fdcbd470a44dba6e9bf8",
  "source": {
    "blob": "d5b62edbe24d154eb42a48080fbdd2f6f5e3e6dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 660,
    "line": 643,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant7471e0c26d82e6691878e9f32303b002b3190442549cc9a9dc18bd91c0dc7af8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e23fdcbd470a44dba6e9bf87dc1f1cfabb02c8b2be857e3381e5963d0b669b0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant7471e0c26d82e6691878e9f32303b002b3190442549cc9a9dc18bd91c0dc7af8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fa687e5-6ead-7cfe-c9da-425424fb3f84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledDifference_variation_le (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    (∫ t in Set.Ioi (1 : ℝ), |deriv (fun t : ℝ ↦ differenceSamplingKernel A (q * t)) t|) ≤
      2 * (2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q := by
  let K := 2 + 9 * Real.sqrt (65 / 3) / A + 12 * (65 / (3 * A ^ 2)) +
    4 * Real.sqrt (325325 / 18) / A ^ 3
  calc
    _ ≤ ∫ t in Set.Ioi (1 : ℝ), q * (K / (q * t * Real.sqrt (q * t))) := by
      apply setIntegral_mono_on (scaledDifference_derivative_integrable A q hA hq).abs
        (inverse_root_majorant_integrable q K hq) measurableSet_Ioi
      intro t ht
      rw [(scaledDifference_hasDerivAt A q t hA hq (zero_lt_one.trans ht)).deriv,
        abs_mul, abs_of_pos hq]
      exact mul_le_mul_of_nonneg_left
        (differenceSamplingKernel_derivative_abs_le A (q * t) hA
          (mul_pos hq (zero_lt_one.trans ht))) hq.le
    _ = _ := inverse_root_majorant_integral q K hq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant7471e0c26d82e6691878e9f32303b002b3190442549cc9a9dc18bd91c0dc7af8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant7471e0c26d82e6691878e9f32303b002b3190442549cc9a9dc18bd91c0dc7af8.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5b62edbe24d154eb42a48080fbdd2f6f5e3e6dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
