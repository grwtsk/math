# singleton_actual_two_square_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4c253af-22f8-5141-d6ff-9588de3eadcd",
  "kind": "theorem",
  "lexical_name": "singleton_actual_two_square_identity",
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
  "slug": "singleton-actual-two-square-identity--74d856bd7933ab370e729f10",
  "source": {
    "blob": "5a4f033cf4eab2ee65b4ffa19d83cb62b058d255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMixedCurvatureGramFixtures/Variant3eef4dc2d65e88878b19f5a0451b539d4ac3946540ad199cae88b00009a6bd12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74d856bd7933ab370e729f10dace8908da1c9a2ae18eedfd4a5f31b89538d03e",
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

Occurrence: `result:a4c253af-22f8-5141-d6ff-9588de3eadcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singleton_actual_two_square_identity {A : ℝ} (hA : 0 < A) (r : ℝ) :
    mixedBracket A 0 =
      -(∫ v : ℝ, (deriv (normalizedTest explicitSecondDerivative A) (v + r)) ^ 2) -
      (1 / 4 : ℝ) * (∫ v : ℝ, (normalizedTest explicitSecondDerivative A (v + r)) ^ 2) := by
  simpa [mixedBracket] using actual_mixed_curvature_finite_gram_eq_neg_squares
    ({0} : Finset ℕ) (fun _ => (1 : ℝ)) (fun _ => r) hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMixedCurvatureGramFixtures/Variant3eef4dc2d65e88878b19f5a0451b539d4ac3946540ad199cae88b00009a6bd12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMixedCurvatureGramFixtures/Variant3eef4dc2d65e88878b19f5a0451b539d4ac3946540ad199cae88b00009a6bd12.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a4f033cf4eab2ee65b4ffa19d83cb62b058d255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
