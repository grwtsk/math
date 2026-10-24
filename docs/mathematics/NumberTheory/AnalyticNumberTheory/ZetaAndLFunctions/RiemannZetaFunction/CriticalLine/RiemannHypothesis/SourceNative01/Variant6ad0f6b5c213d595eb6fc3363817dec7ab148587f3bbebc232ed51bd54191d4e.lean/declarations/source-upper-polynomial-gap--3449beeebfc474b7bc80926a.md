# source_upper_polynomial_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41e6c058-2ecf-3fb0-4b9e-6a4c0adf82bf",
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
  "slug": "source-upper-polynomial-gap--3449beeebfc474b7bc80926a",
  "source": {
    "blob": "3c863b09bda15395bb9457dd8ed8d2acdc797e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 18,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNative01/Variant6ad0f6b5c213d595eb6fc3363817dec7ab148587f3bbebc232ed51bd54191d4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3449beeebfc474b7bc80926a36543b346e6ca817ee53122a556042ae3f73448f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNative01/Variant6ad0f6b5c213d595eb6fc3363817dec7ab148587f3bbebc232ed51bd54191d4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41e6c058-2ecf-3fb0-4b9e-6a4c0adf82bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–30.

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
  have he := Real.pow_div_factorial_le_exp (show 0 ≤ 2 * A by positivity) 6
  norm_num at he
  nlinarith

/-- A genuine quantitative gap between the two unchanged floor cutoffs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNative01/Variant6ad0f6b5c213d595eb6fc3363817dec7ab148587f3bbebc232ed51bd54191d4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNative01/Variant6ad0f6b5c213d595eb6fc3363817dec7ab148587f3bbebc232ed51bd54191d4e.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c863b09bda15395bb9457dd8ed8d2acdc797e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
