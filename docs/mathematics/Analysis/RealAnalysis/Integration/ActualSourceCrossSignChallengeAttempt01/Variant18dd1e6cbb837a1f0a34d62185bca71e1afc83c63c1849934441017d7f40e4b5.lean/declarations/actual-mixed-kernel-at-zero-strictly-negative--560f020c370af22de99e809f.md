# actual_mixed_kernel_at_zero_strictly_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6845b3d-617b-21db-4bc0-2235e9f09192",
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
  "slug": "actual-mixed-kernel-at-zero-strictly-negative--560f020c370af22de99e809f",
  "source": {
    "blob": "0fc90b70ce491b097735c6b5e70d052db197fdb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualSourceCrossSignChallengeAttempt01/Variant18dd1e6cbb837a1f0a34d62185bca71e1afc83c63c1849934441017d7f40e4b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:560f020c370af22de99e809f6e446bb214071a0d1f8a9af71e21ef44ecfdd65d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualSourceCrossSignChallengeAttempt01/Variant18dd1e6cbb837a1f0a34d62185bca71e1afc83c63c1849934441017d7f40e4b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6845b3d-617b-21db-4bc0-2235e9f09192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–46.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualSourceCrossSignChallengeAttempt01/Variant18dd1e6cbb837a1f0a34d62185bca71e1afc83c63c1849934441017d7f40e4b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualSourceCrossSignChallengeAttempt01/Variant18dd1e6cbb837a1f0a34d62185bca71e1afc83c63c1849934441017d7f40e4b5.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fc90b70ce491b097735c6b5e70d052db197fdb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
