# fourierIntegral_fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54260b884936c9479ca6a212d8b1c2bb8f4db37f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fce350f0-335a-a629-1573-b2b1637e055f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:086c7cf3-e8f0-097d-c973-c691f3d9cae2",
  "kind": "theorem",
  "lexical_name": "fourierIntegral_fderiv",
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
  "slug": "fourierintegral-fderiv--aea915e6cc01dfa727af3447",
  "source": {
    "blob": "54260b884936c9479ca6a212d8b1c2bb8f4db37f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 256,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aea915e6cc01dfa727af3447c60b3c9a8fa6a1670f3dc9e56590739a6809e51d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:086c7cf3-e8f0-097d-c973-c691f3d9cae2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierIntegral_fderiv [MeasurableSpace V] [BorelSpace V] [FiniteDimensional ℝ V]
    {μ : Measure V} [Measure.IsAddHaarMeasure μ]
    (hf : Integrable f μ) (h'f : Differentiable ℝ f) (hf' : Integrable (fderiv ℝ f) μ) :
    fourierIntegral 𝐞 μ L.toLinearMap₁₂ (fderiv ℝ f)
      = fourierSMulRight (-L.flip) (fourierIntegral 𝐞 μ L.toLinearMap₁₂ f) := by
  ext w y
  let g (v : V) : ℂ := 𝐞 (-L v w)
  /- First rewrite things in a simplified form, without any real change. -/
  suffices ∫ x, g x • fderiv ℝ f x y ∂μ = ∫ x, (2 * ↑π * I * L y w * g x) • f x ∂μ by
    rw [fourierIntegral_continuousLinearMap_apply' hf']
    simpa only [fourierIntegral, ContinuousLinearMap.toLinearMap₁₂_apply_apply_apply,
      fourierSMulRight_apply, neg_apply, ContinuousLinearMap.flip_apply, ← integral_smul, neg_smul,
      smul_neg, ← smul_smul, coe_smul, neg_neg]
  -- Key step: integrate by parts with respect to `y` to switch the derivative from `f` to `g`.
  have A x : fderiv ℝ g x y = - 2 * ↑π * I * L y w * g x :=
    fderiv_fourierChar_neg_bilinear_left_apply _ _ _ _
  rw [integral_smul_fderiv_eq_neg_fderiv_smul_of_integrable, ← integral_neg]
  · simp only [A, neg_mul, neg_smul, neg_neg]
  · have : Integrable (fun x ↦ (-(2 * ↑π * I * ↑((L y) w)) • ((g x : ℂ) • f x))) μ :=
      ((fourierIntegral_convergent_iff' _ _).2 hf).smul _
    convert! this using 2 with x
    simp only [A, neg_mul, neg_smul, smul_smul]
  · exact (fourierIntegral_convergent_iff' _ _).2 (hf'.apply_continuousLinearMap _)
  · exact (fourierIntegral_convergent_iff' _ _).2 hf
  · exact fun _ _ ↦ (differentiable_fourierChar_neg_bilinear_left _ _).differentiableAt
  · exact fun _ _ ↦ h'f.differentiableAt

/-- The formal multilinear series whose `n`-th term is
`(w₁, ..., wₙ) ↦ (-2πI)^n * L v w₁ * ... * L v wₙ • f v`, as a continuous multilinear map in
the space `W [×n]→L[ℝ] E`.

This is designed so that the Fourier transform of `v ↦ fourierPowSMulRight L f v n` is the
`n`-th derivative of the Fourier transform of `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54260b884936c9479ca6a212d8b1c2bb8f4db37f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
