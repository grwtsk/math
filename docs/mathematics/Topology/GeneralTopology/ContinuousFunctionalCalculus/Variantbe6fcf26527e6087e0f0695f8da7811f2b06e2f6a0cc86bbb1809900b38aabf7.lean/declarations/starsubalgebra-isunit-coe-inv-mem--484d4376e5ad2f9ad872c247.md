# StarSubalgebra.isUnit_coe_inv_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "717d9efdd9fa976837df0f4a34f7e472a6b41d9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9df857a-0ff2-e7db-aab0-ac8e201b9fc4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9502157c-0b2d-d84e-f561-9f5d038e8a24",
  "kind": "theorem",
  "lexical_name": "StarSubalgebra.isUnit_coe_inv_mem",
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
  "slug": "starsubalgebra-isunit-coe-inv-mem--484d4376e5ad2f9ad872c247",
  "source": {
    "blob": "717d9efdd9fa976837df0f4a34f7e472a6b41d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:484d4376e5ad2f9ad872c24724bdf6b1bb0cafebae9d20425ebbd10fa8e8a5b6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9502157c-0b2d-d84e-f561-9f5d038e8a24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StarSubalgebra.isUnit_coe_inv_mem {S : StarSubalgebra ℂ A} (hS : IsClosed (S : Set A))
    {x : A} (h : IsUnit x) (hxS : x ∈ S) : ↑h.unit⁻¹ ∈ S := by
  have hx := h.star.mul h
  suffices this : (↑hx.unit⁻¹ : A) ∈ S
  · rw [← one_mul (↑h.unit⁻¹ : A), ← hx.unit.inv_mul, mul_assoc, IsUnit.unit_spec, mul_assoc,
      h.mul_val_inv, mul_one]
    exact mul_mem this (star_mem hxS)
  refine' le_of_isClosed_of_mem ℂ hS (mul_mem (star_mem hxS) hxS) _
  haveI := (IsSelfAdjoint.star_mul_self x).isStarNormal
  have hx' := elementalStarAlgebra.isUnit_of_isUnit_of_isStarNormal hx
  convert (↑hx'.unit⁻¹ : elementalStarAlgebra ℂ (star x * x)).prop using 1
  refine left_inv_eq_right_inv hx.unit.inv_mul ?_
  exact (congr_arg ((↑) : _ → A) hx'.unit.mul_inv)
#align star_subalgebra.is_unit_coe_inv_mem StarSubalgebra.isUnit_coe_inv_mem

/-- For a unital C⋆-subalgebra `S` of `A` and `x : S`, if `↑x : A` is invertible in `A`, then
`x` is invertible in `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717d9efdd9fa976837df0f4a34f7e472a6b41d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
