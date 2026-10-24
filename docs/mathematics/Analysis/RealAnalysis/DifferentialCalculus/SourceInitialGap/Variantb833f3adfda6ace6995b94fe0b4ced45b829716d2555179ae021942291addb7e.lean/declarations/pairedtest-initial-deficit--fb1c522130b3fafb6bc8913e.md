# pairedTest_initial_deficit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b98e8271-c328-6a10-de5f-5a1872186826",
  "kind": "theorem",
  "lexical_name": "pairedTest_initial_deficit",
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
  "slug": "pairedtest-initial-deficit--fb1c522130b3fafb6bc8913e",
  "source": {
    "blob": "3b6a2a07fe796189bd03e91b2c08e8c0a0f3761a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInitialGap/Variantb833f3adfda6ace6995b94fe0b4ced45b829716d2555179ae021942291addb7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb1c522130b3fafb6bc8913e255adbfe95427f9098405fd7b02d157403f93d99",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInitialGap/Variantb833f3adfda6ace6995b94fe0b4ced45b829716d2555179ae021942291addb7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b98e8271-c328-6a10-de5f-5a1872186826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTest_initial_deficit {A u : ℝ} (hA : 2 ≤ A)
    (hu : u ∈ Icc 0 (A / 32)) :
    0 ≤ pairedTailTest A u - (1 - Real.exp (u / 2)) ∧
      pairedTailTest A u - (1 - Real.exp (u / 2)) ≤
        Real.exp (u / 2) * (162826 / (7623 * A ^ 2) * u ^ 2 / 2) := by
  have hc := correlation_deficit (show 1 ≤ A by linarith) u
  have he : pairedTailTest A u - (1 - Real.exp (u / 2)) =
      Real.exp (u / 2) * (1 - sourceCorrelation explicitSecondDerivative A u) := by
    rw [pairedTailTest, negativeSurvival_one_initial hA hu, criticalPrimeTest]
    ring
  rw [he]
  exact ⟨mul_nonneg (Real.exp_pos _).le hc.1,
    mul_le_mul_of_nonneg_left hc.2 (Real.exp_pos _).le⟩

#print axioms correlation_initial_bounds
#print axioms critical_deriv_positive_initial
#print axioms negativeSlope_zero_initial
#print axioms negativeSurvival_one_initial
#print axioms negativeSurvival_one_eventually_fixed
#print axioms pairedTest_initial_deficit

end ContinuousResearch.SourceInitialGap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInitialGap/Variantb833f3adfda6ace6995b94fe0b4ced45b829716d2555179ae021942291addb7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInitialGap/Variantb833f3adfda6ace6995b94fe0b4ced45b829716d2555179ae021942291addb7e.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6a2a07fe796189bd03e91b2c08e8c0a0f3761a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
