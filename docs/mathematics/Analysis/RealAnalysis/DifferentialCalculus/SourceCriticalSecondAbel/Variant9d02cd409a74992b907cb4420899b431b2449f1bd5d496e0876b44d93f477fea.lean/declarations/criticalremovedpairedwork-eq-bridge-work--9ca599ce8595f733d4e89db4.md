# criticalRemovedPairedWork_eq_bridge_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06639415-e322-1313-a537-21989307fbcf",
  "kind": "theorem",
  "lexical_name": "criticalRemovedPairedWork_eq_bridge_work",
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
  "slug": "criticalremovedpairedwork-eq-bridge-work--9ca599ce8595f733d4e89db4",
  "source": {
    "blob": "2bc8c407989f009eeaf4828dae2afecf50828b21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variant9d02cd409a74992b907cb4420899b431b2449f1bd5d496e0876b44d93f477fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ca599ce8595f733d4e89db4ab26ffeffc5e6cb493895b153854c07160dbbc70",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variant9d02cd409a74992b907cb4420899b431b2449f1bd5d496e0876b44d93f477fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06639415-e322-1313-a537-21989307fbcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem criticalRemovedPairedWork_eq_bridge_work {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      -(∫ u in 0..2 * A,
        deriv (criticalDiscrepancyBridge A) u * deriv (pairedTailTest A) u) := by
  have hp : 0 < A := by linarith
  have hDpc := paired_deriv_continuous hA
  have hiD := hDpc.intervalIntegrable (μ := volume) 0 (2 * A)
  have hiδ := (criticalCumulativeDiscrepancy_intervalIntegrable 0 (2 * A))
    .mul_continuousOn hDpc.continuousOn
  have hz : (∫ u in 0..2 * A, deriv (pairedTailTest A) u) = 0 := by
    have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun u _ => paired_hasDerivAt hA u) hiD
    simpa only [pairedTailTest_at_upper hA, pairedTailTest_at_zero hA, sub_self] using he
  have he : (∫ u in 0..2 * A,
      deriv (criticalDiscrepancyBridge A) u * deriv (pairedTailTest A) u) =
      ∫ u in 0..2 * A,
        (criticalCumulativeDiscrepancy u -
          criticalDiscrepancyPrimitive (2 * A) / (2 * A)) * deriv (pairedTailTest A) u := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [criticalDiscrepancyBridge_ae_hasDerivAt hp] with u hu
    intro huA
    rw [(hu (uIoc_subset_uIcc huA)).deriv]
  have hf : (fun u : ℝ =>
      (criticalCumulativeDiscrepancy u -
        criticalDiscrepancyPrimitive (2 * A) / (2 * A)) * deriv (pairedTailTest A) u) =
      fun u => criticalCumulativeDiscrepancy u * deriv (pairedTailTest A) u -
        (criticalDiscrepancyPrimitive (2 * A) / (2 * A)) * deriv (pairedTailTest A) u := by
    funext u
    ring
  rw [he, hf, intervalIntegral.integral_sub hiδ
    (hiD.const_mul (criticalDiscrepancyPrimitive (2 * A) / (2 * A))),
    intervalIntegral.integral_const_mul, hz, mul_zero, sub_zero]
  exact criticalRemovedPairedWork_eq_cumulative_work hA

/-- Actual second Abel pairing uses the proved AC derivative and zero bridge endpoints.
Neither a global classical second derivative nor a zero lower derivative is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variant9d02cd409a74992b907cb4420899b431b2449f1bd5d496e0876b44d93f477fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variant9d02cd409a74992b907cb4420899b431b2449f1bd5d496e0876b44d93f477fea.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bc8c407989f009eeaf4828dae2afecf50828b21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
