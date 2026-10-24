# sourceLogKernel_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9868b22cc9b1dde138db3ac534dba2295824724c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d17880d-6ec8-8018-d673-c11d5a8966f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03121ad5-229a-cdc4-5129-d442ba15f756",
  "kind": "theorem",
  "lexical_name": "sourceLogKernel_hasDerivAt",
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
  "slug": "sourcelogkernel-hasderivat--236419513cf7f4272e2040a5",
  "source": {
    "blob": "9868b22cc9b1dde138db3ac534dba2295824724c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:236419513cf7f4272e2040a5f29870d1d72cbf38f7c44edc4bd925ee35a28555",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03121ad5-229a-cdc4-5129-d442ba15f756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLogKernel_hasDerivAt (A s : ℝ) (hA : 0 < A) :
    HasDerivAt (sourceLogKernel A)
      (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          deriv (sourceCorrelation explicitSecondDerivative A) (s + Real.log (k : ℝ))) s := by
  have heq : sourceLogKernel A = fun u ↦
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          sourceCorrelation explicitSecondDerivative A (u + Real.log (k : ℝ)) :=
    funext (sourceLogKernel_eq_sum A)
  rw [heq]
  have hs : ∀ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
      HasDerivAt
        (fun u ↦ Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          sourceCorrelation explicitSecondDerivative A (u + Real.log (k : ℝ)))
        (Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          deriv (sourceCorrelation explicitSecondDerivative A) (s + Real.log (k : ℝ))) s := by
    intro k _
    have hd := ((sourceCorrelation_contDiff A hA).differentiable
      (by norm_num)).differentiableAt.hasDerivAt (x := s + Real.log (k : ℝ))
    simpa using (hd.comp s ((hasDerivAt_id s).add_const (Real.log (k : ℝ)))).const_mul
      (Real.log (k : ℝ) / Real.sqrt (k : ℝ))
  exact HasDerivAt.fun_sum hs

/-- The derivative formula for the actual logarithmic kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9868b22cc9b1dde138db3ac534dba2295824724c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
