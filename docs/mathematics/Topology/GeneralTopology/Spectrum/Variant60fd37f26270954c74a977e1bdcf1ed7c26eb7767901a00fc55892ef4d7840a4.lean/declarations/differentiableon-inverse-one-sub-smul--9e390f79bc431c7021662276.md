# differentiableOn_inverse_one_sub_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbf73cbe5aeb32e8126e6abfc578ff3bdb31ce8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c988f9a-91b3-8f02-8b40-e15d48337f60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e34c34c8-e089-e0ee-f144-4734e89f1751",
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
  "slug": "differentiableon-inverse-one-sub-smul--9e390f79bc431c7021662276",
  "source": {
    "blob": "bbf73cbe5aeb32e8126e6abfc578ff3bdb31ce8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 328,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e390f79bc431c7021662276c786829d6ca42503437c1e769397954f6b13d201",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e34c34c8-e089-e0ee-f144-4734e89f1751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableOn_inverse_one_sub_smul [CompleteSpace A] {a : A} {r : ℝ≥0}
    (hr : (r : ℝ≥0∞) < (spectralRadius 𝕜 a)⁻¹) :
    DifferentiableOn 𝕜 (fun z : 𝕜 => Ring.inverse (1 - z • a)) (Metric.closedBall 0 r) := by
  intro z z_mem
  apply DifferentiableAt.differentiableWithinAt
  have hu : IsUnit (1 - z • a) := by
    refine isUnit_one_sub_smul_of_lt_inv_radius (lt_of_le_of_lt (coe_mono ?_) hr)
    simpa only [norm_toNNReal, Real.toNNReal_coe] using
      Real.toNNReal_mono (mem_closedBall_zero_iff.mp z_mem)
  have H₁ : Differentiable 𝕜 fun w : 𝕜 => 1 - w • a := (differentiable_id.smul_const a).const_sub 1
  exact DifferentiableAt.comp z (differentiableAt_inverse hu) H₁.differentiableAt

end OneSubSMul

section GelfandFormula

open Filter ENNReal ContinuousMultilinearMap

open scoped Topology

variable [NormedRing A] [NormedAlgebra ℂ A] [CompleteSpace A]

/-- The `limsup` relationship for the spectral radius used to prove `spectrum.gelfand_formula`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant60fd37f26270954c74a977e1bdcf1ed7c26eb7767901a00fc55892ef4d7840a4.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf73cbe5aeb32e8126e6abfc578ff3bdb31ce8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
