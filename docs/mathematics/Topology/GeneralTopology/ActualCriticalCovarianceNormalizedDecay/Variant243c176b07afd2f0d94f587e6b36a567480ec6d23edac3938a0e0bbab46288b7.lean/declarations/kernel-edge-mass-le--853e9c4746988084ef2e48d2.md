# kernel_edge_mass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d1d5d59-aad1-1fb5-1a14-739e1f5f4684",
  "kind": "theorem",
  "lexical_name": "kernel_edge_mass_le",
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
  "slug": "kernel-edge-mass-le--853e9c4746988084ef2e48d2",
  "source": {
    "blob": "1bb72437e69a6cdb0a71bef88ecc4bf6cd41acc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variant243c176b07afd2f0d94f587e6b36a567480ec6d23edac3938a0e0bbab46288b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:853e9c4746988084ef2e48d2ad8be167f4136d761698e7305006f14c88d4e812",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variant243c176b07afd2f0d94f587e6b36a567480ec6d23edac3938a0e0bbab46288b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d1d5d59-aad1-1fb5-1a14-739e1f5f4684`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem kernel_edge_mass_le {A : ℝ} (hA : 91 ≤ A) :
    (∫ t in 0..2 * A,
      ((2 * A - t) ^ 4 / 96 + (2 * A - t) ^ 3 / 12) * Real.exp (t / 2)) ≤
        16 * Real.exp A := by
  have h4 := exponential_truncated_moment_le 4 (by linarith : 0 ≤ 2 * A)
  have h3 := exponential_truncated_moment_le 3 (by linarith : 0 ≤ 2 * A)
  norm_num only [Nat.factorial, Nat.cast_ofNat] at h4 h3
  rw [show 2 * A / 2 = A by ring] at h4 h3
  have he : (∫ t in 0..2 * A,
      ((2 * A - t) ^ 4 / 96 + (2 * A - t) ^ 3 / 12) * Real.exp (t / 2)) =
        (∫ t in 0..2 * A, (2 * A - t) ^ 4 * Real.exp (t / 2)) / 96 +
          (∫ t in 0..2 * A, (2 * A - t) ^ 3 * Real.exp (t / 2)) / 12 := by
    rw [← intervalIntegral.integral_div, ← intervalIntegral.integral_div,
      ← intervalIntegral.integral_add
        ((by fun_prop : Continuous (fun t : ℝ =>
          (2 * A - t) ^ 4 * Real.exp (t / 2) / 96)).intervalIntegrable _ _)
        ((by fun_prop : Continuous (fun t : ℝ =>
          (2 * A - t) ^ 3 * Real.exp (t / 2) / 12)).intervalIntegrable _ _)]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    ring
  rw [he]
  nlinarith

/-- A true late source amplitude gives the C4 edge mass, with its whole interval retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variant243c176b07afd2f0d94f587e6b36a567480ec6d23edac3938a0e0bbab46288b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCriticalCovarianceNormalizedDecay/Variant243c176b07afd2f0d94f587e6b36a567480ec6d23edac3938a0e0bbab46288b7.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bb72437e69a6cdb0a71bef88ecc4bf6cd41acc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
