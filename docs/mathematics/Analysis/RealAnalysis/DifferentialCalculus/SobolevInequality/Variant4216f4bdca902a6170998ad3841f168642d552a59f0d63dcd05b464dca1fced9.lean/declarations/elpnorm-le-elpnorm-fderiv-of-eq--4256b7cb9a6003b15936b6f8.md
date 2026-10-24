# eLpNorm_le_eLpNorm_fderiv_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7146d1d3bcc835725b3310445922e60c3b456c1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 601,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d2d745a-d6d9-dc48-c335-f144e4f468f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e29a0bcf-2353-b71e-f684-6d9e6d39ca9d",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_eLpNorm_fderiv_of_eq",
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
  "slug": "elpnorm-le-elpnorm-fderiv-of-eq--4256b7cb9a6003b15936b6f8",
  "source": {
    "blob": "7146d1d3bcc835725b3310445922e60c3b456c1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 659,
    "line": 601,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variant4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4256b7cb9a6003b15936b6f8ecdfdea17d607d3855601e0665076201e8f140aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variant4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e29a0bcf-2353-b71e-f684-6d9e6d39ca9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–659.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_eLpNorm_fderiv_of_eq [FiniteDimensional ℝ F]
    {u : E → F} (hu : ContDiff ℝ 1 u) (h2u : HasCompactSupport u)
    {p p' : ℝ≥0} (hp : 1 ≤ p) (hn : 0 < finrank ℝ E)
    (hp' : (p' : ℝ)⁻¹ = p⁻¹ - (finrank ℝ E : ℝ)⁻¹) :
    eLpNorm u p' μ ≤ SNormLESNormFDerivOfEqConst F μ p * eLpNorm (fderiv ℝ u) p μ := by
  /- Here we reduce the GNS-inequality with a Hilbert space as codomain to the case with a
  finite-dimensional normed space as codomain, by transferring the result along the equivalence
  `F ≃ ℝᵐ`. -/
  let F' := EuclideanSpace ℝ <| Fin <| finrank ℝ F
  let e : F ≃L[ℝ] F' := toEuclidean
  let C₁ : ℝ≥0 := ‖(e.symm : F' →L[ℝ] F)‖₊
  let C : ℝ≥0 := eLpNormLESNormFDerivOfEqInnerConst μ p
  let C₂ : ℝ≥0 := ‖(e : F →L[ℝ] F')‖₊
  let v := e ∘ u
  have hv : ContDiff ℝ 1 v := e.contDiff.comp hu
  have h2v : HasCompactSupport v := h2u.comp_left e.map_zero
  have := eLpNorm_le_eLpNorm_fderiv_of_eq_inner μ hv h2v hp hn hp'
  have h4v : ∀ x, ‖fderiv ℝ v x‖ ≤ C₂ * ‖fderiv ℝ u x‖ := fun x ↦ calc
    ‖fderiv ℝ v x‖
      = ‖(fderiv ℝ e (u x)).comp (fderiv ℝ u x)‖ := by
      rw [fderiv_comp x e.differentiableAt (hu.differentiable one_ne_zero x)]
    _ ≤ ‖fderiv ℝ e (u x)‖ * ‖fderiv ℝ u x‖ :=
      (fderiv ℝ e (u x)).opNorm_comp_le (fderiv ℝ u x)
    _ = C₂ * ‖fderiv ℝ u x‖ := by simp_rw [e.fderiv, C₂, coe_nnnorm]
  calc eLpNorm u p' μ
      = eLpNorm (e.symm ∘ v) p' μ := by simp_rw [v, Function.comp_def, e.symm_apply_apply]
    _ ≤ C₁ • eLpNorm v p' μ := by
      apply eLpNorm_le_nnreal_smul_eLpNorm_of_ae_le_mul
      · exact (e.symm.continuous.comp hv.continuous).aestronglyMeasurable
      exact Eventually.of_forall (fun x ↦ (e.symm : F' →L[ℝ] F).le_opNNNorm _)
    _ = C₁ * eLpNorm v p' μ := rfl
    _ ≤ C₁ * C * eLpNorm (fderiv ℝ v) p μ := by rw [mul_assoc]; gcongr
    _ ≤ C₁ * C * (C₂ * eLpNorm (fderiv ℝ u) p μ) := by
      gcongr
      exact eLpNorm_le_nnreal_smul_eLpNorm_of_ae_le_mul
        (hv.continuous_fderiv one_ne_zero).aestronglyMeasurable (Eventually.of_forall h4v) p
    _ = SNormLESNormFDerivOfEqConst F μ p * eLpNorm (fderiv ℝ u) p μ := by
      simp_rw [C₂, C₁, C, e, SNormLESNormFDerivOfEqConst]
      push_cast
      simp_rw [mul_assoc]


variable (F) in
/-- The constant factor occurring in the conclusion of `eLpNorm_le_eLpNorm_fderiv_of_le`.
It only depends on `F`, `μ`, `s`, `p` and `q`. -/
irreducible_def eLpNormLESNormFDerivOfLeConst [FiniteDimensional ℝ F] (s : Set E) (p q : ℝ≥0) :
    ℝ≥0 :=
  let p' : ℝ≥0 := (p⁻¹ - (finrank ℝ E : ℝ≥0)⁻¹)⁻¹
  (μ s).toNNReal ^ (1 / q - 1 / p' : ℝ) * SNormLESNormFDerivOfEqConst F μ p


/-- The **Gagliardo-Nirenberg-Sobolev inequality**.  Let `u` be a continuously differentiable
function `u` supported in a bounded set `s` in a normed space `E` of finite dimension
`n`, equipped with Haar measure, and let `1 < p < n` and `0 < q ≤ (p⁻¹ - (finrank ℝ E : ℝ)⁻¹)⁻¹`.
Then the `L^q` norm of `u` is bounded above by a constant times the `Lᵖ` norm of
the Fréchet derivative of `u`.

Note: The codomain of `u` needs to be a finite-dimensional normed space.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variant4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variant4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7146d1d3bcc835725b3310445922e60c3b456c1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
