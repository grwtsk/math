# boundary_bulk_kernel_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31f406cd3d13fdc40d5b5030c936f15615749492",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c263afe5-d72a-6fa2-27bb-25cb30cd42f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d516489-2d88-e617-9c2f-3894dc8f453d",
  "kind": "theorem",
  "lexical_name": "boundary_bulk_kernel_tendsto",
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
  "slug": "boundary-bulk-kernel-tendsto--077edc5f170d973ab71e97af",
  "source": {
    "blob": "31f406cd3d13fdc40d5b5030c936f15615749492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:077edc5f170d973ab71e97afd6751929cc90d6456a297f25a6c45f42ab3a8de7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d516489-2d88-e617-9c2f-3894dc8f453d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_bulk_kernel_tendsto (y : ℝ) (hy : 0 ≤ y) :
    Tendsto (fun A : ℝ ↦ boundaryBulkKernel A y) atTop (nhds (boundaryBulkProfile y)) := by
  have hc : Continuous endpointPolynomialZero := by
    unfold endpointPolynomialZero
    fun_prop
  have hp := hc.continuousAt.tendsto.comp (distance_div_radius_tendsto_zero y)
  have hr := (hp.const_mul (y ^ 9 / 16)).div source_normalization_tendsto (by norm_num)
  have heq : (fun A : ℝ ↦ boundaryBulkKernel A y) =ᶠ[atTop]
      (fun A ↦ (y ^ 9 / 16 * endpointPolynomialZero (y / A)) / sourceNormalization A) := by
    filter_upwards [eventually_ge_atTop (max 1 (y / 2))] with A hA
    have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
    have hyA : y ≤ 2 * A := by have h := (le_max_right 1 (y / 2)).trans hA; linarith
    exact boundary_bulk_kernel_exact A y hA1 hy hyA
  convert hr.congr' heq.symm using 1
  norm_num [endpointPolynomialZero, boundaryBulkProfile]
  ring

/-- The two derivative components retain their nontrivial fixed-distance contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f406cd3d13fdc40d5b5030c936f15615749492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
