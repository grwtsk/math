# exists_lt_lowerSemicontinuous_lintegral_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:992fae0d-e7fb-78f5-c0de-4448a33a9364",
  "kind": "theorem",
  "lexical_name": "exists_lt_lowerSemicontinuous_lintegral_ge",
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
  "slug": "exists-lt-lowersemicontinuous-lintegral-ge--f7f689d16a374851cab420e0",
  "source": {
    "blob": "02d7ddf1a4be37c0210eabb8598bc6dc32fd1fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 212,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7f689d16a374851cab420e0aac77b50ad9d3be9cd3b92cddcf5ce30cc352989",
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

Occurrence: `result:992fae0d-e7fb-78f5-c0de-4448a33a9364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_lowerSemicontinuous_lintegral_ge [SigmaFinite μ] (f : α → ℝ≥0)
    (fmeas : Measurable f) {ε : ℝ≥0∞} (ε0 : ε ≠ 0) :
    ∃ g : α → ℝ≥0∞,
      (∀ x, (f x : ℝ≥0∞) < g x) ∧ LowerSemicontinuous g ∧ (∫⁻ x, g x ∂μ) ≤ (∫⁻ x, f x ∂μ) + ε := by
  have : ε / 2 ≠ 0 := (ENNReal.half_pos ε0).ne'
  rcases exists_pos_lintegral_lt_of_sigmaFinite μ this with ⟨w, wpos, wmeas, wint⟩
  let f' x := ((f x + w x : ℝ≥0) : ℝ≥0∞)
  rcases exists_le_lowerSemicontinuous_lintegral_ge μ f' (fmeas.add wmeas).coe_nnreal_ennreal
      this with
    ⟨g, le_g, gcont, gint⟩
  refine' ⟨g, fun x => _, gcont, _⟩
  · calc
      (f x : ℝ≥0∞) < f' x := by
        simpa only [← ENNReal.coe_lt_coe, add_zero] using add_lt_add_left (wpos x) (f x)
      _ ≤ g x := le_g x
  · calc
      (∫⁻ x : α, g x ∂μ) ≤ (∫⁻ x : α, f x + w x ∂μ) + ε / 2 := gint
      _ = ((∫⁻ x : α, f x ∂μ) + ∫⁻ x : α, w x ∂μ) + ε / 2 := by
        rw [lintegral_add_right _ wmeas.coe_nnreal_ennreal]
      _ ≤ (∫⁻ x : α, f x ∂μ) + ε / 2 + ε / 2 := (add_le_add_right (add_le_add_left wint.le _) _)
      _ = (∫⁻ x : α, f x ∂μ) + ε := by rw [add_assoc, ENNReal.add_halves]

#align measure_theory.exists_lt_lower_semicontinuous_lintegral_ge MeasureTheory.exists_lt_lowerSemicontinuous_lintegral_ge

/-- Given an almost everywhere measurable function `f` with values in `ℝ≥0` in a sigma-finite space,
there exists a lower semicontinuous function `g > f` with integral arbitrarily close to that of `f`.
Formulation in terms of `lintegral`.
Auxiliary lemma for Vitali-Carathéodory theorem `exists_lt_lower_semicontinuous_integral_lt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variantbcf70c70323ec4ec2b17040a27fd836f50d43bcfb89b78d5dbca253d4fbd0b20.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02d7ddf1a4be37c0210eabb8598bc6dc32fd1fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
