# criticalPrimeTest_second_deriv_zero_after

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12f6a513-df78-6eb0-f225-09332ed62e03",
  "kind": "theorem",
  "lexical_name": "criticalPrimeTest_second_deriv_zero_after",
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
  "slug": "criticalprimetest-second-deriv-zero-after--880c157c7f5382e8deb0f994",
  "source": {
    "blob": "bb249ca04adafacf2ea003653cb022839946da33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:880c157c7f5382e8deb0f994c76593618a2a379fd0b3f4178f4e9f50052382ea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12f6a513-df78-6eb0-f225-09332ed62e03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeTest_second_deriv_zero_after {A u : ℝ} (hA : 0 < A)
    (hu : 2*A < u) : deriv (deriv (criticalPrimeTest A)) u = 0 := by
  have he : deriv (criticalPrimeTest A) =ᶠ[𝓝 u] (fun _ => (0:ℝ)) := by
    filter_upwards [Ioi_mem_nhds hu] with t ht
    exact criticalPrimeTest_deriv_zero_after hA ht
  rw [he.deriv_eq, deriv_const]

/-- A deliberately coarse global bound retains the true exponential amplification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb249ca04adafacf2ea003653cb022839946da33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
