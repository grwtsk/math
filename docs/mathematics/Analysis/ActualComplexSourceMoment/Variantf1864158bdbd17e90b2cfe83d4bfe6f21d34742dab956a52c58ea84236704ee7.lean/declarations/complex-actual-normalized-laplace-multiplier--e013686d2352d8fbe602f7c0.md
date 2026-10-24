# complex_actual_normalized_laplace_multiplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1b168da-29ea-0fe8-d5ff-3f53a18649fd",
  "kind": "theorem",
  "lexical_name": "complex_actual_normalized_laplace_multiplier",
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
  "slug": "complex-actual-normalized-laplace-multiplier--e013686d2352d8fbe602f7c0",
  "source": {
    "blob": "028a6e0865d76cae28c9378aa5da820159e44aa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 144,
    "path": "GRWTSK/Analysis/ActualComplexSourceMoment/Variantf1864158bdbd17e90b2cfe83d4bfe6f21d34742dab956a52c58ea84236704ee7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e013686d2352d8fbe602f7c0f8d0104aff9b929ce7e22999d2c1aeb452f568e9",
  "verification": {
    "reference": "docs/verification/Analysis/ActualComplexSourceMoment/Variantf1864158bdbd17e90b2cfe83d4bfe6f21d34742dab956a52c58ea84236704ee7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1b168da-29ea-0fe8-d5ff-3f53a18649fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_actual_normalized_laplace_multiplier {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    complexTestMoment A z = (z ^ 2 - 1 / 4) * complexBumpMoment A z /
      (Real.sqrt (sourceNormalization A) : ℂ) := by
  unfold complexTestMoment
  simp_rw [normalizedTest, Complex.ofReal_div, ← mul_div_assoc]
  rw [integral_div, complex_actual_dilation_laplace_multiplier hA]

end
end GRWTSK.RiemannHypothesis.Conversation.ActualComplexSourceMoment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualComplexSourceMoment/Variantf1864158bdbd17e90b2cfe83d4bfe6f21d34742dab956a52c58ea84236704ee7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualComplexSourceMoment/Variantf1864158bdbd17e90b2cfe83d4bfe6f21d34742dab956a52c58ea84236704ee7.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `028a6e0865d76cae28c9378aa5da820159e44aa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
