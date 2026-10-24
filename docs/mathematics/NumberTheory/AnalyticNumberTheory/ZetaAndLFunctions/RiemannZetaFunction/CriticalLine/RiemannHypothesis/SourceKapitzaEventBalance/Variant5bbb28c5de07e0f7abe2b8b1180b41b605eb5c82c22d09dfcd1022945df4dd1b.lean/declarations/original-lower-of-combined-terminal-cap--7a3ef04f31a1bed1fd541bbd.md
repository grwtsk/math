# original_lower_of_combined_terminal_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df48c68a-bfc3-c15c-55e6-945b214ccf45",
  "kind": "theorem",
  "lexical_name": "original_lower_of_combined_terminal_cap",
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
  "slug": "original-lower-of-combined-terminal-cap--7a3ef04f31a1bed1fd541bbd",
  "source": {
    "blob": "be5c7d6b8a6147010f70ceb976332aabe61dd604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 356,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5bbb28c5de07e0f7abe2b8b1180b41b605eb5c82c22d09dfcd1022945df4dd1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a3ef04f31a1bed1fd541bbd7d2b3b28d4afeb54689ecaba3a093cf5bbeb1757",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5bbb28c5de07e0f7abe2b8b1180b41b605eb5c82c22d09dfcd1022945df4dd1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df48c68a-bfc3-c15c-55e6-945b214ccf45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_lower_of_combined_terminal_cap (R B : ℝ) (hR : 1 ≤ R)
    (hbudget : ∀ A : ℝ, R ≤ A → combinedTerminalWork A ≤ B) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R)
        (archimedeanMultiplier 0 + 2 - 2 * B - 2 * quadraticConstant -
          2 * continuousDefect R) ≤ sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · have hr := native_residual_complete_balance A hA
    have hb := hbudget A hRA
    have hq := totalQuadraticWork_le A
    have hd := continuousDefect_antitone (by linarith : 0 ≤ R) hRA
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hp : primePowerContribution explicitSecondDerivative A =
        EstimateMertensResidual.mertensResidual A := by
      rw [primePowerContribution_eq_closedPrimeMoment A hA,
        EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment A hA]
    apply (min_le_right _ _).trans
    unfold sourceQuadraticValue
    rw [hp]
    linarith
  · exact (min_le_left _ _).trans
      (originalPrefixFloor_le R A hA (le_of_not_ge hRA))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5bbb28c5de07e0f7abe2b8b1180b41b605eb5c82c22d09dfcd1022945df4dd1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant5bbb28c5de07e0f7abe2b8b1180b41b605eb5c82c22d09dfcd1022945df4dd1b.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be5c7d6b8a6147010f70ceb976332aabe61dd604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
