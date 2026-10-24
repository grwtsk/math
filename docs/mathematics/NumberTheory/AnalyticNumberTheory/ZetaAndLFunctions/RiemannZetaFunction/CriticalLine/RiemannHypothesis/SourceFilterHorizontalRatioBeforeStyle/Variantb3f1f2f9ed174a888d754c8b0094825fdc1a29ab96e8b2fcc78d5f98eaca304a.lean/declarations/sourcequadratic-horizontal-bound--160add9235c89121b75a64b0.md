# sourceQuadratic_horizontal_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a731111-d4c7-db34-02b2-9415c4645355",
  "kind": "theorem",
  "lexical_name": "sourceQuadratic_horizontal_bound",
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
  "slug": "sourcequadratic-horizontal-bound--160add9235c89121b75a64b0",
  "source": {
    "blob": "8d084b94d01ec1f6d42565f588382a6237ba7892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFilterHorizontalRatioBeforeStyle/Variantb3f1f2f9ed174a888d754c8b0094825fdc1a29ab96e8b2fcc78d5f98eaca304a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:160add9235c89121b75a64b0615f2e912a8fe87f176184874bbeeb494f05f454",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFilterHorizontalRatioBeforeStyle/Variantb3f1f2f9ed174a888d754c8b0094825fdc1a29ab96e8b2fcc78d5f98eaca304a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a731111-d4c7-db34-02b2-9415c4645355`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceQuadratic_horizontal_bound (ε t : ℝ) :
    (1 - 4 * ε^2) * ‖((t : ℂ) * Complex.I)^2 - 1/4‖ ≤
      ‖((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4‖ := by
  have h0 : ((t : ℂ) * Complex.I)^2 - 1/4 = (-(t^2 + 1/4 : ℝ) : ℂ) := by
    push_cast
    simp only [mul_pow, Complex.I_sq]
    ring
  have hr : (((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4).re =
      ε^2 - t^2 - 1/4 := by
    simp [pow_two, Complex.mul_re, Complex.mul_im]
  have hn := (neg_le_abs (((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4).re).trans
    (Complex.abs_re_le_norm (((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4))
  rw [hr] at hn
  rw [h0, norm_neg, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (by positivity : 0 ≤ t^2 + (1/4 : ℝ))]
  nlinarith [mul_nonneg (sq_nonneg ε) (sq_nonneg t)]

/-- The actual normalized translated filter satisfies the denominator-free horizontal bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFilterHorizontalRatioBeforeStyle/Variantb3f1f2f9ed174a888d754c8b0094825fdc1a29ab96e8b2fcc78d5f98eaca304a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFilterHorizontalRatioBeforeStyle/Variantb3f1f2f9ed174a888d754c8b0094825fdc1a29ab96e8b2fcc78d5f98eaca304a.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d084b94d01ec1f6d42565f588382a6237ba7892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
