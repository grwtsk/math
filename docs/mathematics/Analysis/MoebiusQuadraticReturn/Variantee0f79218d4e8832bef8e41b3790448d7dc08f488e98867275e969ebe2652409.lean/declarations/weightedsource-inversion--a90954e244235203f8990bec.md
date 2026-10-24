# weightedSource_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c84877b-67ac-9ade-9e17-301d40932b9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4ae0c15-6d44-6559-3903-f1b0f4a40fad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d9d3b2f-ff93-98d9-6dd7-ec527392f273",
  "kind": "theorem",
  "lexical_name": "weightedSource_inversion",
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
  "slug": "weightedsource-inversion--a90954e244235203f8990bec",
  "source": {
    "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 95,
    "path": "GRWTSK/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a90954e244235203f8990bec4f46c112054780b9fc8dd84118fdac98828f46d0",
  "verification": {
    "reference": "docs/verification/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d9d3b2f-ff93-98d9-6dd7-ec527392f273`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedSource_inversion {c : ℝ} (hc : 1 < c)
    (hk : Integrable (RightLine.pickupKernel c)) (u : ℝ) :
    ((2 * Real.pi : ℝ)⁻¹ : ℂ) *
      (∫ t : ℝ, RightLine.pickupKernel c t * Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) =
      weightedSource c u := by
  have hfourier : Integrable (𝓕 (weightedSource c) : ℝ → ℂ) := by
    have he : (𝓕 (weightedSource c) : ℝ → ℂ) =
        fun ξ => RightLine.pickupKernel c ((2 * Real.pi) * ξ) :=
      funext (weightedSource_fourier hc)
    rw [he]
    exact hk.comp_mul_left' (by positivity)
  have hi := (weightedSource_integrable hc).fourierInv_fourier_eq hfourier
    ((weightedSource_continuous c).continuousAt (x := u))
  rw [Real.fourierInv_eq'] at hi
  simp only [Real.inner_apply, smul_eq_mul] at hi
  have he : (fun ξ : ℝ => Complex.exp (((2 * Real.pi * (ξ*u) : ℝ) : ℂ) * Complex.I) *
      (𝓕 (weightedSource c)) ξ) =
      fun ξ => (fun t : ℝ => RightLine.pickupKernel c t *
        Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) ((2 * Real.pi) * ξ) := by
    funext ξ
    rw [weightedSource_fourier hc]
    have hexp : 2 * Real.pi * (ξ*u) = (2 * Real.pi * ξ) * u := by ring
    rw [hexp]
    exact mul_comm _ _
  rw [he] at hi
  have hs := Measure.integral_comp_mul_left
    (fun t : ℝ => RightLine.pickupKernel c t *
      Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) (2 * Real.pi)
  rw [abs_of_pos (by positivity : 0 < (2 * Real.pi : ℝ)⁻¹),
    RCLike.real_smul_eq_coe_mul] at hs
  have hr := hs.symm.trans hi
  change Complex.ofReal ((2 * Real.pi : ℝ)⁻¹) *
    (∫ t : ℝ, RightLine.pickupKernel c t *
      Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) = weightedSource c u at hr
  rw [Complex.ofReal_inv] at hr
  exact hr


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e7f1d445612d850025ab4ea76e336b3d311f1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
