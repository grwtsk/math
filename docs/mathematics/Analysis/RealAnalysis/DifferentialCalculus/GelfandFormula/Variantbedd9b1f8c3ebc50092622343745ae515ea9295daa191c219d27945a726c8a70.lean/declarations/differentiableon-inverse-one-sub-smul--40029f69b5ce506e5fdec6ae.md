# differentiableOn_inverse_one_sub_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70af95dd-e2f6-b8d9-eff7-82ec095d12cb",
  "kind": "theorem",
  "lexical_name": "differentiableOn_inverse_one_sub_smul",
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
  "slug": "differentiableon-inverse-one-sub-smul--40029f69b5ce506e5fdec6ae",
  "source": {
    "blob": "aa3f919d58eaacd482d12b13f639e79d30bfe6f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40029f69b5ce506e5fdec6ae0fc105ce44649abede691601d1fd6bb27ed6383b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70af95dd-e2f6-b8d9-eff7-82ec095d12cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableOn_inverse_one_sub_smul [NontriviallyNormedField 𝕜] [NormedRing A]
    [NormedAlgebra 𝕜 A] [CompleteSpace A] {a : A} {r : ℝ≥0}
    (hr : (r : ℝ≥0∞) < (spectralRadius 𝕜 a)⁻¹) :
    DifferentiableOn 𝕜 (fun z : 𝕜 => (1 - z • a)⁻¹ʳ) (Metric.closedBall 0 r) := by
  intro z z_mem
  apply DifferentiableAt.differentiableWithinAt
  have hu : IsUnit (1 - z • a) := by
    refine isUnit_one_sub_smul_of_lt_inv_radius (lt_of_le_of_lt (coe_mono ?_) hr)
    simpa only [norm_toNNReal, Real.toNNReal_coe] using
      Real.toNNReal_mono (mem_closedBall_zero_iff.mp z_mem)
  have H₁ : Differentiable 𝕜 fun w : 𝕜 => 1 - w • a := (differentiable_id.smul_const a).const_sub 1
  exact DifferentiableAt.comp z (differentiableAt_inverse hu) H₁.differentiableAt

section Complex

variable [NormedRing A] [NormedAlgebra ℂ A] [CompleteSpace A]

open ContinuousMultilinearMap in
/-- The `limsup` relationship for the spectral radius used to prove `spectrum.gelfand_formula`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variantbedd9b1f8c3ebc50092622343745ae515ea9295daa191c219d27945a726c8a70.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa3f919d58eaacd482d12b13f639e79d30bfe6f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
