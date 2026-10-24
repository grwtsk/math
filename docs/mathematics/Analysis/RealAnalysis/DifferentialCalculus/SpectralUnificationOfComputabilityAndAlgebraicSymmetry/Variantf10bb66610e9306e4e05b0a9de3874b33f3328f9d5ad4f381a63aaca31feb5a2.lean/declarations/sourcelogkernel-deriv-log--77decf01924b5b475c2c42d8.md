# sourceLogKernel_deriv_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3353ae8c-2b2d-474e-5cef-7f7394e1cf75",
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
  "slug": "sourcelogkernel-deriv-log--77decf01924b5b475c2c42d8",
  "source": {
    "blob": "2b45f6b003860864c62a09408632c2dfcccef36c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 151,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf10bb66610e9306e4e05b0a9de3874b33f3328f9d5ad4f381a63aaca31feb5a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77decf01924b5b475c2c42d89cf14000bdfa5ff95ed84abfd427ee142f62eb26",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf10bb66610e9306e4e05b0a9de3874b33f3328f9d5ad4f381a63aaca31feb5a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3353ae8c-2b2d-474e-5cef-7f7394e1cf75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–172.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf10bb66610e9306e4e05b0a9de3874b33f3328f9d5ad4f381a63aaca31feb5a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf10bb66610e9306e4e05b0a9de3874b33f3328f9d5ad4f381a63aaca31feb5a2.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b45f6b003860864c62a09408632c2dfcccef36c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
