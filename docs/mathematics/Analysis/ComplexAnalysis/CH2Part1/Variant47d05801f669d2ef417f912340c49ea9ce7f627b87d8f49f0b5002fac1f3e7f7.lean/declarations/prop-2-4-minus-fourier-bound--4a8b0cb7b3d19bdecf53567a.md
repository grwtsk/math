# prop_2_4_minus_fourier_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0795e81e-a1c4-bd1c-4d1a-1ed4b10af734",
  "kind": "lemma",
  "lexical_name": "prop_2_4_minus_fourier_bound",
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
  "slug": "prop-2-4-minus-fourier-bound--4a8b0cb7b3d19bdecf53567a",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1024,
    "line": 993,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a8b0cb7b3d19bdecf53567a3bb00baaeb7bbe32a374ffae0cb6b22464c94d52",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0795e81e-a1c4-bd1c-4d1a-1ed4b10af734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 993–1024.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma prop_2_4_minus_fourier_bound {T β σ : ℝ} (hT : 0 < T) (hβ : 1 < β) (hσ : σ ≠ 1)
  {φ_minus : ℝ → ℂ} (hφ_int : Integrable φ_minus)
  (hφ_Fourier : ∃ C : ℝ, ∀ y : ℝ, y ≠ 0 → ‖𝓕 φ_minus y‖ ≤ C / |y| ^ β)
  (hFourier_le_I : ∀ y : ℝ, (𝓕 φ_minus y).re ≤ I' ((2 * π * (σ - 1)) / T) y)
  (x : ℝ) (hx : 1 ≤ x) :
  (((2 * π * (x ^ (1 - σ) : ℝ) / T) : ℂ) * (∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ_minus y)).re ≤
    if σ < 1 then 1 / (1 - σ) else 0 := by
  have h_int_Fphi : Integrable (𝓕 φ_minus) := fourier_integrable_of_rpow_decay hβ hφ_int hφ_Fourier
  let lambda := (2 * π * (σ - 1)) / T
  let u0 := -T * log x / (2 * π)
  have hu0 : u0 ≤ 0 := by
    dsimp [u0]; rw [neg_mul, neg_div]; apply neg_nonpos.mpr
    apply div_nonneg (mul_nonneg hT.le (log_nonneg hx)) (by positivity)
  have h_re_mul : (((2 * π * (x ^ (1 - σ) : ℝ) / T) : ℂ) * (∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ_minus y)).re =
      (2 * π * (x ^ (1 - σ) : ℝ) / T) * (∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ_minus y).re := by
    simp
  have h_re_int : (∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ_minus y).re =
      ∫ y in Set.Iic (-T * log x / (2 * π)), (𝓕 φ_minus y).re := (integral_re h_int_Fphi.integrableOn).symm
  rw [h_re_mul, h_re_int]
  have h_int_le : ∫ y in Set.Iic (-T * log x / (2 * π)), (𝓕 φ_minus y).re ≤
      ∫ y in Set.Iic (-T * log x / (2 * π)), I' ((2 * π * (σ - 1)) / T) y :=
    MeasureTheory.setIntegral_mono_on₀ h_int_Fphi.re.integrableOn
      (integrableOn_I'_Iic (div_ne_zero (mul_ne_zero (by positivity) (sub_ne_zero.mpr hσ)) hT.ne') hu0)
      measurableSet_Iic.nullMeasurableSet (fun y _ ↦ hFourier_le_I y)
  have h_I_int : (2 * π * (x ^ (1 - σ) : ℝ) / T) * ∫ y in Set.Iic (-T * log x / (2 * π)), I' ((2 * π * (σ - 1)) / T) y ≤
      (if σ < 1 then 1 / (1 - σ) else 0) :=
    (integral_Iic_I'_eq hT hσ x hx).le
  calc (2 * π * (x ^ (1 - σ) : ℝ) / T) * ∫ y in Set.Iic (-T * log x / (2 * π)), (𝓕 φ_minus y).re
    _ ≤ (2 * π * (x ^ (1 - σ) : ℝ) / T) * ∫ y in Set.Iic (-T * log x / (2 * π)), I' ((2 * π * (σ - 1)) / T) y :=
      mul_le_mul_of_nonneg_left h_int_le (by positivity)
    _ ≤ (if σ < 1 then 1 / (1 - σ) else 0) := h_I_int

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L993).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
