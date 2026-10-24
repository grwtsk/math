# actual_positive_phase_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca455bb9-19ed-c134-0554-92a63680b823",
  "kind": "theorem",
  "lexical_name": "actual_positive_phase_hasDerivAt",
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
  "slug": "actual-positive-phase-hasderivat--fc265f5fceaafa8031e15939",
  "source": {
    "blob": "7b69d2e6c2b07a8f09a9af76a08235faf1435dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt02/Varianta13a972bc1a5d6c7365f39d6efd96566394e86b07245d276b1424d48edfe2957.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc265f5fceaafa8031e15939d829c2dbdd949a91d9b2eb89eaa2c8306219606d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt02/Varianta13a972bc1a5d6c7365f39d6efd96566394e86b07245d276b1424d48edfe2957.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca455bb9-19ed-c134-0554-92a63680b823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_positive_phase_hasDerivAt {A u : ℝ} (hA : 1≤A)
    (hu : 0<deriv (criticalPrimeTest A) u) :
    HasDerivAt (deriv (pairedTailTest A))
      (-deriv (deriv (criticalPrimeTest A)) u) u := by
  have hp : 0<A := by linarith
  have hc : ContDiff ℝ 1 (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff_two hp).deriv'
  have hd := (hc.differentiable (by norm_num) u).hasDerivAt
  have he := hc.continuous.continuousAt.eventually (lt_mem_nhds hu)
  apply hd.neg.congr_of_eventuallyEq
  filter_upwards [he] with x hx
  rw [pairedTailTest_deriv hA]
  simp only [positiveSlope,negativeSlope,max_eq_left hx.le,
    max_eq_right (neg_nonpos.mpr hx.le),mul_zero,add_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt02/Varianta13a972bc1a5d6c7365f39d6efd96566394e86b07245d276b1424d48edfe2957.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt02/Varianta13a972bc1a5d6c7365f39d6efd96566394e86b07245d276b1424d48edfe2957.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b69d2e6c2b07a8f09a9af76a08235faf1435dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
