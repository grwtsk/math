# source_upper_polynomial_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a87189aa-a446-8940-03c4-b1df9413f8a0",
  "kind": "theorem",
  "lexical_name": "source_upper_polynomial_gap",
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
  "slug": "source-upper-polynomial-gap--f78d6ffd26b2c20577936e33",
  "source": {
    "blob": "2d14ba0f3a121582c429602d6277e23565b1af2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 18,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f78d6ffd26b2c20577936e330a5ba841951097b0647c02c3d6088dec7fd58f31",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a87189aa-a446-8940-03c4-b1df9413f8a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem source_upper_polynomial_gap {A : ℝ} (hA : 25600 ≤ A) :
    4 * (A ^ 2 + 2) ^ 2 ≤ Real.exp (2 * A) := by
  have hA0 : 0 ≤ A := by linarith
  have hs : 256 ≤ A ^ 2 := by nlinarith
  have h4 : 256 * A ^ 2 ≤ A ^ 4 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hs) (sq_nonneg A)]
  have h6 : 256 * A ^ 4 ≤ A ^ 6 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hs) (pow_nonneg hA0 4)]
  have he := Real.pow_div_factorial_le_exp (2 * A) (show 0 ≤ 2 * A by positivity) 6
  norm_num at he
  nlinarith

/-- A genuine quantitative gap between the two unchanged floor cutoffs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d14ba0f3a121582c429602d6277e23565b1af2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
