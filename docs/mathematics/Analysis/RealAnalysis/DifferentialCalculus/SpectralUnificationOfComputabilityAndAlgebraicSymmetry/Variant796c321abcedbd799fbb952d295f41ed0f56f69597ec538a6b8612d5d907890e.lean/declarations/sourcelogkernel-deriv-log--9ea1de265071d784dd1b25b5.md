# sourceLogKernel_deriv_log

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
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b2e85ea-1a14-e4fd-1270-c4798e7380fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f06bbf4-7c4d-7bb7-a4e3-c8a9f90bdb83",
  "kind": "theorem",
  "lexical_name": "sourceLogKernel_deriv_log",
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
  "slug": "sourcelogkernel-deriv-log--9ea1de265071d784dd1b25b5",
  "source": {
    "blob": "9868b22cc9b1dde138db3ac534dba2295824724c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ea1de265071d784dd1b25b5072d0c57a21fc13b884164ac61244696fc8f5f3d",
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

Occurrence: `result:4f06bbf4-7c4d-7bb7-a4e3-c8a9f90bdb83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLogKernel_deriv_log (A x : ℝ) (hA : 0 < A) (hx : 0 < x) :
    deriv (sourceLogKernel A) (Real.log x) =
      Real.sqrt x * (x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2) := by
  have hK : DifferentiableAt ℝ (sourceMobiusKernel A) x :=
    ((sourceMobiusKernel_contDiffOn_pos A hA).contDiffAt
      (Ioi_mem_nhds hx)).differentiableAt (by norm_num)
  have hKlog : HasDerivAt (fun s ↦ sourceMobiusKernel A (Real.exp s))
      (deriv (sourceMobiusKernel A) x * x) (Real.log x) := by
    have hK' : HasDerivAt (sourceMobiusKernel A) (deriv (sourceMobiusKernel A) x)
        (Real.exp (Real.log x)) := by simpa only [Real.exp_log hx] using hK.hasDerivAt
    simpa only [Real.exp_log hx, Function.comp_def] using
      hK'.comp (Real.log x) (Real.hasDerivAt_exp (Real.log x))
  have hE : HasDerivAt (fun s : ℝ ↦ Real.exp (s / 2))
      (Real.exp (Real.log x / 2) / 2) (Real.log x) := by
    simpa only [id_eq, div_eq_mul_inv, one_mul] using
      ((hasDerivAt_id (Real.log x)).div_const 2).exp
  have hG := hE.mul hKlog
  change HasDerivAt (sourceLogKernel A) _ _ at hG
  rw [hG.deriv, Real.exp_log hx, Real.exp_half, Real.exp_log hx]
  ring

/-- Differentiation of the weighted source kernel in the real Abel variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant796c321abcedbd799fbb952d295f41ed0f56f69597ec538a6b8612d5d907890e.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9868b22cc9b1dde138db3ac534dba2295824724c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
