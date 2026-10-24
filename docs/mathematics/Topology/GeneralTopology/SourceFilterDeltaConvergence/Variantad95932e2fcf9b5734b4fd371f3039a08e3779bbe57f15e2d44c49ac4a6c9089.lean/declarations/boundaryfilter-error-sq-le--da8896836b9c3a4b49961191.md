# boundaryFilter_error_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42916fb72d5b61b27f37a997ed913a30055311e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:306fd08e-2b37-87fd-0154-a123be702aa1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80bcd60d-08e9-2266-89a6-8cd6f5ba3882",
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
  "slug": "boundaryfilter-error-sq-le--da8896836b9c3a4b49961191",
  "source": {
    "blob": "42916fb72d5b61b27f37a997ed913a30055311e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/SourceFilterDeltaConvergence/Variantad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da8896836b9c3a4b49961191c1a12bcbeb071b514e04832c2c4252fefbfd5aa2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceFilterDeltaConvergence/Variantad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80bcd60d-08e9-2266-89a6-8cd6f5ba3882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–88.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceFilterDeltaConvergence/Variantad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceFilterDeltaConvergence/Variantad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42916fb72d5b61b27f37a997ed913a30055311e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
