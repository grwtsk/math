# integral_fun_mul_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08ac0c7e-0c1d-0428-e31d-afd9d0dbaf40",
  "kind": "theorem",
  "lexical_name": "integral_fun_mul_eq_integral",
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
  "slug": "integral-fun-mul-eq-integral--815a80e65114ace5b76535b9",
  "source": {
    "blob": "8a70af88a789107651762e23caa5959e45c8a057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 174,
    "path": "GRWTSK/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:815a80e65114ace5b76535b9dd9d6b33f67749f9693472f88cfbcd45ad77a699",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08ac0c7e-0c1d-0428-e31d-afd9d0dbaf40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_fun_mul_eq_integral [IsFiniteMeasure ℙ] {X : Ω → E} [HasPDF X ℙ μ] {f : E → ℝ}
    (hf : Measurable f) : ∫ x, f x * (pdf X ℙ μ x).toReal ∂μ = ∫ x, f (X x) ∂ℙ := by
  by_cases hpdf : Integrable (fun x => f x * (pdf X ℙ μ x).toReal) μ
  · rw [← integral_map (HasPDF.measurable X ℙ μ).aemeasurable hf.aestronglyMeasurable,
      map_eq_withDensity_pdf X ℙ μ, integral_eq_lintegral_pos_part_sub_lintegral_neg_part hpdf,
      integral_eq_lintegral_pos_part_sub_lintegral_neg_part,
      lintegral_withDensity_eq_lintegral_mul _ (measurable_pdf X ℙ μ) hf.neg.ennreal_ofReal,
      lintegral_withDensity_eq_lintegral_mul _ (measurable_pdf X ℙ μ) hf.ennreal_ofReal]
    · congr 2
      · have : ∀ x, ENNReal.ofReal (f x * (pdf X ℙ μ x).toReal) =
            ENNReal.ofReal (pdf X ℙ μ x).toReal * ENNReal.ofReal (f x) := fun x ↦ by
          rw [mul_comm, ENNReal.ofReal_mul ENNReal.toReal_nonneg]
        simp_rw [this]
        exact lintegral_congr_ae (Filter.EventuallyEq.mul ofReal_toReal_ae_eq (ae_eq_refl _))
      · have :
          ∀ x,
            ENNReal.ofReal (-(f x * (pdf X ℙ μ x).toReal)) =
              ENNReal.ofReal (pdf X ℙ μ x).toReal * ENNReal.ofReal (-f x) := by
          intro x
          rw [neg_mul_eq_neg_mul, mul_comm, ENNReal.ofReal_mul ENNReal.toReal_nonneg]
        simp_rw [this]
        exact lintegral_congr_ae (Filter.EventuallyEq.mul ofReal_toReal_ae_eq (ae_eq_refl _))
    · refine' ⟨hf.aestronglyMeasurable, _⟩
      rw [HasFiniteIntegral,
        lintegral_withDensity_eq_lintegral_mul _ (measurable_pdf _ _ _)
          hf.nnnorm.coe_nnreal_ennreal]
      have : (fun x => (pdf X ℙ μ * fun x => (‖f x‖₊ : ℝ≥0∞)) x) =ᵐ[μ]
          fun x => ‖f x * (pdf X ℙ μ x).toReal‖₊ := by
        simp_rw [← smul_eq_mul, nnnorm_smul, ENNReal.coe_mul]
        rw [smul_eq_mul, mul_comm]
        refine' Filter.EventuallyEq.mul (ae_eq_refl _) (ae_eq_trans ofReal_toReal_ae_eq.symm _)
        simp only [Real.ennnorm_eq_ofReal ENNReal.toReal_nonneg, ae_eq_refl]
      rw [lintegral_congr_ae this]
      exact hpdf.2
  · rw [integral_undef hpdf, integral_undef]
    rwa [← integrable_iff_integrable_mul_pdf hf] at hpdf
#align measure_theory.pdf.integral_fun_mul_eq_integral MeasureTheory.pdf.integral_fun_mul_eq_integral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a70af88a789107651762e23caa5959e45c8a057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
