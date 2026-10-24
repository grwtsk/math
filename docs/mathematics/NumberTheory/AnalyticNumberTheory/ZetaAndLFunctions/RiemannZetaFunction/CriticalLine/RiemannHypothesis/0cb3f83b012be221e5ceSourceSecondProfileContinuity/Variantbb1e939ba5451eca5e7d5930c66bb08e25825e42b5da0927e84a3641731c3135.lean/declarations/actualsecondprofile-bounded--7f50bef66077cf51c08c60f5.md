# actualSecondProfile_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7494e62-333b-6bd1-55de-65b537041574",
  "kind": "theorem",
  "lexical_name": "actualSecondProfile_bounded",
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
  "slug": "actualsecondprofile-bounded--7f50bef66077cf51c08c60f5",
  "source": {
    "blob": "2fb0cddde9116e9f78ca45f16ca7b6f1023b3d2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cb3f83b012be221e5ceSourceSecondProfileContinuity/Variantbb1e939ba5451eca5e7d5930c66bb08e25825e42b5da0927e84a3641731c3135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f50bef66077cf51c08c60f547bd2ef56736d1d88d4d61b70d5ed98e9d84158e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cb3f83b012be221e5ceSourceSecondProfileContinuity/Variantbb1e939ba5451eca5e7d5930c66bb08e25825e42b5da0927e84a3641731c3135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7494e62-333b-6bd1-55de-65b537041574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSecondProfile_bounded (A : ℝ) (hA : 0 < A) :
    ∃ M : ℝ, 0 ≤ M ∧ ∀ x : ℝ, |actualSecondProfile A x| ≤ M := by
  obtain ⟨M, hM⟩ := (isCompact_Icc : IsCompact (Icc (-A) A)).exists_bound_of_continuousOn
    (normalizedInteriorSecond_continuous A).continuousOn
  refine ⟨max 0 M, le_max_left _ _, ?_⟩
  intro x
  rw [actualSecondProfile_eq_indicator A hA]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx]
    have hb : |normalizedInteriorSecond A x| ≤ M := by
      simpa only [Real.norm_eq_abs] using hM x hx
    exact hb.trans (le_max_right _ _)
  · rw [indicator_of_notMem hx, abs_zero]
    exact le_max_left _ _

/-- Product integrability and a fixed L1 dominator justify continuity at every real shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cb3f83b012be221e5ceSourceSecondProfileContinuity/Variantbb1e939ba5451eca5e7d5930c66bb08e25825e42b5da0927e84a3641731c3135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cb3f83b012be221e5ceSourceSecondProfileContinuity/Variantbb1e939ba5451eca5e7d5930c66bb08e25825e42b5da0927e84a3641731c3135.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fb0cddde9116e9f78ca45f16ca7b6f1023b3d2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
