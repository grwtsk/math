# QuotientGroup.integral_mul_eq_integral_automorphize_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d27037f3-af51-66d0-49ee-e36dc2f81a7e",
  "kind": "lemma",
  "lexical_name": "QuotientGroup.integral_mul_eq_integral_automorphize_mul",
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
  "slug": "quotientgroup-integral-mul-eq-integral-automorphize-mul--3d2059cf1b2f08d06b18f360",
  "source": {
    "blob": "83ad2fd7a27d480d662eafb193b8151209876bd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 412,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d2059cf1b2f08d06b18f360b8d9b18d0caf82e7f830420aea65541e226ce420",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d27037f3-af51-66d0-49ee-e36dc2f81a7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuotientGroup.integral_mul_eq_integral_automorphize_mul {K : Type*} [NormedField K]
    [NormedSpace ℝ K] [μ.IsMulRightInvariant] {f : G → K}
    (f_ℒ_1 : Integrable f μ) {g : G ⧸ Γ → K} (hg : AEStronglyMeasurable g μ_𝓕)
    (g_ℒ_infinity : essSup (fun x ↦ ↑‖g x‖ₑ) μ_𝓕 ≠ ∞)
    (F_ae_measurable : AEStronglyMeasurable (QuotientGroup.automorphize f) μ_𝓕) :
    ∫ x : G, g (x : G ⧸ Γ) * (f x) ∂μ
      = ∫ x : G ⧸ Γ, g x * (QuotientGroup.automorphize f x) ∂μ_𝓕 := by
  let π : G → G ⧸ Γ := QuotientGroup.mk
  have meas_π : Measurable π := continuous_quotient_mk'.measurable
  have H₀ : QuotientGroup.automorphize ((g ∘ π) * f) = g * (QuotientGroup.automorphize f) := by
    exact QuotientGroup.automorphize_smul_left f g
  calc ∫ (x : G), g (π x) * (f x) ∂μ =
        ∫ (x : G ⧸ Γ), QuotientGroup.automorphize ((g ∘ π) * f) x ∂μ_𝓕 := ?_
    _ = ∫ (x : G ⧸ Γ), g x * (QuotientGroup.automorphize f x) ∂μ_𝓕 := by simp [H₀]
  have H₁ : Integrable ((g ∘ π) * f) μ := by
    have : AEStronglyMeasurable (fun (x : G) ↦ g (x : (G ⧸ Γ))) μ :=
      (hg.mono_ac h𝓕.absolutelyContinuous_map).comp_measurable meas_π
    refine Integrable.essSup_smul f_ℒ_1 this ?_
    have hg' : AEStronglyMeasurable (‖g ·‖ₑ) μ_𝓕 := continuous_enorm.comp_aestronglyMeasurable hg
    rw [← essSup_comp_quotientGroup_mk h𝓕 hg'.aemeasurable]
    exact g_ℒ_infinity
  have H₂ : AEStronglyMeasurable (QuotientGroup.automorphize ((g ∘ π) * f)) μ_𝓕 := by
    simp_rw [H₀]
    exact hg.mul F_ae_measurable
  apply QuotientGroup.integral_eq_integral_automorphize h𝓕 H₁ H₂

end UnfoldingTrick

section

variable {G' : Type*} [AddGroup G'] [MeasurableSpace G'] [TopologicalSpace G']
  [IsTopologicalAddGroup G'] [BorelSpace G'] {μ' : Measure G'} {Γ' : AddSubgroup G'}
  {𝓕' : Set G'} (h𝓕 : IsAddFundamentalDomain Γ'.op 𝓕' μ')
  [Countable Γ'] [MeasurableSpace (G' ⧸ Γ')] [BorelSpace (G' ⧸ Γ')]
include h𝓕

local notation "μ_𝓕" => Measure.map (@QuotientAddGroup.mk G' _ Γ') (μ'.restrict 𝓕')

/-- This is the **Unfolding Trick**: Given an additive subgroup `Γ'` of an additive group `G'`, the
  integral of a function `f` on `G'` times the lift to `G'` of a function `g` on the quotient
  `G' ⧸ Γ'` with respect to a right-invariant measure `μ` on `G'`, is equal to the integral over
  the quotient of the automorphization of `f` times `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ad2fd7a27d480d662eafb193b8151209876bd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
