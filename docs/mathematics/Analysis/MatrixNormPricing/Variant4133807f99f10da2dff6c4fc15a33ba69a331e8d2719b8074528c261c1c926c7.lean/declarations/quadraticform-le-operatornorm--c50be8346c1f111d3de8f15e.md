# quadraticForm_le_operatorNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b58a168-19ad-edfc-d066-29928eb576cd",
  "kind": "theorem",
  "lexical_name": "quadraticForm_le_operatorNorm",
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
  "slug": "quadraticform-le-operatornorm--c50be8346c1f111d3de8f15e",
  "source": {
    "blob": "fdf9f4a7224fb7b0a8b9f7accb86308359b4f51e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 29,
    "path": "GRWTSK/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c50be8346c1f111d3de8f15e32b1352af5775ccf0e1ad356b275ce6e8eb12434",
  "verification": {
    "reference": "docs/verification/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b58a168-19ad-edfc-d066-29928eb576cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticForm_le_operatorNorm {ι : Type*} [Fintype ι] [DecidableEq ι]
    (M : Matrix ι ι ℝ) (v : ι → ℝ) :
    quadraticForm M v ≤ operatorNorm M * ∑ i, v i ^ 2 := by
  let x : EuclideanSpace ℝ ι := WithLp.toLp 2 v
  have hq : quadraticForm M v = ⟪x, Matrix.toEuclideanCLM (𝕜 := ℝ) M x⟫ := by
    rw [Matrix.inner_toEuclideanCLM]
    change (∑ i, ∑ j, v i * M i j * v j) = ∑ i, v i * ∑ j, M i j * v j
    simp_rw [Finset.mul_sum, mul_assoc]
  rw [hq]
  calc
    _ ≤ ‖x‖ * ‖Matrix.toEuclideanCLM (𝕜 := ℝ) M x‖ := real_inner_le_norm _ _
    _ ≤ ‖x‖ * (operatorNorm M * ‖x‖) :=
      mul_le_mul_of_nonneg_left ((Matrix.toEuclideanCLM (𝕜 := ℝ) M).le_opNorm x) (norm_nonneg _)
    _ = operatorNorm M * ‖x‖ ^ 2 := by ring
    _ = _ := by rw [EuclideanSpace.real_norm_sq_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MatrixNormPricing/Variant4133807f99f10da2dff6c4fc15a33ba69a331e8d2719b8074528c261c1c926c7.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf9f4a7224fb7b0a8b9f7accb86308359b4f51e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
