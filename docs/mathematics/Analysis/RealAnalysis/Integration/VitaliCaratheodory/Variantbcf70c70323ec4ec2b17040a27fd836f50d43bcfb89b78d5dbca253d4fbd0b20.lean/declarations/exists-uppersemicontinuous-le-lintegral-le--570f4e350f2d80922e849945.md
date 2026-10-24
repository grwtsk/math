# exists_upperSemicontinuous_le_lintegral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49de46e8-9a32-1c98-a72e-ee6cd389f53e",
  "kind": "theorem",
  "lexical_name": "exists_upperSemicontinuous_le_lintegral_le",
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
  "slug": "exists-uppersemicontinuous-le-lintegral-le--570f4e350f2d80922e849945",
  "source": {
    "blob": "02d7ddf1a4be37c0210eabb8598bc6dc32fd1fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 396,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:570f4e350f2d80922e84994575853d335e409b5d18e50d60fcb0e26ba82c6cd3",
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

Occurrence: `result:49de46e8-9a32-1c98-a72e-ee6cd389f53e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_upperSemicontinuous_le_lintegral_le (f : α → ℝ≥0) (int_f : (∫⁻ x, f x ∂μ) ≠ ∞)
    {ε : ℝ≥0∞} (ε0 : ε ≠ 0) :
    ∃ g : α → ℝ≥0, (∀ x, g x ≤ f x) ∧ UpperSemicontinuous g ∧
      (∫⁻ x, f x ∂μ) ≤ (∫⁻ x, g x ∂μ) + ε := by
  obtain ⟨fs, fs_le_f, int_fs⟩ :
    ∃ fs : α →ₛ ℝ≥0, (∀ x, fs x ≤ f x) ∧ (∫⁻ x, f x ∂μ) ≤ (∫⁻ x, fs x ∂μ) + ε / 2 := by
    -- Porting note: need to name identifier (not `this`), because `conv_rhs at this` errors
    have aux := ENNReal.lt_add_right int_f (ENNReal.half_pos ε0).ne'
    conv_rhs at aux => rw [lintegral_eq_nnreal (fun x => (f x : ℝ≥0∞)) μ]
    erw [ENNReal.biSup_add] at aux <;> [skip; exact ⟨0, fun x => by simp⟩]
    simp only [lt_iSup_iff] at aux
    rcases aux with ⟨fs, fs_le_f, int_fs⟩
    refine' ⟨fs, fun x => by simpa only [ENNReal.coe_le_coe] using fs_le_f x, _⟩
    convert int_fs.le
    rw [← SimpleFunc.lintegral_eq_lintegral]
    rfl
  have int_fs_lt_top : (∫⁻ x, fs x ∂μ) ≠ ∞ := by
    refine' ne_top_of_le_ne_top int_f (lintegral_mono fun x => _)
    simpa only [ENNReal.coe_le_coe] using fs_le_f x
  obtain ⟨g, g_le_fs, gcont, gint⟩ :
    ∃ g : α → ℝ≥0,
      (∀ x, g x ≤ fs x) ∧ UpperSemicontinuous g ∧ (∫⁻ x, fs x ∂μ) ≤ (∫⁻ x, g x ∂μ) + ε / 2 :=
    fs.exists_upperSemicontinuous_le_lintegral_le int_fs_lt_top (ENNReal.half_pos ε0).ne'
  refine' ⟨g, fun x => (g_le_fs x).trans (fs_le_f x), gcont, _⟩
  calc
    (∫⁻ x, f x ∂μ) ≤ (∫⁻ x, fs x ∂μ) + ε / 2 := int_fs
    _ ≤ (∫⁻ x, g x ∂μ) + ε / 2 + ε / 2 := (add_le_add gint le_rfl)
    _ = (∫⁻ x, g x ∂μ) + ε := by rw [add_assoc, ENNReal.add_halves]

#align measure_theory.exists_upper_semicontinuous_le_lintegral_le MeasureTheory.exists_upperSemicontinuous_le_lintegral_le

/-- Given an integrable function `f` with values in `ℝ≥0`, there exists an upper semicontinuous
function `g ≤ f` with integral arbitrarily close to that of `f`. Formulation in terms of
`integral`.
Auxiliary lemma for Vitali-Carathéodory theorem `exists_lt_lower_semicontinuous_integral_lt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02d7ddf1a4be37c0210eabb8598bc6dc32fd1fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
