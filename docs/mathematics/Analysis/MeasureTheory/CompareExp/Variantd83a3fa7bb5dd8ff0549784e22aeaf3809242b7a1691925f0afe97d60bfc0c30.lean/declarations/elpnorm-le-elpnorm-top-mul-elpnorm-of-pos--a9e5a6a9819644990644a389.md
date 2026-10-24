# eLpNorm_le_eLpNorm_top_mul_eLpNorm_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca89c56b1e589d63ce7c4f6721177ccf1e147411",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbd9bb1e-652e-575c-7248-0ccbabbf8b03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f65db639-298f-6eee-f9d8-7a968a35b357",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_eLpNorm_top_mul_eLpNorm_of_pos",
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
  "slug": "elpnorm-le-elpnorm-top-mul-elpnorm-of-pos--a9e5a6a9819644990644a389",
  "source": {
    "blob": "ca89c56b1e589d63ce7c4f6721177ccf1e147411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 247,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9e5a6a9819644990644a389c48418fe8ea2da9b4a069ee629b6e5694be4bff0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f65db639-298f-6eee-f9d8-7a968a35b357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_eLpNorm_top_mul_eLpNorm_of_pos (p : ℝ≥0∞)
    (b : E → F → G) (c : ℝ≥0) (hb : Continuous b.uncurry)
    (h : ∀ᵐ x ∂μ, ‖b (f x) (g x)‖₊ ≤ c * ‖f x‖₊ * ‖g x‖₊) (hp : 0 < p) :
    eLpNorm (fun x => b (f x) (g x)) p μ ≤ c * eLpNorm f ∞ μ * eLpNorm g p μ := by
  by_cases hfg : AEStronglyMeasurable f μ ∧ AEStronglyMeasurable g μ; swap
  · apply eLpNorm_le_eLpNorm_mul_eLpNorm_of_not_aestronglyMeasurable ∞ p p b c h hfg
      top_ne_zero hp.ne'
  rcases hfg with ⟨hf, hg⟩
  have hbf : AEStronglyMeasurable (fun x => b (f x) (g x)) μ :=
    Continuous.comp_aestronglyMeasurable₂ hb hf hg
  calc
    eLpNorm (fun x => b (f x) (g x)) p μ ≤ eLpNorm (fun x => (c : ℝ) • ‖f x‖ * ‖g x‖) p μ :=
      eLpNorm_mono_ae_real hbf h
    _ ≤ c * eLpNorm f ∞ μ * eLpNorm g p μ := ?_
  have hprod : AEStronglyMeasurable (fun i ↦ ‖f i‖ * ‖g i‖) μ := hf.norm.mul hg.norm
  simp only [smul_mul_assoc, ← Pi.smul_def, eLpNorm_const_smul]
  rw [Real.enorm_eq_ofReal c.coe_nonneg, ENNReal.ofReal_coe_nnreal, mul_assoc]
  gcongr
  obtain (rfl | rfl | hp) := ENNReal.trichotomy p
  · simp [hf, hg, hprod]
  · rw [← eLpNorm_norm f hf, ← eLpNorm_norm g hg]
    rw [eLpNorm_exponent_top hprod, eLpNorm_exponent_top hf.norm,
      eLpNorm_exponent_top hg.norm]
    simp only [eLpNormEssSup_eq_essSup_enorm, enorm_mul, enorm_norm]
    exact ENNReal.essSup_mul_le (‖f ·‖ₑ) (‖g ·‖ₑ)
  obtain ⟨hp₁, hp₂⟩ := ENNReal.toReal_pos_iff.mp hp
  rw [eLpNorm_eq_lintegral_rpow_enorm_toReal hp₁.ne' hp₂.ne hprod,
    eLpNorm_eq_lintegral_rpow_enorm_toReal hp₁.ne' hp₂.ne hg,
    eLpNorm_exponent_top hf]
  simp_rw [
    eLpNormEssSup, one_div, ENNReal.rpow_inv_le_iff hp, enorm_mul, enorm_norm]
  rw [ENNReal.mul_rpow_of_nonneg (hz := hp.le), ENNReal.rpow_inv_rpow hp.ne',
    ← lintegral_const_mul'' _ (by fun_prop)]
  simp only [← ENNReal.mul_rpow_of_nonneg (hz := hp.le)]
  apply lintegral_mono_ae
  filter_upwards [h, enorm_ae_le_eLpNormEssSup f μ] with x hb hf
  gcongr
  exact hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Variantd83a3fa7bb5dd8ff0549784e22aeaf3809242b7a1691925f0afe97d60bfc0c30.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca89c56b1e589d63ce7c4f6721177ccf1e147411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
