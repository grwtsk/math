# sourceQuadratic_horizontal_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b412c1bacb84897ae55fce035923d54ba1eec552",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 11,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/adbd3fbbfe67f963edbd3bacf4a2b7dc7f5521668ccd30d3b6844f460291d738.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:054ae217-e954-824f-77c4-de3e7b7a36be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:785bd8cb-95ad-2d05-51ed-6b9a676dbf78",
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
  "slug": "sourcequadratic-horizontal-bound--59dc6c0ea71ec5a3513ce898",
  "source": {
    "blob": "b412c1bacb84897ae55fce035923d54ba1eec552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 11,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFilterHorizontalRatioFragment/Variantadbd3fbbfe67f963edbd3bacf4a2b7dc7f5521668ccd30d3b6844f460291d738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59dc6c0ea71ec5a3513ce89868e7328739a210ddba61abe309dae25d86b081a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFilterHorizontalRatioFragment/Variantadbd3fbbfe67f963edbd3bacf4a2b7dc7f5521668ccd30d3b6844f460291d738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:785bd8cb-95ad-2d05-51ed-6b9a676dbf78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–28.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFilterHorizontalRatioFragment/Variantadbd3fbbfe67f963edbd3bacf4a2b7dc7f5521668ccd30d3b6844f460291d738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFilterHorizontalRatioFragment/Variantadbd3fbbfe67f963edbd3bacf4a2b7dc7f5521668ccd30d3b6844f460291d738.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b412c1bacb84897ae55fce035923d54ba1eec552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
