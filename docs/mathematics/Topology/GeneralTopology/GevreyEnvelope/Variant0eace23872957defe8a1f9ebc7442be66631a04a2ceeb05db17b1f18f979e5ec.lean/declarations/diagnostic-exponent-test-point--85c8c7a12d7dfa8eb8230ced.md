# diagnostic_exponent_test_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afbee478-a73e-caa1-efd8-0e5d2e612312",
  "kind": "theorem",
  "lexical_name": "diagnostic_exponent_test_point",
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
  "slug": "diagnostic-exponent-test-point--85c8c7a12d7dfa8eb8230ced",
  "source": {
    "blob": "40214ce4b87621289c84d9a41b6f2d331d4f467b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85c8c7a12d7dfa8eb8230cede3cb1c72b4910a8543f90026aa0d2a2d116d4022",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afbee478-a73e-caa1-efd8-0e5d2e612312`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagnostic_exponent_test_point (c d : ℝ) {s A : ℝ}
    (hs : 0 < s) (hA : 1 < A) :
    diagnosticExponent c d s A (testPoint s A) =
      A - (4 * c / s) * (A / Real.log A) - d * Real.sqrt A - Real.log A := by
  have hA0 : 0 < A := lt_trans zero_lt_one hA
  have hs0 : s ≠ 0 := ne_of_gt hs
  have hlog : Real.log A ≠ 0 := ne_of_gt (Real.log_pos hA)
  have harg : testPoint s A / s = Real.log A * (1 / 2) := by
    dsimp [testPoint]
    field_simp
  have hexp : Real.exp (testPoint s A / s) = Real.sqrt A := by
    rw [harg, Real.sqrt_eq_rpow, Real.rpow_def_of_pos hA0]
  have hquot : 2 * c * A / testPoint s A =
      (4 * c / s) * (A / Real.log A) := by
    dsimp [testPoint]
    field_simp
    ring
  simp only [diagnosticExponent, hquot, hexp]

/-- The normalized test-point value separates into three terms tending to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40214ce4b87621289c84d9a41b6f2d331d4f467b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
