# hasFDerivAt_fourierIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eac29402-4be9-a67c-aa4d-0a44dfb3093c",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_fourierIntegral",
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
  "slug": "hasfderivat-fourierintegral--ff8d1f947b611e0924b52b0a",
  "source": {
    "blob": "9aaf9246a748d42ddbf7989048cd3267580295bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 221,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff8d1f947b611e0924b52b0a77d51026b4cde6d0d742d04131b0a2031d24ea9f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eac29402-4be9-a67c-aa4d-0a44dfb3093c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_fourierIntegral
    [MeasurableSpace V] [BorelSpace V] [SecondCountableTopology V] {μ : Measure V}
    (hf : Integrable f μ) (hf' : Integrable (fun v : V ↦ ‖v‖ * ‖f v‖) μ) (w : W) :
    HasFDerivAt (fourierIntegral 𝐞 μ L.toLinearMap₁₂ f)
      (fourierIntegral 𝐞 μ L.toLinearMap₁₂ (fourierSMulRight L f) w) w := by
  let F : W → V → E := fun w' v ↦ 𝐞 (-L v w') • f v
  let F' : W → V → W →L[ℝ] E := fun w' v ↦ 𝐞 (-L v w') • fourierSMulRight L f v
  let B : V → ℝ := fun v ↦ 2 * π * ‖L‖ * ‖v‖ * ‖f v‖
  have h0 (w' : W) : Integrable (F w') μ :=
    (fourierIntegral_convergent_iff continuous_fourierChar
      (by apply L.continuous₂ : Continuous (fun p : V × W ↦ L.toLinearMap₁₂ p.1 p.2)) w').2 hf
  have h1 : ∀ᶠ w' in 𝓝 w, AEStronglyMeasurable (F w') μ :=
    Eventually.of_forall (fun w' ↦ (h0 w').aestronglyMeasurable)
  have h3 : AEStronglyMeasurable (F' w) μ := by
    refine .fun_smul ?_ hf.1.fourierSMulRight
    refine (continuous_fourierChar.comp ?_).aestronglyMeasurable
    fun_prop
  have h4 : (∀ᵐ v ∂μ, ∀ (w' : W), w' ∈ Metric.ball w 1 → ‖F' w' v‖ ≤ B v) := by
    filter_upwards with v w' _
    rw [Circle.norm_smul _ (fourierSMulRight L f v)]
    exact norm_fourierSMulRight_le L f v
  have h5 : Integrable B μ := by simpa only [← mul_assoc] using hf'.const_mul (2 * π * ‖L‖)
  have h6 : ∀ᵐ v ∂μ, ∀ w', w' ∈ Metric.ball w 1 → HasFDerivAt (fun x ↦ F x v) (F' w' v) w' :=
    ae_of_all _ (fun v w' _ ↦ hasFDerivAt_fourierChar_smul L f v w')
  exact hasFDerivAt_integral_of_dominated_of_fderiv_le (Metric.ball_mem_nhds _ one_pos) h1 (h0 w)
    h3 h4 h5 h6

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aaf9246a748d42ddbf7989048cd3267580295bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
