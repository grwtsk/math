# actualCriticalKernel_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ccf569a-a474-c76c-34fe-75d3bcadea92",
  "kind": "theorem",
  "lexical_name": "actualCriticalKernel_mass",
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
  "slug": "actualcriticalkernel-mass--c38f38ce9fee2dff14218bd2",
  "source": {
    "blob": "37cfea76d1825af7810c50f4cfb4aaf574793cbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c38f38ce9fee2dff14218bd22cc1f4035e4877d898001c5f286a12bd237a2655",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ccf569a-a474-c76c-34fe-75d3bcadea92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalKernel_mass {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in Real.log 7..2 * A, Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) =
      -(Real.sqrt 7 * sourceCorrelation explicitSecondDerivative A (Real.log 7) / 2) := by
  have hp : 0 < A := by linarith
  have hd (t : ℝ) : HasDerivAt (fun t => criticalPrimeTest A t / 2)
      (Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) t := by
    have h := (((criticalPrimeTest_contDiff A hp).differentiable (by norm_num)) t).hasDerivAt
    rw [criticalPrimeTest_deriv A t hp] at h
    exact (h.div_const 2).congr_deriv (by ring)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((kernel_continuous A hp).intervalIntegrable _ _), criticalPrimeTest_at_upper A hp]
  unfold criticalPrimeTest
  rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant04745f2807c21343f275aaee1a69a7b193617fddcc474e0c3390e5e3193d5299.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37cfea76d1825af7810c50f4cfb4aaf574793cbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
