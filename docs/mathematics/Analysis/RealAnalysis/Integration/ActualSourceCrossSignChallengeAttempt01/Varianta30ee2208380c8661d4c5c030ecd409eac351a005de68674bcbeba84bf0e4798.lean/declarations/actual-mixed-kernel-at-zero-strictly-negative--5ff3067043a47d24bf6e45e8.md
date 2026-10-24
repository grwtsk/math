# actual_mixed_kernel_at_zero_strictly_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41ad5c342d3ee84688ebd72e6412d7de6c7985b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a30ee2208380c8661d4c5c030ecd409eac351a005de68674bcbeba84bf0e4798.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff8daa34-53da-5c3e-521b-44732bd642fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9173fedc-5fb7-5d11-565d-11451843a8ea",
  "kind": "theorem",
  "lexical_name": "actual_mixed_kernel_at_zero_strictly_negative",
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
  "slug": "actual-mixed-kernel-at-zero-strictly-negative--5ff3067043a47d24bf6e45e8",
  "source": {
    "blob": "41ad5c342d3ee84688ebd72e6412d7de6c7985b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualSourceCrossSignChallengeAttempt01/Varianta30ee2208380c8661d4c5c030ecd409eac351a005de68674bcbeba84bf0e4798.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ff3067043a47d24bf6e45e8a7f6cbbb52ff39a533b58b2fd7d56b5e7204a73f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualSourceCrossSignChallengeAttempt01/Varianta30ee2208380c8661d4c5c030ecd409eac351a005de68674bcbeba84bf0e4798.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9173fedc-5fb7-5d11-565d-11451843a8ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mixed_kernel_at_zero_strictly_negative (A : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 -
      sourceCorrelation explicitSecondDerivative A 0 / 4 < 0 := by
  rw [sourceCorrelation_second_deriv_eq_integral (by linarith : 0 < A),
    actual_correlation_at_zero A hA]
  have he : 0 ≤ ∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) v *
      deriv (normalizedTest explicitSecondDerivative A) (v - 0) := by
    apply integral_nonneg
    intro v
    simpa only [sub_zero, ← pow_two] using
      sq_nonneg (deriv (normalizedTest explicitSecondDerivative A) v)
  linarith

/-- Equal singleton coefficient rows give a strictly negative actual mixed-kernel pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualSourceCrossSignChallengeAttempt01/Varianta30ee2208380c8661d4c5c030ecd409eac351a005de68674bcbeba84bf0e4798.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualSourceCrossSignChallengeAttempt01/Varianta30ee2208380c8661d4c5c030ecd409eac351a005de68674bcbeba84bf0e4798.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41ad5c342d3ee84688ebd72e6412d7de6c7985b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
