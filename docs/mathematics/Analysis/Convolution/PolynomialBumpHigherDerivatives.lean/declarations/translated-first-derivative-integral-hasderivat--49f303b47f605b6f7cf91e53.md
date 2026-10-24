# translated_first_derivative_integral_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bd80a71-b1c4-e788-10df-60767d58d30b",
  "kind": "theorem",
  "lexical_name": "translated_first_derivative_integral_hasDerivAt",
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
  "slug": "translated-first-derivative-integral-hasderivat--49f303b47f605b6f7cf91e53",
  "source": {
    "blob": "fcca4fcb8056a094690ebd5632fc2f2ac635db8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 109,
    "path": "GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49f303b47f605b6f7cf91e53e00c0ab467cba08dfa1bc3f098927d4ce29db960",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bd80a71-b1c4-e788-10df-60767d58d30b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem translated_first_derivative_integral_hasDerivAt {A : ℝ} (hA : 0 < A)
    {g : ℝ → ℝ} (hg : Integrable g) (t : ℝ)
    (hint : Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) (x + t) *
      g x)) :
    Integrable (fun x ↦ secondRepresentative A (x + t) * g x) ∧
      HasDerivAt (fun s ↦ ∫ x : ℝ,
        deriv (normalizedTest explicitSecondDerivative A) (x + s) * g x)
        (∫ x : ℝ, secondRepresentative A (x + t) * g x) t := by
  obtain ⟨K, hK⟩ := actual_first_derivative_lipschitz hA
  have hd := (normalizedTest_contDiff A hA).continuous_deriv_one
  have hm : AEStronglyMeasurable (fun x ↦ secondRepresentative A (x + t)) volume := by
    have hc : Continuous (normalizedSecondInterior A) := by
      change Continuous (fun x : ℝ ↦ normalizedSecondInterior A x)
      dsimp [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior]
      fun_prop
    exact ((hc.stronglyMeasurable.indicator measurableSet_Icc).comp_measurable
      (measurable_id.add_const t)).aestronglyMeasurable
  apply hasDerivAt_integral_of_dominated_loc_of_lip (s := univ)
    (F := fun s x ↦ deriv (normalizedTest explicitSecondDerivative A) (x + s) * g x)
    (x₀ := t)
    (bound := fun x ↦ (K : ℝ) * |g x|) (by simp)
    (Eventually.of_forall fun s ↦
      ((hd.comp (continuous_id.add continuous_const)).aestronglyMeasurable.mul
        hg.aestronglyMeasurable)) hint (hm.mul hg.aestronglyMeasurable)
  · filter_upwards [] with x
    apply LipschitzOnWith.of_dist_le_mul
    intro s _ u _
    simp only [Real.dist_eq, ← sub_mul, abs_mul]
    have hk := hK.dist_le_mul (x + s) (x + u)
    simp only [Real.dist_eq, add_sub_add_left_eq_sub] at hk
    simpa only [Real.coe_nnabs, abs_mul, abs_of_nonneg K.coe_nonneg, abs_abs,
      mul_assoc, mul_comm, mul_left_comm] using mul_le_mul_of_nonneg_right hk (abs_nonneg (g x))
  · exact hg.abs.const_mul (K : ℝ)
  · filter_upwards [volume.ae_ne (-A - t), volume.ae_ne (A - t)] with x hl hr
    have hp := actual_first_derivative_hasDerivAt_off_endpoints hA
      (x := x + t) (by intro h; apply hl; linarith) (by intro h; apply hr; linarith)
    have hs := hp.comp t ((hasDerivAt_id t).const_add x)
    convert! hs.mul_const (g x) using 1
    simp only [mul_one, Pi.mul_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/PolynomialBumpHigherDerivatives.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcca4fcb8056a094690ebd5632fc2f2ac635db8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
