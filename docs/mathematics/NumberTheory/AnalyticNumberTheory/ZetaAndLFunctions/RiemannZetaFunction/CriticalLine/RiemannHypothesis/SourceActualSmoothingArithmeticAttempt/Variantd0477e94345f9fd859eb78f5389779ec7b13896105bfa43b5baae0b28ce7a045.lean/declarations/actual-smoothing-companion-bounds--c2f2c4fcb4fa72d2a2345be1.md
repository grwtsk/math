# actual_smoothing_companion_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05a74021-794a-c6ca-baac-0a73d711198a",
  "kind": "theorem",
  "lexical_name": "actual_smoothing_companion_bounds",
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
  "slug": "actual-smoothing-companion-bounds--c2f2c4fcb4fa72d2a2345be1",
  "source": {
    "blob": "21e52f984dd6f68006d266d7135a2c15fefb7bc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSmoothingArithmeticAttempt/Variantd0477e94345f9fd859eb78f5389779ec7b13896105bfa43b5baae0b28ce7a045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2f2c4fcb4fa72d2a2345be12b3addeb219cac11a22cd999d83fb5e56ab4d62d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSmoothingArithmeticAttempt/Variantd0477e94345f9fd859eb78f5389779ec7b13896105bfa43b5baae0b28ce7a045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05a74021-794a-c6ca-baac-0a73d711198a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_smoothing_companion_bounds (A : ℝ) (hA : 40 ≤ A) :
    13 / 16 - criticalBaselineCorrection A ≤ actualSmoothingCompanion A ∧
      actualSmoothingCompanion A ≤ 10 / 3 := by
  have hA1 : 1 ≤ A := by linarith
  have hh := firstAtomHeadWork_signed_bounds A hA
  have hh0 := firstAtomHeadWork_nonpositive A hA
  have hg := actual_gamma_boundary_bounds A hA
  have hm := criticalContinuousMoment_strict_bounds hA1
  have hb := criticalBaselineCorrection_eq_actual A hA1
  unfold actualSmoothingCompanion
  constructor <;> linarith only [hh.1, hh0, hg.1, hg.2, hm.1, hb]

/-- Unconditional matched source inequalities; neither constructs an eventual J. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSmoothingArithmeticAttempt/Variantd0477e94345f9fd859eb78f5389779ec7b13896105bfa43b5baae0b28ce7a045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSmoothingArithmeticAttempt/Variantd0477e94345f9fd859eb78f5389779ec7b13896105bfa43b5baae0b28ce7a045.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21e52f984dd6f68006d266d7135a2c15fefb7bc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
