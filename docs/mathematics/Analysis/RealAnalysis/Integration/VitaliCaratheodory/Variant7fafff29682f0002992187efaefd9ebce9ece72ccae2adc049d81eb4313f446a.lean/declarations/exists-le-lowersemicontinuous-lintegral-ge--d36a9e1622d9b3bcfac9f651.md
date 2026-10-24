# exists_le_lowerSemicontinuous_lintegral_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a77a859-c403-c802-6d5c-de8c49e37138",
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
  "slug": "exists-le-lowersemicontinuous-lintegral-ge--d36a9e1622d9b3bcfac9f651",
  "source": {
    "blob": "5fee31dded31ae41ac8cb7ef711a1fb91415f7a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 166,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d36a9e1622d9b3bcfac9f651576f13a415b5b410a10fc43c6d5fce2b804989dd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a77a859-c403-c802-6d5c-de8c49e37138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–202.

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
        (∀ x, eapproxDiff f n x ≤ g x) ∧
          LowerSemicontinuous g ∧
            (∫⁻ x, g x ∂μ) ≤ (∫⁻ x, eapproxDiff f n x ∂μ) + δ n :=
    fun n =>
    SimpleFunc.exists_le_lowerSemicontinuous_lintegral_ge μ (eapproxDiff f n)
      (δpos n).ne'
  choose g f_le_g gcont hg using this
  refine ⟨fun x => ∑' n, g n x, fun x => ?_, ?_, ?_⟩
  · rw [← tsum_eapproxDiff f hf]
    exact ENNReal.tsum_le_tsum fun n => ENNReal.coe_le_coe.2 (f_le_g n x)
  · refine lowerSemicontinuous_tsum fun n => ?_
    exact
      ENNReal.continuous_coe.comp_lowerSemicontinuous (gcont n) fun x y hxy =>
        ENNReal.coe_le_coe.2 hxy
  · calc
      ∫⁻ x, ∑' n : ℕ, g n x ∂μ = ∑' n, ∫⁻ x, g n x ∂μ := by
        rw [lintegral_tsum fun n => (gcont n).measurable.coe_nnreal_ennreal.aemeasurable]
      _ ≤ ∑' n, ((∫⁻ x, eapproxDiff f n x ∂μ) + δ n) := ENNReal.tsum_le_tsum hg
      _ = ∑' n, ∫⁻ x, eapproxDiff f n x ∂μ + ∑' n, δ n := ENNReal.tsum_add
      _ ≤ (∫⁻ x : α, f x ∂μ) + ε := by
        refine add_le_add ?_ hδ.le
        rw [← lintegral_tsum]
        · simp_rw [tsum_eapproxDiff f hf, le_refl]
        · intro n; exact (SimpleFunc.measurable _).coe_nnreal_ennreal.aemeasurable

/-- Given a measurable function `f` with values in `ℝ≥0` in a sigma-finite space, there exists a
lower semicontinuous function `g > f` with integral arbitrarily close to that of `f`.
Formulation in terms of `lintegral`.
Auxiliary lemma for Vitali-Carathéodory theorem `exists_lt_lower_semicontinuous_integral_lt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fee31dded31ae41ac8cb7ef711a1fb91415f7a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
