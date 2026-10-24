# boundaryPolynomial_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8743c2e5-6f49-8399-748c-c939854594d7",
  "kind": "theorem",
  "lexical_name": "boundaryPolynomial_upper",
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
  "slug": "boundarypolynomial-upper--2875fc40a53a6d9f394ba594",
  "source": {
    "blob": "822a743f44ff982ba0d3f0ade77ceea2ecafa742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2875fc40a53a6d9f394ba5945e7f9167510f6a5c3c5df70801f835ad3dec7fea",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8743c2e5-6f49-8399-748c-c939854594d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryPolynomial_upper {z w : ℝ}
    (hz : 0 ≤ z) (hw : 0 ≤ w) (hzw : 3 * z ≤ w) :
    boundaryPolynomial z w ≤ 12 * z ^ 2 * w ^ 4 := by
  have hb : 0 ≤ 32 * w - 12 * z := by linarith
  have hp := mul_nonneg (mul_nonneg (pow_nonneg hz 3) (sq_nonneg w)) hb
  have hq : 0 ≤ z ^ 4 * w ^ 4 := mul_nonneg (pow_nonneg hz 4) (pow_nonneg hw 4)
  unfold boundaryPolynomial
  nlinarith only [hp, hq]

/-- All five entries remain present before the boundary zero traces are used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaBirthBudget/Variant5f84dad0302af54353e3e28c3733ce3db060eef491adc2ab04d5483c56b4bd8f.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `822a743f44ff982ba0d3f0ade77ceea2ecafa742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
