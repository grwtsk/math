# exists_upperSemicontinuous_le_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ac5cea8-fc81-3624-9fbf-31224bdb0c73",
  "kind": "theorem",
  "lexical_name": "exists_upperSemicontinuous_le_integral_le",
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
  "slug": "exists-uppersemicontinuous-le-integral-le--90404be0c420a2a87e7f98be",
  "source": {
    "blob": "02d7ddf1a4be37c0210eabb8598bc6dc32fd1fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 431,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90404be0c420a2a87e7f98befbfa069da7d1bb6b0006ce2dc5ad2c21d6758961",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ac5cea8-fc81-3624-9fbf-31224bdb0c73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_upperSemicontinuous_le_integral_le (f : α → ℝ≥0)
    (fint : Integrable (fun x => (f x : ℝ)) μ) {ε : ℝ} (εpos : 0 < ε) :
    ∃ g : α → ℝ≥0,
      (∀ x, g x ≤ f x) ∧
      UpperSemicontinuous g ∧
      Integrable (fun x => (g x : ℝ)) μ ∧ (∫ x, (f x : ℝ) ∂μ) - ε ≤ ∫ x, ↑(g x) ∂μ := by
  lift ε to ℝ≥0 using εpos.le
  rw [NNReal.coe_pos, ← ENNReal.coe_pos] at εpos
  have If : (∫⁻ x, f x ∂μ) < ∞ := hasFiniteIntegral_iff_ofNNReal.1 fint.hasFiniteIntegral
  rcases exists_upperSemicontinuous_le_lintegral_le f If.ne εpos.ne' with ⟨g, gf, gcont, gint⟩
  have Ig : (∫⁻ x, g x ∂μ) < ∞ := by
    refine' lt_of_le_of_lt (lintegral_mono fun x => _) If
    simpa using gf x
  refine' ⟨g, gf, gcont, _, _⟩
  · refine'
      Integrable.mono fint gcont.measurable.coe_nnreal_real.aemeasurable.aestronglyMeasurable _
    exact Filter.eventually_of_forall fun x => by simp [gf x]
  · rw [integral_eq_lintegral_of_nonneg_ae, integral_eq_lintegral_of_nonneg_ae]
    · rw [sub_le_iff_le_add]
      convert ENNReal.toReal_mono _ gint
      · simp
      · rw [ENNReal.toReal_add Ig.ne ENNReal.coe_ne_top]; simp
      · simpa using Ig.ne
    · apply Filter.eventually_of_forall; simp
    · exact gcont.measurable.coe_nnreal_real.aemeasurable.aestronglyMeasurable
    · apply Filter.eventually_of_forall; simp
    · exact fint.aestronglyMeasurable
#align measure_theory.exists_upper_semicontinuous_le_integral_le MeasureTheory.exists_upperSemicontinuous_le_integral_le

/-! ### Vitali-Carathéodory theorem -/


/-- **Vitali-Carathéodory Theorem**: given an integrable real function `f`, there exists an
integrable function `g > f` which is lower semicontinuous, with integral arbitrarily close
to that of `f`. This function has to be `EReal`-valued in general. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02d7ddf1a4be37c0210eabb8598bc6dc32fd1fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
