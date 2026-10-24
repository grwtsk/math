# sourceDistance_le_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f431ce7-fbe6-177f-b2d5-437de886716f",
  "kind": "theorem",
  "lexical_name": "sourceDistance_le_sharp",
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
  "slug": "sourcedistance-le-sharp--6c286cc8a0997b5257cb666f",
  "source": {
    "blob": "3f26d1d2bc4648899e310266dca66ce4a0a6e04f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variantf495c6ca171876aaf5fa5c06ea2cf44dba68722e7c57e7415bd906dfef654697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c286cc8a0997b5257cb666f05852159823da8cc9b9476f85caffbc2c62103bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variantf495c6ca171876aaf5fa5c06ea2cf44dba68722e7c57e7415bd906dfef654697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f431ce7-fbe6-177f-b2d5-437de886716f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceDistance_le_sharp {A : ℝ} (hA : 200 ≤ A) (s t : ℝ) :
    sourceDistance A s t ≤ Real.sqrt 5 * |s - t| / A := by
  have hp : 0 < A := by linarith
  have hb := sourceCorrelation_sub_one_abs_le_five hA (s - t)
  have hs := sourceDistance_sq hp s t
  have hc : 1 - sourceCorrelation explicitSecondDerivative A (s - t) ≤
      |sourceCorrelation explicitSecondDerivative A (s - t) - 1| := by
    simpa only [neg_sub] using neg_le_abs
      (sourceCorrelation explicitSecondDerivative A (s - t) - 1)
  apply (sq_le_sq₀ (sourceDistance_nonneg A s t) (by positivity)).1
  rw [div_pow, mul_pow, Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 5), sq_abs]
  rw [hs]
  calc
    _ ≤ 2 * (5 / A ^ 2 * (s - t) ^ 2 / 2) := by linarith
    _ = 5 * (s - t) ^ 2 / A ^ 2 := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variantf495c6ca171876aaf5fa5c06ea2cf44dba68722e7c57e7415bd906dfef654697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRelativeDistance/Variantf495c6ca171876aaf5fa5c06ea2cf44dba68722e7c57e7415bd906dfef654697.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f26d1d2bc4648899e310266dca66ce4a0a6e04f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
