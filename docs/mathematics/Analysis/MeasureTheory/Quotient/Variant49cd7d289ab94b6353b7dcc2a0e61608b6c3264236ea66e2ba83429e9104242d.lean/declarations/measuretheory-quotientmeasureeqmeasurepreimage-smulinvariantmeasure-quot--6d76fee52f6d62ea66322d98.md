# MeasureTheory.QuotientMeasureEqMeasurePreimage.smulInvariantMeasure_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e2f1a56-4f79-9c27-eb87-fb5cb3dc8524",
  "kind": "lemma",
  "lexical_name": "MeasureTheory.QuotientMeasureEqMeasurePreimage.smulInvariantMeasure_quotient",
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
  "slug": "measuretheory-quotientmeasureeqmeasurepreimage-smulinvariantmeasure-quot--6d76fee52f6d62ea66322d98",
  "source": {
    "blob": "83ad2fd7a27d480d662eafb193b8151209876bd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 96,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d76fee52f6d62ea66322d983218fbe5c64c2c69f0a1d1c714f3a80fef2439b5",
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

Occurrence: `result:9e2f1a56-4f79-9c27-eb87-fb5cb3dc8524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasureTheory.QuotientMeasureEqMeasurePreimage.smulInvariantMeasure_quotient
    [IsMulLeftInvariant ν] [hasFun : HasFundamentalDomain Γ.op G ν] :
    SMulInvariantMeasure G (G ⧸ Γ) μ where
  measure_preimage_smul g A hA := by
    have meas_π : Measurable π := continuous_quotient_mk'.measurable
    obtain ⟨𝓕, h𝓕⟩ := hasFun.ExistsIsFundamentalDomain
    have h𝓕_translate_fundom : IsFundamentalDomain Γ.op (g • 𝓕) ν := h𝓕.smul_of_comm g
    -- TODO: why `rw` fails with both of these rewrites?
    erw [h𝓕.projection_respects_measure_apply (μ := μ)
      (meas_π (measurableSet_preimage (measurable_const_smul g) hA)),
      h𝓕_translate_fundom.projection_respects_measure_apply (μ := μ) hA]
    change ν ((π ⁻¹' _) ∩ _) = ν ((π ⁻¹' _) ∩ _)
    set π_preA := π ⁻¹' A
    have : π ⁻¹' ((fun x : G ⧸ Γ => g • x) ⁻¹' A) = (g * ·) ⁻¹' π_preA := by ext1; simp [π_preA]
    rw [this]
    have : ν ((g * ·) ⁻¹' π_preA ∩ 𝓕) = ν (π_preA ∩ (g⁻¹ * ·) ⁻¹' 𝓕) := by
      trans ν ((g * ·) ⁻¹' (π_preA ∩ (g⁻¹ * ·) ⁻¹' 𝓕))
      · rw [preimage_inter]
        congr 2
        simp [Set.preimage]
      rw [measure_preimage_mul]
    rw [this, ← preimage_smul_inv]; rfl

end smulInvariantMeasure

section normal

variable {G : Type*} [Group G] [MeasurableSpace G] [TopologicalSpace G] [IsTopologicalGroup G]
  [BorelSpace G] [PolishSpace G] {Γ : Subgroup G} [Subgroup.Normal Γ]
  [T2Space (G ⧸ Γ)] [SecondCountableTopology (G ⧸ Γ)] {μ : Measure (G ⧸ Γ)}

section mulInvariantMeasure

variable (ν : Measure G) [IsMulLeftInvariant ν]

/-- If `μ` on `G ⧸ Γ` satisfies `QuotientMeasureEqMeasurePreimage` relative to a both left- and
  right-invariant measure on `G` and `Γ` is a normal subgroup, then `μ` is a left-invariant
  measure. -/
@[to_additive "If `μ` on `G ⧸ Γ` satisfies `AddQuotientMeasureEqMeasurePreimage` relative to a both
  left- and right-invariant measure on `G` and `Γ` is a normal subgroup, then `μ` is a
  left-invariant measure."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ad2fd7a27d480d662eafb193b8151209876bd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
