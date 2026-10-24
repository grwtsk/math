# actual_archimedean_uniform_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1859b6f9-ff96-83b4-d8cd-c7a350a3734e",
  "kind": "theorem",
  "lexical_name": "actual_archimedean_uniform_upper",
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
  "slug": "actual-archimedean-uniform-upper--2c7c5622e264b20019a3c0ef",
  "source": {
    "blob": "41bb785d4a37b07835a8b2d2c7e15d8d3afda743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant1c783e0bea860a8ccbcd0d8542060af87472e0bac7df813a48fe159196b24bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c7c5622e264b20019a3c0ef63da47df5084f43a3e57f5874f8f5bac6d455648",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant1c783e0bea860a8ccbcd0d8542060af87472e0bac7df813a48fe159196b24bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1859b6f9-ff96-83b4-d8cd-c7a350a3734e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_archimedean_uniform_upper {A : ℝ} (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤ archimedeanMultiplier 0 +
      (18 * (162826 / 7623 : ℝ)) := by
  apply (actual_archimedean_quadratic_upper hA).trans
  apply add_le_add_right
  have h := div_le_div_of_nonneg_left (by positivity :
    0 ≤ 18 * (162826 / 7623 : ℝ)) (by norm_num : (0 : ℝ) < 1)
    (by nlinarith : (1 : ℝ) ≤ A^2)
  simpa only [div_one] using h

/-- The genuine original archimedean value converges to its true zero-frequency multiplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant1c783e0bea860a8ccbcd0d8542060af87472e0bac7df813a48fe159196b24bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualArchimedeanUpper/Variant1c783e0bea860a8ccbcd0d8542060af87472e0bac7df813a48fe159196b24bef.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41bb785d4a37b07835a8b2d2c7e15d8d3afda743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
