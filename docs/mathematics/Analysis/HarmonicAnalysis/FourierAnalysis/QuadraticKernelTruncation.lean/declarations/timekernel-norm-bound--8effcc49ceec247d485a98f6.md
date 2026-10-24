# timeKernel_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a86ceb1bdbde45ed63abe1a007d25b835c9962",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94406b2e-d9c0-9db2-c484-65eaff536901",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a61a1e8f-534f-5dc9-c4e8-d8de2a08e0ca",
  "kind": "theorem",
  "lexical_name": "timeKernel_norm_bound",
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
  "slug": "timekernel-norm-bound--8effcc49ceec247d485a98f6",
  "source": {
    "blob": "f6a86ceb1bdbde45ed63abe1a007d25b835c9962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 19,
    "path": "GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8effcc49ceec247d485a98f62f5846299bf87822bc245778ba79ea2243df4ef5",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a61a1e8f-534f-5dc9-c4e8-d8de2a08e0ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem timeKernel_norm_bound {c T : ℝ} (hc : 1 < c) (hT : 0 ≤ T) (τ : ℝ) :
    ‖timeKernel c T τ‖ ≤ T*Real.exp ((2*c-1)*T) := by
  have hbound : ∀ u ∈ Icc 0 T,
      ‖Complex.exp (((2*c-1:ℝ)+τ*Complex.I)*(u:ℂ))‖ ≤ Real.exp ((2*c-1)*T) := by
    intro u hu
    rw [Complex.norm_exp]
    have he : (((2*c-1:ℝ)+τ*Complex.I)*(u:ℂ)).re = (2*c-1)*u := by simp
    rw [he]
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_left hu.2 (by linarith)
  have h := norm_setIntegral_le_of_norm_le_const
    (f := fun u : ℝ => Complex.exp (((2*c-1:ℝ)+τ*Complex.I)*(u:ℂ)))
    (μ := volume) (s := Icc 0 T) isCompact_Icc.measure_lt_top hbound
  rw [Real.volume_real_Icc_of_le hT] at h
  simpa only [timeKernel, sub_zero, mul_comm] using h

/-- Parameter continuity comes from a continuous integrand on a compact time interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/QuadraticKernelTruncation.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a86ceb1bdbde45ed63abe1a007d25b835c9962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
