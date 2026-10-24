# QuotientAddGroup.integral_mul_eq_integral_automorphize_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 446,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28d1076d-021a-ce49-6782-a94bad707a44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:363fb2af-1437-6fb6-049a-bbbf8a8927ac",
  "kind": "lemma",
  "lexical_name": "QuotientAddGroup.integral_mul_eq_integral_automorphize_mul",
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
  "slug": "quotientaddgroup-integral-mul-eq-integral-automorphize-mul--107fd5c9e8617bdb2e584393",
  "source": {
    "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 446,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:107fd5c9e8617bdb2e5843935da7b5dc41113fdcb8c9663ec14bfa0e6a58e9c7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:363fb2af-1437-6fb6-049a-bbbf8a8927ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuotientAddGroup.integral_mul_eq_integral_automorphize_mul {K : Type*} [NormedField K]
    [NormedSpace ℝ K] [μ'.IsAddRightInvariant] {f : G' → K}
    (f_ℒ_1 : Integrable f μ') {g : G' ⧸ Γ' → K} (hg : AEStronglyMeasurable g μ_𝓕)
    (g_ℒ_infinity : essSup (‖g ·‖ₑ) μ_𝓕 ≠ ∞)
    (F_ae_measurable : AEStronglyMeasurable (QuotientAddGroup.automorphize f) μ_𝓕) :
    ∫ x : G', g (x : G' ⧸ Γ') * (f x) ∂μ'
      = ∫ x : G' ⧸ Γ', g x * (QuotientAddGroup.automorphize f x) ∂μ_𝓕 := by
  let π : G' → G' ⧸ Γ' := QuotientAddGroup.mk
  have meas_π : Measurable π := continuous_quotient_mk'.measurable
  have H₀ : QuotientAddGroup.automorphize ((g ∘ π) * f) = g * (QuotientAddGroup.automorphize f) :=
    by exact QuotientAddGroup.automorphize_smul_left f g
  calc ∫ (x : G'), g (π x) * f x ∂μ' =
    ∫ (x : G' ⧸ Γ'), QuotientAddGroup.automorphize ((g ∘ π) * f) x ∂μ_𝓕 := ?_
    _ = ∫ (x : G' ⧸ Γ'), g x * (QuotientAddGroup.automorphize f x) ∂μ_𝓕 := by simp [H₀]
  have H₁ : Integrable ((g ∘ π) * f) μ' := by
    have : AEStronglyMeasurable (fun (x : G') ↦ g (x : (G' ⧸ Γ'))) μ' :=
      (hg.mono_ac h𝓕.absolutelyContinuous_map).comp_measurable meas_π
    refine Integrable.essSup_smul f_ℒ_1 this ?_
    have hg' : AEStronglyMeasurable (‖g ·‖ₑ) μ_𝓕 := continuous_enorm.comp_aestronglyMeasurable hg
    rw [← essSup_comp_quotientAddGroup_mk h𝓕 hg'.aemeasurable]
    exact g_ℒ_infinity
  have H₂ : AEStronglyMeasurable (QuotientAddGroup.automorphize ((g ∘ π) * f)) μ_𝓕 := by
    simp_rw [H₀]
    exact hg.mul F_ae_measurable
  apply QuotientAddGroup.integral_eq_integral_automorphize h𝓕 H₁ H₂

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b71e0a3f773b720ae422a48d3a93e44211f79906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
