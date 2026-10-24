# integral_exp_half_linear_between

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cf74991-123c-b90b-0012-6ed970db0804",
  "kind": "theorem",
  "lexical_name": "integral_exp_half_linear_between",
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
  "slug": "integral-exp-half-linear-between--440eb0c6ebf809bd1426261a",
  "source": {
    "blob": "f4de82508eec3c948716c4442003d9b5b0bb99f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant828ca0fd35f52b866d1bdc6f24f92338f404fd24de07164f6d5b0dee5fb5c00a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:440eb0c6ebf809bd1426261a83e01d4b74e3d52e0a3073798bcdf75d06dedbda",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant828ca0fd35f52b866d1bdc6f24f92338f404fd24de07164f6d5b0dee5fb5c00a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cf74991-123c-b90b-0012-6ed970db0804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_exp_half_linear_between (u v : ℝ) :
    (∫ s in u..v, Real.exp (s / 2) * (s + 4)) =
      2 * (Real.exp (v / 2) * (v + 2) - Real.exp (u / 2) * (u + 2)) := by
  have hi (a b : ℝ) : IntervalIntegrable
      (fun s : ℝ => Real.exp (s / 2) * (s + 4)) volume a b :=
    (by fun_prop : Continuous (fun s : ℝ => Real.exp (s / 2) * (s + 4))).intervalIntegrable _ _
  have h := intervalIntegral.integral_add_adjacent_intervals (hi 0 u) (hi u v)
  rw [integral_exp_half_linear, integral_exp_half_linear] at h
  linarith

/-- An unconditional all-real-scale estimate for the full signed moving tail.
Both integration endpoints remain present in the envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant828ca0fd35f52b866d1bdc6f24f92338f404fd24de07164f6d5b0dee5fb5c00a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant828ca0fd35f52b866d1bdc6f24f92338f404fd24de07164f6d5b0dee5fb5c00a.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4de82508eec3c948716c4442003d9b5b0bb99f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
