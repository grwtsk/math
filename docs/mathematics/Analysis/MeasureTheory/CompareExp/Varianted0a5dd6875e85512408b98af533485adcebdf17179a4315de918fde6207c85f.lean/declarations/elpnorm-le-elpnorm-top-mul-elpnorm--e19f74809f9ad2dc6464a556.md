# eLpNorm_le_eLpNorm_top_mul_eLpNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37e5d0a5-2b96-97d4-e3ed-6f7f4aee940a",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_eLpNorm_top_mul_eLpNorm",
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
  "slug": "elpnorm-le-elpnorm-top-mul-elpnorm--e19f74809f9ad2dc6464a556",
  "source": {
    "blob": "b30f60e6cbe03298f63d040e626c201be6cad807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 188,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e19f74809f9ad2dc6464a5568f4b3799a316486487c3ecc2ff0acc1018a89bff",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37e5d0a5-2b96-97d4-e3ed-6f7f4aee940a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_eLpNorm_top_mul_eLpNorm (p : ℝ≥0∞) (f : α → E) {g : α → F}
    (hg : AEStronglyMeasurable g μ) (b : E → F → G) (c : ℝ≥0)
    (h : ∀ᵐ x ∂μ, ‖b (f x) (g x)‖₊ ≤ c * ‖f x‖₊ * ‖g x‖₊) :
    eLpNorm (fun x => b (f x) (g x)) p μ ≤ c * eLpNorm f ∞ μ * eLpNorm g p μ := by
  calc
    eLpNorm (fun x => b (f x) (g x)) p μ ≤ eLpNorm (fun x => (c : ℝ) • ‖f x‖ * ‖g x‖) p μ :=
      eLpNorm_mono_ae_real h
    _ ≤ c * eLpNorm f ∞ μ * eLpNorm g p μ := ?_
  simp only [smul_mul_assoc, ← Pi.smul_def, eLpNorm_const_smul]
  rw [Real.enorm_eq_ofReal c.coe_nonneg, ENNReal.ofReal_coe_nnreal, mul_assoc]
  gcongr
  obtain (rfl | rfl | hp) := ENNReal.trichotomy p
  · simp
  · rw [← eLpNorm_norm f, ← eLpNorm_norm g]
    simp_rw [eLpNorm_exponent_top, eLpNormEssSup_eq_essSup_enorm, enorm_mul, enorm_norm]
    exact ENNReal.essSup_mul_le (‖f ·‖ₑ) (‖g ·‖ₑ)
  obtain ⟨hp₁, hp₂⟩ := ENNReal.toReal_pos_iff.mp hp
  simp_rw [eLpNorm_eq_lintegral_rpow_enorm hp₁.ne' hp₂.ne, eLpNorm_exponent_top, eLpNormEssSup,
    one_div, ENNReal.rpow_inv_le_iff hp, enorm_mul, enorm_norm]
  rw [ENNReal.mul_rpow_of_nonneg (hz := hp.le), ENNReal.rpow_inv_rpow hp.ne',
    ← lintegral_const_mul'' _ (by fun_prop)]
  simp only [← ENNReal.mul_rpow_of_nonneg (hz := hp.le)]
  apply lintegral_mono_ae
  filter_upwards [h, enorm_ae_le_eLpNormEssSup f μ] with x hb hf
  refine ENNReal.rpow_le_rpow ?_ hp.le
  gcongr
  exact hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Varianted0a5dd6875e85512408b98af533485adcebdf17179a4315de918fde6207c85f.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b30f60e6cbe03298f63d040e626c201be6cad807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
