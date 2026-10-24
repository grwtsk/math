# original_lower_of_separate_nonaffine_caps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:866fc634-c23e-54d8-5530-cec2a21a57eb",
  "kind": "theorem",
  "lexical_name": "original_lower_of_separate_nonaffine_caps",
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
  "slug": "original-lower-of-separate-nonaffine-caps--e948f9950c44e5bf32a80d23",
  "source": {
    "blob": "ca78330df0cff3b41978a02d99e389ed2bfcce6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 505,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e948f9950c44e5bf32a80d23cff7b9271e810b5a25d1f334b7219945a4a08d45",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:866fc634-c23e-54d8-5530-cec2a21a57eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_lower_of_separate_nonaffine_caps (R_B R_epsilon B epsilon : ℝ)
    (hU : ∀ A : ℝ, R_B ≤ A → nonaffineWork A ≤ B)
    (hTrend : ∀ A : ℝ, R_epsilon ≤ A → |trendValue A| ≤ epsilon) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor (consumerRadius R_B R_epsilon))
        (archimedeanMultiplier 0 + 2 - 2 * B - 2 * epsilon -
          2 * continuousDefect (consumerRadius R_B R_epsilon)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply original_lower_of_nonaffine_cap
  · exact (by norm_num : (1 : ℝ) ≤ 91).trans (le_max_left _ _)
  · intro A hA
    exact hU A ((le_max_left R_B R_epsilon).trans ((le_max_right _ _).trans hA))
  · intro A hA
    exact hTrend A ((le_max_right R_B R_epsilon).trans ((le_max_right _ _).trans hA))

end FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant68967a11d1639364a30a9abd7811103bdb6401770347bddc904a78dc393cbb69.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca78330df0cff3b41978a02d99e389ed2bfcce6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
