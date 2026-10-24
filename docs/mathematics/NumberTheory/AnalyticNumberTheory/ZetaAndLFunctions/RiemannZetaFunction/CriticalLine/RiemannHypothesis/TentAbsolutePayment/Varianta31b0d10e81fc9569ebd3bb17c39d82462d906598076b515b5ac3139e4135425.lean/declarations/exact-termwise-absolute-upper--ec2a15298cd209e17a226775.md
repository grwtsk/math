# exact_termwise_absolute_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fff6efe7-e7f6-6844-6f72-b9413be28b02",
  "kind": "theorem",
  "lexical_name": "exact_termwise_absolute_upper",
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
  "slug": "exact-termwise-absolute-upper--ec2a15298cd209e17a226775",
  "source": {
    "blob": "9e030d29cba1687a8818237b6994bcf3eaf4829e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TentAbsolutePayment/Varianta31b0d10e81fc9569ebd3bb17c39d82462d906598076b515b5ac3139e4135425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec2a15298cd209e17a226775fa054d201445e3ab4af6e1669adf13f9e397a498",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TentAbsolutePayment/Varianta31b0d10e81fc9569ebd3bb17c39d82462d906598076b515b5ac3139e4135425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fff6efe7-e7f6-6844-6f72-b9413be28b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_termwise_absolute_upper {x : ℝ} (hx : 0 < x) :
    |signedTent x| ≤ absoluteTentMass x := by
  unfold signedTent absoluteTentMass
  rw [abs_div, abs_of_pos (Real.sqrt_pos.mpr hx)]
  apply div_le_div_of_nonneg_right _ (Real.sqrt_nonneg x)
  have h := Finset.abs_sum_le_sum_abs (s := Finset.Icc 2 ⌊16 * x⌋₊)
    (f := fun n ↦ (ArithmeticFunction.vonMangoldt n - 1) * tentWeight (n / x))
  simpa only [abs_mul, abs_of_nonneg (tent_weight_nonnegative _)] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TentAbsolutePayment/Varianta31b0d10e81fc9569ebd3bb17c39d82462d906598076b515b5ac3139e4135425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TentAbsolutePayment/Varianta31b0d10e81fc9569ebd3bb17c39d82462d906598076b515b5ac3139e4135425.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e030d29cba1687a8818237b6994bcf3eaf4829e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
