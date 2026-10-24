# pinnedPrimeWeightAmplitudeRequirement_of_target_le_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09d06346-13c1-1c78-a97d-bc70f15d76ce",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightAmplitudeRequirement_of_target_le_error",
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
  "slug": "pinnedprimeweightamplituderequirement-of-target-le-error--19beac07c6886fd342f58d63",
  "source": {
    "blob": "626068b47c529c01361f775183bde7e10478dfa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 125,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19beac07c6886fd342f58d638e414f6c66b308ce656e301b0cdce60e94169ac6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09d06346-13c1-1c78-a97d-bc70f15d76ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightAmplitudeRequirement_of_target_le_error
    (X : ℕ) {C v E : ℝ}
    (hC : 0 ≤ C)
    (htarget : |thetaError v| + 1 ≤ E) :
    pinnedPrimeWeightAmplitudeRequirement X C v E := by
  unfold pinnedPrimeWeightAmplitudeRequirement
  have hleft :
      (X : ℝ) * ((|thetaError v| + 1) - E) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos
      (Nat.cast_nonneg X) (sub_nonpos.mpr htarget)
  have hright :
      0 ≤ C * (pinnedPrimeWeightedAmplitude X)^2 :=
    mul_nonneg hC (sq_nonneg _)
  exact hleft.trans hright

/-- Variable-budget amplitude-envelope criterion.  It is definitionally the
bounded-capacity criterion with the optimized deficit replaced by its exact
positive-scale amplitude inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `626068b47c529c01361f775183bde7e10478dfa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
