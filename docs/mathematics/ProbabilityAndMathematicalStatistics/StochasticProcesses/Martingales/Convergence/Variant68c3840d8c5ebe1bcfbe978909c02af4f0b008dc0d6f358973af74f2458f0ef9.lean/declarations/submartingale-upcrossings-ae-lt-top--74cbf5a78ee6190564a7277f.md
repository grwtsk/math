# Submartingale.upcrossings_ae_lt_top'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7705bd6-3841-ae10-0aa4-9541b77675e9",
  "kind": "theorem",
  "lexical_name": "Submartingale.upcrossings_ae_lt_top'",
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
  "slug": "submartingale-upcrossings-ae-lt-top--74cbf5a78ee6190564a7277f",
  "source": {
    "blob": "2b11d6d178c04ff0cf0a9d71511894b86008c39d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 165,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74cbf5a78ee6190564a7277f1d85b8975d9c450ac4b712174e35b5b033f6444e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7705bd6-3841-ae10-0aa4-9541b77675e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.upcrossings_ae_lt_top' [IsFiniteMeasure μ] (hf : Submartingale f ℱ μ)
    (hbdd : ∀ n, snorm (f n) 1 μ ≤ R) (hab : a < b) : ∀ᵐ ω ∂μ, upcrossings a b f ω < ∞ := by
  refine' ae_lt_top (hf.adapted.measurable_upcrossings hab) _
  have := hf.mul_lintegral_upcrossings_le_lintegral_pos_part a b
  rw [mul_comm, ← ENNReal.le_div_iff_mul_le] at this
  · refine' (lt_of_le_of_lt this (ENNReal.div_lt_top _ _)).ne
    · have hR' : ∀ n, ∫⁻ ω, ‖f n ω - a‖₊ ∂μ ≤ R + ‖a‖₊ * μ Set.univ := by
        simp_rw [snorm_one_eq_lintegral_nnnorm] at hbdd
        intro n
        refine' (lintegral_mono _ : ∫⁻ ω, ‖f n ω - a‖₊ ∂μ ≤ ∫⁻ ω, ‖f n ω‖₊ + ‖a‖₊ ∂μ).trans _
        · intro ω
          simp_rw [sub_eq_add_neg, ← nnnorm_neg a, ← ENNReal.coe_add, ENNReal.coe_le_coe]
          exact nnnorm_add_le _ _
        · simp_rw [lintegral_add_right _ measurable_const, lintegral_const]
          exact add_le_add (hbdd _) le_rfl
      refine' ne_of_lt (iSup_lt_iff.2 ⟨R + ‖a‖₊ * μ Set.univ, ENNReal.add_lt_top.2
        ⟨ENNReal.coe_lt_top, ENNReal.mul_lt_top ENNReal.coe_lt_top.ne (measure_ne_top _ _)⟩,
        fun n => le_trans _ (hR' n)⟩)
      refine' lintegral_mono fun ω => _
      rw [ENNReal.ofReal_le_iff_le_toReal, ENNReal.coe_toReal, coe_nnnorm]
      by_cases hnonneg : 0 ≤ f n ω - a
      · rw [LatticeOrderedGroup.pos_of_nonneg _ hnonneg, Real.norm_eq_abs,
          abs_of_nonneg hnonneg]
      · rw [LatticeOrderedGroup.pos_of_nonpos _ (not_le.1 hnonneg).le]
        exact norm_nonneg _
      · simp only [Ne.def, ENNReal.coe_ne_top, not_false_iff]
    · simp only [hab, Ne.def, ENNReal.ofReal_eq_zero, sub_nonpos, not_le]
  · simp only [hab, Ne.def, ENNReal.ofReal_eq_zero, sub_nonpos, not_le, true_or_iff]
  · simp only [Ne.def, ENNReal.ofReal_ne_top, not_false_iff, true_or_iff]
#align measure_theory.submartingale.upcrossings_ae_lt_top' MeasureTheory.Submartingale.upcrossings_ae_lt_top'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b11d6d178c04ff0cf0a9d71511894b86008c39d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
