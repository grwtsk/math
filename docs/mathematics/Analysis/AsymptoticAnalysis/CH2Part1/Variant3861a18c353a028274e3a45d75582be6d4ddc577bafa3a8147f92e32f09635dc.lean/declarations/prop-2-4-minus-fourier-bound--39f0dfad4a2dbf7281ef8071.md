# prop_2_4_minus_fourier_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 982,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:688b22ec-ea9e-0945-b4b8-f48f716afd31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e66dab30-739d-08dc-0c99-841a9ba16c18",
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
  "slug": "prop-2-4-minus-fourier-bound--39f0dfad4a2dbf7281ef8071",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1013,
    "line": 982,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39f0dfad4a2dbf7281ef807192461ca7b7c77b3827c35f5463fb463e179747d5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e66dab30-739d-08dc-0c99-841a9ba16c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 982–1013.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L982).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
