# actual_smoothing_companion_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23ca5ce9-9367-2062-aacd-7d31024fd0cb",
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
  "slug": "actual-smoothing-companion-bounds--08625349277cfe36d5b5269e",
  "source": {
    "blob": "28244b7f8fe3bdaa31d520eadb71aca643a2bbb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant6f3b31757bad9ace9c9606f5a05ddc3d9489e0e457ca5d1dc29971478dd9e916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08625349277cfe36d5b5269e0c1e35f0bf93ede2aa8a7380e7ff6bd01eb18059",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant6f3b31757bad9ace9c9606f5a05ddc3d9489e0e457ca5d1dc29971478dd9e916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23ca5ce9-9367-2062-aacd-7d31024fd0cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–101.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant6f3b31757bad9ace9c9606f5a05ddc3d9489e0e457ca5d1dc29971478dd9e916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant6f3b31757bad9ace9c9606f5a05ddc3d9489e0e457ca5d1dc29971478dd9e916.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28244b7f8fe3bdaa31d520eadb71aca643a2bbb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
