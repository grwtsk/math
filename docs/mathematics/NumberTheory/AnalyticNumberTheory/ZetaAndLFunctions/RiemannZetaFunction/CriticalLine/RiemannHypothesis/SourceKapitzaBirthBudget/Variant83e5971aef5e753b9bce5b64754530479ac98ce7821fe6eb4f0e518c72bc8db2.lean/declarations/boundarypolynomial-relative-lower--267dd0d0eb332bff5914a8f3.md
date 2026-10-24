# boundaryPolynomial_relative_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50706306-869f-ba91-7bcb-b83708b8ff5a",
  "kind": "theorem",
  "lexical_name": "boundaryPolynomial_relative_lower",
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
  "slug": "boundarypolynomial-relative-lower--267dd0d0eb332bff5914a8f3",
  "source": {
    "blob": "420c2dfd53d63db79881e3ba2df8042f6a35d11c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:267dd0d0eb332bff5914a8f3f0ed93c4994371a71745adaed391830847647d03",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50706306-869f-ba91-7bcb-b83708b8ff5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryPolynomial_relative_lower {z w : ℝ}
    (hz : 0 ≤ z) (hz1 : z ≤ 1) (hw : 3 ≤ w) :
    (13 / 12 : ℝ) * z ^ 4 * w ^ 4 ≤ boundaryPolynomial z w := by
  have hw0 : 0 ≤ w := by linarith
  have hzw : 3 * z ≤ w := by linarith
  have hzsq : z ^ 2 ≤ 1 := by nlinarith
  have hcross : 32 * z * w ≤ (32 / 3 : ℝ) * w ^ 2 := by
    nlinarith [mul_nonneg (show 0 ≤ w - 3 * z by linarith) hw0]
  have hs : z ^ 2 * w ^ 2 ≤ w ^ 2 := by
    nlinarith [mul_nonneg (show 0 ≤ 1 - z ^ 2 by linarith) (sq_nonneg w)]
  have hb : 0 ≤ 12 * w ^ 2 + 12 * z ^ 2 - 32 * z * w -
      (4 / 3 : ℝ) * z ^ 2 * w ^ 2 := by
    nlinarith [sq_nonneg z]
  have hp := mul_nonneg (mul_nonneg (sq_nonneg z) (sq_nonneg w)) hb
  unfold boundaryPolynomial
  nlinarith only [hp]

/-- Actual real-scale substitution; no integer scale restriction occurs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant83e5971aef5e753b9bce5b64754530479ac98ce7821fe6eb4f0e518c72bc8db2.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `420c2dfd53d63db79881e3ba2df8042f6a35d11c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
