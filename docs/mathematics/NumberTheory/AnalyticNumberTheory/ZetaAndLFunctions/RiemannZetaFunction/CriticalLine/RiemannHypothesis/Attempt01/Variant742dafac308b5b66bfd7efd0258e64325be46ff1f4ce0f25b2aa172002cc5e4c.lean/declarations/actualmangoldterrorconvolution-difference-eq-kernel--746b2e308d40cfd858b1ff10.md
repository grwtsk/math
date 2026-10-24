# actualMangoldtErrorConvolution_difference_eq_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0bebe31-79d9-d39d-4a1c-595db5f83456",
  "kind": "theorem",
  "lexical_name": "actualMangoldtErrorConvolution_difference_eq_kernel",
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
  "slug": "actualmangoldterrorconvolution-difference-eq-kernel--746b2e308d40cfd858b1ff10",
  "source": {
    "blob": "d492109eaba79254a0e929c684ef73b056ac72dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant742dafac308b5b66bfd7efd0258e64325be46ff1f4ce0f25b2aa172002cc5e4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:746b2e308d40cfd858b1ff106fa8d1480610aa817594c9ee4f2b3dc9736a02fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant742dafac308b5b66bfd7efd0258e64325be46ff1f4ce0f25b2aa172002cc5e4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0bebe31-79d9-d39d-4a1c-595db5f83456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtErrorConvolution_difference_eq_kernel {t : ℝ} (ht : 0 ≤ t) :
    actualMangoldtErrorConvolution (1 / 2) t - actualMangoldtErrorConvolution 1 t =
      ∫ r in 0..t, actualCenteredMangoldtLogError r *
        actualMangoldtErrorDifferenceKernel r t := by
  unfold actualMangoldtErrorConvolution
  rw [← intervalIntegral.integral_sub
    (actualMangoldtErrorConvolution_intervalIntegrable (1 / 2) ht)
    (actualMangoldtErrorConvolution_intervalIntegrable 1 ht)]
  apply intervalIntegral.integral_congr
  intro r _
  unfold actualMangoldtErrorDifferenceKernel
  congr 1 <;> ring

/-- The only arithmetic input here is the proved actual elementary Mangoldt prefix bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant742dafac308b5b66bfd7efd0258e64325be46ff1f4ce0f25b2aa172002cc5e4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant742dafac308b5b66bfd7efd0258e64325be46ff1f4ce0f25b2aa172002cc5e4c.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d492109eaba79254a0e929c684ef73b056ac72dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
