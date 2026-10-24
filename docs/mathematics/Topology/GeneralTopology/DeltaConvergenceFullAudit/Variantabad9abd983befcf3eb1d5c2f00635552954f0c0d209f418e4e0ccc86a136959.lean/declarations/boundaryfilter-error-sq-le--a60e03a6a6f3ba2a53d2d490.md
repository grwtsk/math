# boundaryFilter_error_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b732c664-71d9-71f0-240e-3c216f25cb75",
  "kind": "theorem",
  "lexical_name": "boundaryFilter_error_sq_le",
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
  "slug": "boundaryfilter-error-sq-le--a60e03a6a6f3ba2a53d2d490",
  "source": {
    "blob": "8b41ca111ef36ac2dc96c67a2c19933e3ae1f332",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantabad9abd983befcf3eb1d5c2f00635552954f0c0d209f418e4e0ccc86a136959.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a60e03a6a6f3ba2a53d2d490b73e584692a2992e068d8751a2533e4790c33814",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantabad9abd983befcf3eb1d5c2f00635552954f0c0d209f418e4e0ccc86a136959.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b732c664-71d9-71f0-240e-3c216f25cb75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryFilter_error_sq_le (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4)
    (hh : 0 ≤ h) :
    ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ^ 2 ≤
      (1 + 2 * Real.exp 1) ^ 2 * (1 + t ^ 2)⁻¹ := by
  have hn := boundaryFilter_norm_le ε h t hε hsmall hh
  have hdp : 0 < ‖1 + (t : ℂ) * Complex.I‖ :=
    norm_pos_iff.mpr (boundary_denominator_ne_zero t)
  have hbound : ‖(1 + (t : ℂ) * Complex.I)⁻¹ - boundaryFilter ε h t‖ ≤
      (1 + 2 * Real.exp 1) / ‖1 + (t : ℂ) * Complex.I‖ := by
    calc
      _ ≤ ‖(1 + (t : ℂ) * Complex.I)⁻¹‖ + ‖boundaryFilter ε h t‖ := norm_sub_le _ _
      _ ≤ ‖1 + (t : ℂ) * Complex.I‖⁻¹ +
          2 * Real.exp 1 / ‖1 + (t : ℂ) * Complex.I‖ := by
        rw [norm_inv]
        exact add_le_add le_rfl hn
      _ = _ := by ring
  have hs := (sq_le_sq₀ (norm_nonneg _) (by positivity)).mpr hbound
  simpa only [div_eq_mul_inv, mul_pow, inv_pow, boundary_denominator_norm_sq] using hs

/-- Every full squared boundary error is genuinely integrable before defining its distortion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantabad9abd983befcf3eb1d5c2f00635552954f0c0d209f418e4e0ccc86a136959.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DeltaConvergenceFullAudit/Variantabad9abd983befcf3eb1d5c2f00635552954f0c0d209f418e4e0ccc86a136959.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b41ca111ef36ac2dc96c67a2c19933e3ae1f332` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
