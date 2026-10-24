# negativeSurvival_integral_eq_timeMean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90b99b2f-dea7-2129-f9be-1a0cea39a5eb",
  "kind": "theorem",
  "lexical_name": "negativeSurvival_integral_eq_timeMean",
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
  "slug": "negativesurvival-integral-eq-timemean--f6da822e0d4523f181751d47",
  "source": {
    "blob": "35bd3dd8058871d5e8e34b491869e1b1497f0b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant2eb947636635ca0f980d133f7ebe6d05fcc235b8eb9e1f8a36d583559b370868.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6da822e0d4523f181751d47164da593a21ac85ed2daf75e6d269d2d1ac08d65",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant2eb947636635ca0f980d133f7ebe6d05fcc235b8eb9e1f8a36d583559b370868.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90b99b2f-dea7-2129-f9be-1a0cea39a5eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSurvival_integral_eq_timeMean {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2*A, negativeSurvival A u) = negativeTimeMean A := by
  have hc := negativeSlope_continuous (show 0 < A by linarith)
  have hi := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun u : ℝ => u) (u' := fun _ => (1 : ℝ))
    (v := negativeSurvival A) (v' := fun u => -(negativeSlope A u) / negativeMass A)
    (fun u _ => hasDerivAt_id u) (fun u _ => negativeSurvival_hasDerivAt hA u)
    (continuous_const.intervalIntegrable 0 (2*A))
    ((hc.neg.div_const _).intervalIntegrable 0 (2*A))
  simp only [negativeSurvival_at_upper, negativeSurvival_at_zero hA, mul_zero, zero_mul,
    sub_zero, zero_sub, one_mul] at hi
  have he : (fun u : ℝ => u * (-(negativeSlope A u) / negativeMass A)) =
      fun u => -(u * negativeSlope A u) / negativeMass A := by
    funext u
    ring
  rw [he, intervalIntegral.integral_div, intervalIntegral.integral_neg] at hi
  unfold negativeTimeMean
  linarith

/-- The complete drift is the negative time mean minus the actual continuous half. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant2eb947636635ca0f980d133f7ebe6d05fcc235b8eb9e1f8a36d583559b370868.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PairedTailV1Prebytes/Variant2eb947636635ca0f980d133f7ebe6d05fcc235b8eb9e1f8a36d583559b370868.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35bd3dd8058871d5e8e34b491869e1b1497f0b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
