# mixedBracket_strict_upper_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9156414a-5f6d-72c7-6a3f-3936ca7ddc4e",
  "kind": "theorem",
  "lexical_name": "mixedBracket_strict_upper_zero",
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
  "slug": "mixedbracket-strict-upper-zero--1f7a6f8ff7ddd4785bbbad03",
  "source": {
    "blob": "5a4f033cf4eab2ee65b4ffa19d83cb62b058d255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMixedCurvatureGramFixtures/Variant3eef4dc2d65e88878b19f5a0451b539d4ac3946540ad199cae88b00009a6bd12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f7a6f8ff7ddd4785bbbad03cf26419327ae3b9813fef9fc0045d140dd69e07b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMixedCurvatureGramFixtures/Variant3eef4dc2d65e88878b19f5a0451b539d4ac3946540ad199cae88b00009a6bd12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9156414a-5f6d-72c7-6a3f-3936ca7ddc4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mixedBracket_strict_upper_zero {A : ℝ} (hA : 0 < A)
    {t : ℝ} (ht : 2 * A < t) : mixedBracket A t = 0 := by
  have he : sourceCorrelation explicitSecondDerivative A =ᶠ[𝓝 t] (fun _ => (0 : ℝ)) := by
    filter_upwards [eventually_gt_nhds ht] with y hy
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A y hA
      ((le_of_lt hy).trans (le_abs_self y))
  have hd : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t = 0 := by
    simpa using he.deriv.deriv_eq
  have hc := sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA
    ((le_of_lt ht).trans (le_abs_self t))
  simp only [mixedBracket, hd, hc, zero_div, sub_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMixedCurvatureGramFixtures/Variant3eef4dc2d65e88878b19f5a0451b539d4ac3946540ad199cae88b00009a6bd12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMixedCurvatureGramFixtures/Variant3eef4dc2d65e88878b19f5a0451b539d4ac3946540ad199cae88b00009a6bd12.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a4f033cf4eab2ee65b4ffa19d83cb62b058d255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
