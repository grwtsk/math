# kernel_edge_mass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5f94ea0-d46e-aded-04e3-6246f00fefe5",
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
  "slug": "kernel-edge-mass-le--60f124db21cd717e8cf2f422",
  "source": {
    "blob": "2401686385c94ebbe92f3ef4944c85d3d43064b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCriticalCovarianceEdgeNine/Variant885ca6a7f10b10c95b0514b20dbc692d09da2bc77c0b17fbb1994d53d13a4cda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60f124db21cd717e8cf2f4225b59a77004d9f80c506f941da1cf1a03de3a549a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCriticalCovarianceEdgeNine/Variant885ca6a7f10b10c95b0514b20dbc692d09da2bc77c0b17fbb1994d53d13a4cda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5f94ea0-d46e-aded-04e3-6246f00fefe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem kernel_edge_mass_le {A : ℝ} (hA : 91 ≤ A) :
    (∫ t in 0..2 * A,
      actualCriticalNinthEdgePolynomial (2 * A - t) * Real.exp (t / 2)) ≤
        101921587200 * Real.exp A := by
  have h4 := exponential_truncated_moment_le 4 (by linarith : 0 ≤ 2 * A)
  have h5 := exponential_truncated_moment_le 5 (by linarith : 0 ≤ 2 * A)
  have h6 := exponential_truncated_moment_le 6 (by linarith : 0 ≤ 2 * A)
  have h7 := exponential_truncated_moment_le 7 (by linarith : 0 ≤ 2 * A)
  have h8 := exponential_truncated_moment_le 8 (by linarith : 0 ≤ 2 * A)
  have h9 := exponential_truncated_moment_le 9 (by linarith : 0 ≤ 2 * A)
  norm_num only [Nat.factorial, Nat.cast_ofNat] at h4 h5 h6 h7 h8 h9
  rw [show 2 * A / 2 = A by ring] at h4 h5 h6 h7 h8 h9
  have he : (∫ t in 0..2 * A,
      actualCriticalNinthEdgePolynomial (2 * A - t) * Real.exp (t / 2)) =
      3932160 * (∫ t in 0..2 * A, (2 * A - t) ^ 4 * Real.exp (t / 2)) +
      294912 * (∫ t in 0..2 * A, (2 * A - t) ^ 5 * Real.exp (t / 2)) +
      131072 * (∫ t in 0..2 * A, (2 * A - t) ^ 6 * Real.exp (t / 2)) +
      12288 * (∫ t in 0..2 * A, (2 * A - t) ^ 7 * Real.exp (t / 2)) +
      1024 * (∫ t in 0..2 * A, (2 * A - t) ^ 8 * Real.exp (t / 2)) +
      128 * (∫ t in 0..2 * A, (2 * A - t) ^ 9 * Real.exp (t / 2)) := by
    simp only [actualCriticalNinthEdgePolynomial, add_mul, mul_assoc]
    repeat' rw [intervalIntegral.integral_add
      (by apply Continuous.intervalIntegrable; fun_prop)
      (by apply Continuous.intervalIntegrable; fun_prop)]
    simp only [intervalIntegral.integral_const_mul]
  rw [he]
  linarith

/-- A true late source amplitude gives the actual polynomial edge mass.
The entire ordered late interval is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCriticalCovarianceEdgeNine/Variant885ca6a7f10b10c95b0514b20dbc692d09da2bc77c0b17fbb1994d53d13a4cda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCriticalCovarianceEdgeNine/Variant885ca6a7f10b10c95b0514b20dbc692d09da2bc77c0b17fbb1994d53d13a4cda.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2401686385c94ebbe92f3ef4944c85d3d43064b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
