# sourceMobiusKernel_deriv_upper_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3f9a72b-c18c-aec3-2565-b0eb9b7e3f3b",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_deriv_upper_zero",
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
  "slug": "sourcemobiuskernel-deriv-upper-zero--f9d5e13118f0d5424b97bf0d",
  "source": {
    "blob": "cbcc234e213be8de3457afd790b807c82441b0d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusDerivative/Variant854999223cd5374914f606a07a659c04f70ee9a03f10279dbd3ba69af5fae7e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9d5e13118f0d5424b97bf0dda428718bde25b6f603524d2b27c10bfd2c05af8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusDerivative/Variant854999223cd5374914f606a07a659c04f70ee9a03f10279dbd3ba69af5fae7e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3f9a72b-c18c-aec3-2565-b0eb9b7e3f3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_deriv_upper_zero
    (A : ℝ) (hA : 1 ≤ A) :
    deriv (sourceMobiusKernel A) (sourceUpper A) = 0 := by
  unfold sourceMobiusKernel
  rw [deriv_fun_sum]
  · apply Finset.sum_eq_zero
    intro k hk
    exact sourceKernelTerm_deriv_upper_zero A hA k (Finset.mem_Icc.mp hk).1
  · intro k hk
    exact (sourceKernelTerm_hasDerivAt A (sourceUpper A) k (by linarith)
      (Real.exp_pos _) (Finset.mem_Icc.mp hk).1).differentiableAt

end
end EstimateSourceMobiusDerivative
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusDerivative/Variant854999223cd5374914f606a07a659c04f70ee9a03f10279dbd3ba69af5fae7e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusDerivative/Variant854999223cd5374914f606a07a659c04f70ee9a03f10279dbd3ba69af5fae7e5.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbcc234e213be8de3457afd790b807c82441b0d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
