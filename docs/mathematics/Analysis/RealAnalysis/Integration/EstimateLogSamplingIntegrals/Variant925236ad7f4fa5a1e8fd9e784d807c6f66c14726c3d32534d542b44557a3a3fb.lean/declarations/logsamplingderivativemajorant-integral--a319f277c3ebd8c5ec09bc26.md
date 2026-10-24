# logSamplingDerivativeMajorant_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e04121a-6b9e-4941-b184-a06ce9a739ce",
  "kind": "theorem",
  "lexical_name": "logSamplingDerivativeMajorant_integral",
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
  "slug": "logsamplingderivativemajorant-integral--a319f277c3ebd8c5ec09bc26",
  "source": {
    "blob": "f1f83afc5ad9baf9645a93c0fbd44cdd9cef2484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 161,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a319f277c3ebd8c5ec09bc26f9e54873c983d4eae24a034297353f6186e0cdeb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e04121a-6b9e-4941-b184-a06ce9a739ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSamplingDerivativeMajorant_integral
    (x B0 B1 : ℝ) :
    (∫ u in Ioi (1 : ℝ),
      logSamplingDerivativeMajorant x B0 B1 u) =
      Real.exp (-Real.log x / 2) *
        (4 * B0 + 4 * B1) := by
  rw [show
    logSamplingDerivativeMajorant x B0 B1 =
      fun u =>
        Real.exp (-Real.log x / 2) *
          (B0 * halfDensity u +
            (B0 / 2 + B1) * logHalfDensity u) by
      funext u
      exact logSamplingDerivativeMajorant_eq x B0 B1 u]
  rw [integral_const_mul]
  rw [integral_add
    (halfDensity_integrableOn.const_mul B0)
    (logHalfDensity_integrableOn.const_mul (B0 / 2 + B1))]
  rw [integral_const_mul, integral_const_mul,
    halfDensity_integral, logHalfDensity_integral]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1f83afc5ad9baf9645a93c0fbd44cdd9cef2484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
