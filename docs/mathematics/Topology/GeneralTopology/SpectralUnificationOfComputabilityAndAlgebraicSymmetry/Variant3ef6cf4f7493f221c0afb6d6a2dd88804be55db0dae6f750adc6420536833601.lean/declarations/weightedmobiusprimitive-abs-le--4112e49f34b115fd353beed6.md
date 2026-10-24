# weightedMobiusPrimitive_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bef62d60-6730-89f2-16e6-fc539e866953",
  "kind": "theorem",
  "lexical_name": "weightedMobiusPrimitive_abs_le",
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
  "slug": "weightedmobiusprimitive-abs-le--4112e49f34b115fd353beed6",
  "source": {
    "blob": "12a4fec983b5bff7014bd7e3cb9c75becb9ab063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3ef6cf4f7493f221c0afb6d6a2dd88804be55db0dae6f750adc6420536833601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4112e49f34b115fd353beed623f32eb4c08f82954bbd7371d99efff40f017d4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3ef6cf4f7493f221c0afb6d6a2dd88804be55db0dae6f750adc6420536833601.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bef62d60-6730-89f2-16e6-fc539e866953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMobiusPrimitive_abs_le {s : ℝ} (_hs : 0 ≤ s) :
    |weightedMobiusPrimitive s| ≤ 2 * Real.exp (s / 2) := by
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp s⌋₊, |weightedMoebius n| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp s⌋₊, 1 / Real.sqrt (n : ℝ) := by
      apply Finset.sum_le_sum
      intro n _
      rw [weightedMoebius, abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
      exact div_le_div_of_nonneg_right (realMoebius_abs_le_one n) (Real.sqrt_nonneg _)
    _ ≤ 2 * Real.sqrt (⌊Real.exp s⌋₊ : ℝ) := sum_reciprocal_sqrt_le _
    _ ≤ 2 * Real.exp (s / 2) := by
      rw [Real.exp_half]
      exact mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt (Nat.floor_le (by positivity)))
        (by norm_num)

/-- Exact integral of the elementary majorant for the anchored derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3ef6cf4f7493f221c0afb6d6a2dd88804be55db0dae6f750adc6420536833601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3ef6cf4f7493f221c0afb6d6a2dd88804be55db0dae6f750adc6420536833601.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12a4fec983b5bff7014bd7e3cb9c75becb9ab063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
