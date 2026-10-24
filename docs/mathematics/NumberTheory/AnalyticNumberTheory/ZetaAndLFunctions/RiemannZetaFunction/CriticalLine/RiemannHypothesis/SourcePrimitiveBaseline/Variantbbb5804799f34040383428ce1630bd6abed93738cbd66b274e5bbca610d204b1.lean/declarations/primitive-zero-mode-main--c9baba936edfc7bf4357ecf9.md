# primitive_zero_mode_main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10357f79-27a2-50e4-9bba-75867dc9bbef",
  "kind": "theorem",
  "lexical_name": "primitive_zero_mode_main",
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
  "slug": "primitive-zero-mode-main--c9baba936edfc7bf4357ecf9",
  "source": {
    "blob": "5a4bedb3bf5ab8217ab190f6a9ae5c2978644266",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 112,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantbbb5804799f34040383428ce1630bd6abed93738cbd66b274e5bbca610d204b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9baba936edfc7bf4357ecf929607272ad34328498bc1abdabe353151c786bea",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantbbb5804799f34040383428ce1630bd6abed93738cbd66b274e5bbca610d204b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10357f79-27a2-50e4-9bba-75867dc9bbef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_zero_mode_main {A : ℝ} (hA : 1 ≤ A) :
    diagonalMainCoefficient A * A =
      (1 / 32 : ℝ) * ∫ s in 0..2 * A, primitiveCorrelationZero A s := by
  have hp : 0 < A := by linarith
  have hb : (∫ x : ℝ, normalizedPrimitiveBump A x) =
      Real.sqrt A * (256 / 315 : ℝ) / Real.sqrt (sourceNormalization A) := by
    unfold normalizedPrimitiveBump
    rw [integral_div, scaledBump_integral A hp]
  rw [primitiveCorrelationZero_half_integral hp, hb]
  have hZ := source_normalization_pos A hA
  rw [div_pow, mul_pow, Real.sq_sqrt hp.le, Real.sq_sqrt hZ.le]
  unfold diagonalMainCoefficient
  ring

/-- Independent literal closed first-prime data with every signed primitive lag retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantbbb5804799f34040383428ce1630bd6abed93738cbd66b274e5bbca610d204b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantbbb5804799f34040383428ce1630bd6abed93738cbd66b274e5bbca610d204b1.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a4bedb3bf5ab8217ab190f6a9ae5c2978644266` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
