# Inu_bounds_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2f80296-f3e6-bdb9-b775-fc47feb960b3",
  "kind": "lemma",
  "lexical_name": "Inu_bounds_pos",
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
  "slug": "inu-bounds-pos--01f96fbdffdbeb172ebb8d2f",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4841,
    "line": 4810,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01f96fbdffdbeb172ebb8d2fdab59eb75360e54ca17675100273e25e77848664",
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

Occurrence: `result:f2f80296-f3e6-bdb9-b775-fc47feb960b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4810–4841.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Inu_bounds_pos (ν x : ℝ) (hν : ν > 0) (hx : x > 0) :
    (𝓕 (ϕ_pm ν (-1)) x).re ≤ Inu ν x ∧ Inu ν x ≤ (𝓕 (ϕ_pm ν 1) x).re := by
  have hI : Inu ν x = Real.exp (-ν * x) := if_pos (le_of_lt hx)
  have h_tendsto_plus := (continuous_re.tendsto _).comp (fourier_formula_pos ν 1 hν x hx)
  have h_tendsto_minus := (continuous_re.tendsto _).comp (fourier_formula_pos ν (-1) hν x hx)
  have h_re_eq (ε : ℝ) : (𝓕 (ϕ_pm ν ε) x - Complex.exp (-ν * x)).re = (𝓕 (ϕ_pm ν ε) x).re - Inu ν x := by
    rw [hI, Complex.sub_re]; simp only [neg_mul, sub_right_inj]; norm_cast
  rw [h_re_eq] at h_tendsto_plus h_tendsto_minus
  have hpos : 0 ≤ (𝓕 (ϕ_pm ν 1) x).re - Inu ν x := by
    apply ge_of_tendsto h_tendsto_plus
    apply Filter.Eventually.of_forall; intro T
    simp only [Function.comp_apply]
    rw [show (-↑(Real.sin (π * x)) ^ 2 / ↑π ^ 2 : ℂ) = ↑(-(Real.sin (π * x)) ^ 2 / π ^ 2) by push_cast; ring]
    rw [Complex.re_ofReal_mul, integral_re_B_mul_exp_sub]
    apply mul_nonneg_of_nonpos_of_nonpos
    · exact div_nonpos_of_nonpos_of_nonneg (neg_nonpos_of_nonneg (pow_two_nonneg _)) (pow_two_nonneg _)
    · apply integral_B_diff_mul_exp_nonpos (fun t ↦ ↑ν - ↑t); intro t ht
      have h_mono := B_plus_mono (show ν - t ≤ ν by simp only [Set.mem_Icc] at ht; linarith)
      push_cast at h_mono; exact h_mono
  have hneg : (𝓕 (ϕ_pm ν (-1)) x).re - Inu ν x ≤ 0 := by
    apply le_of_tendsto h_tendsto_minus
    apply Filter.Eventually.of_forall; intro T
    simp only [Function.comp_apply]
    rw [show (-↑(Real.sin (π * x)) ^ 2 / ↑π ^ 2 : ℂ) = ↑(-(Real.sin (π * x)) ^ 2 / π ^ 2) by push_cast; ring]
    rw [Complex.re_ofReal_mul, integral_re_B_mul_exp_sub]
    apply mul_nonpos_of_nonpos_of_nonneg
    · exact div_nonpos_of_nonpos_of_nonneg (neg_nonpos_of_nonneg (pow_two_nonneg _)) (pow_two_nonneg _)
    · apply integral_B_diff_mul_exp_nonneg (fun t ↦ ↑ν - ↑t); intro t ht
      have h_mono := B_minus_mono (show ν - t ≤ ν by simp only [Set.mem_Icc] at ht; linarith)
      push_cast at h_mono; exact h_mono
  exact ⟨by linarith, by linarith⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L4810).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
