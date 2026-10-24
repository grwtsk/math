# weighted_prefix_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3c08da8-3cfb-459c-46e3-d33773b61bfb",
  "kind": "theorem",
  "lexical_name": "weighted_prefix_abs_le",
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
  "slug": "weighted-prefix-abs-le--a8620723b8aadab2cf62e46c",
  "source": {
    "blob": "12a4fec983b5bff7014bd7e3cb9c75becb9ab063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3ef6cf4f7493f221c0afb6d6a2dd88804be55db0dae6f750adc6420536833601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8620723b8aadab2cf62e46c4026da58e611a03494714a307dc3e42008ce46bd",
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

Occurrence: `result:f3c08da8-3cfb-459c-46e3-d33773b61bfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_prefix_abs_le {G : ℝ → ℝ} {S B : ℝ}
    (hS : 0 ≤ S)
    (hderiv : ∀ s ∈ Icc (0 : ℝ) S, |deriv G s| ≤ B * (s + 4)) :
    |-(∫ s in (0 : ℝ)..S, weightedMobiusPrimitive s * deriv G s)| ≤
      4 * B * (Real.exp (S / 2) * (S + 2) - 2) := by
  have hbound := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hS
    (f := fun s : ℝ => weightedMobiusPrimitive s * deriv G s)
    (g := fun s : ℝ => (2 * B) * (Real.exp (s / 2) * (s + 4))) ?_
    ((by fun_prop : Continuous (fun s : ℝ =>
      (2 * B) * (Real.exp (s / 2) * (s + 4)))).intervalIntegrable _ _)
  · rw [intervalIntegral.integral_const_mul, integral_exp_half_linear] at hbound
    rw [Real.norm_eq_abs] at hbound
    rw [abs_neg]
    convert hbound using 1
    ring
  · filter_upwards with s hs
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (2 * Real.exp (s / 2)) * (B * (s + 4)) :=
        mul_le_mul (weightedMobiusPrimitive_abs_le hs.1.le)
          (hderiv s ⟨hs.1.le, hs.2⟩) (abs_nonneg _) (by positivity)
      _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3ef6cf4f7493f221c0afb6d6a2dd88804be55db0dae6f750adc6420536833601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3ef6cf4f7493f221c0afb6d6a2dd88804be55db0dae6f750adc6420536833601.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12a4fec983b5bff7014bd7e3cb9c75becb9ab063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
