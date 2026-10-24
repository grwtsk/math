# exists_le_lowerSemicontinuous_lintegral_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d80913873fa0b783accfad293d215b8870aad78b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0d1810f-7252-a31d-3cbe-71c55f9ba1ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:612071c4-b853-33fe-8c6b-061e0de62d2a",
  "kind": "theorem",
  "lexical_name": "exists_le_lowerSemicontinuous_lintegral_ge",
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
  "slug": "exists-le-lowersemicontinuous-lintegral-ge--30d2550d423fb10fed9c3ffc",
  "source": {
    "blob": "d80913873fa0b783accfad293d215b8870aad78b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30d2550d423fb10fed9c3ffcdcb39b9c450aee2d5646b0fb515dd2bae6eaee03",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:612071c4-b853-33fe-8c6b-061e0de62d2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_le_lowerSemicontinuous_lintegral_ge (f : α → ℝ≥0∞) (hf : Measurable f) {ε : ℝ≥0∞}
    (εpos : ε ≠ 0) :
    ∃ g : α → ℝ≥0∞,
      (∀ x, f x ≤ g x) ∧ LowerSemicontinuous g ∧ (∫⁻ x, g x ∂μ) ≤ (∫⁻ x, f x ∂μ) + ε := by
  rcases ENNReal.exists_pos_sum_of_countable' εpos ℕ with ⟨δ, δpos, hδ⟩
  have :
    ∀ n,
      ∃ g : α → ℝ≥0,
        (∀ x, SimpleFunc.eapproxDiff f n x ≤ g x) ∧
          LowerSemicontinuous g ∧
            (∫⁻ x, g x ∂μ) ≤ (∫⁻ x, SimpleFunc.eapproxDiff f n x ∂μ) + δ n :=
    fun n =>
    SimpleFunc.exists_le_lowerSemicontinuous_lintegral_ge μ (SimpleFunc.eapproxDiff f n)
      (δpos n).ne'
  choose g f_le_g gcont hg using this
  refine' ⟨fun x => ∑' n, g n x, fun x => _, _, _⟩
  · rw [← SimpleFunc.tsum_eapproxDiff f hf]
    exact ENNReal.tsum_le_tsum fun n => ENNReal.coe_le_coe.2 (f_le_g n x)
  · refine' lowerSemicontinuous_tsum fun n => _
    exact
      ENNReal.continuous_coe.comp_lowerSemicontinuous (gcont n) fun x y hxy =>
        ENNReal.coe_le_coe.2 hxy
  · calc
      ∫⁻ x, ∑' n : ℕ, g n x ∂μ = ∑' n, ∫⁻ x, g n x ∂μ := by
        rw [lintegral_tsum fun n => (gcont n).measurable.coe_nnreal_ennreal.aemeasurable]
      _ ≤ ∑' n, ((∫⁻ x, SimpleFunc.eapproxDiff f n x ∂μ) + δ n) := (ENNReal.tsum_le_tsum hg)
      _ = ∑' n, ∫⁻ x, SimpleFunc.eapproxDiff f n x ∂μ + ∑' n, δ n := ENNReal.tsum_add
      _ ≤ (∫⁻ x : α, f x ∂μ) + ε := by
        refine' add_le_add _ hδ.le
        rw [← lintegral_tsum]
        · simp_rw [SimpleFunc.tsum_eapproxDiff f hf, le_refl]
        · intro n; exact (SimpleFunc.measurable _).coe_nnreal_ennreal.aemeasurable

#align measure_theory.exists_le_lower_semicontinuous_lintegral_ge MeasureTheory.exists_le_lowerSemicontinuous_lintegral_ge

/-- Given a measurable function `f` with values in `ℝ≥0` in a sigma-finite space, there exists a
lower semicontinuous function `g > f` with integral arbitrarily close to that of `f`.
Formulation in terms of `lintegral`.
Auxiliary lemma for Vitali-Carathéodory theorem `exists_lt_lower_semicontinuous_integral_lt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d80913873fa0b783accfad293d215b8870aad78b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
