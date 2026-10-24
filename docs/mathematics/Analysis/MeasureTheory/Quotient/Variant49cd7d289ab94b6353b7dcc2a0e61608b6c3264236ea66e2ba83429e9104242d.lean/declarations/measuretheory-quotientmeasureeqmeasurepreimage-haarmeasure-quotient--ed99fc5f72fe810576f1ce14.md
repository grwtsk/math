# MeasureTheory.QuotientMeasureEqMeasurePreimage.haarMeasure_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7caba4f-98ac-c697-5455-cd527036a749",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.QuotientMeasureEqMeasurePreimage.haarMeasure_quotient",
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
  "slug": "measuretheory-quotientmeasureeqmeasurepreimage-haarmeasure-quotient--ed99fc5f72fe810576f1ce14",
  "source": {
    "blob": "83ad2fd7a27d480d662eafb193b8151209876bd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 229,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed99fc5f72fe810576f1ce149c2436245182cb9ec2d688636c660637505988ba",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7caba4f-98ac-c697-5455-cd527036a749`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.QuotientMeasureEqMeasurePreimage.haarMeasure_quotient [LocallyCompactSpace G]
    [QuotientMeasureEqMeasurePreimage ν μ] [i : HasFundamentalDomain Γ.op G ν]
    [IsFiniteMeasure μ] : IsHaarMeasure μ := by
  obtain ⟨K⟩ := PositiveCompacts.nonempty' (α := G)
  let K' : PositiveCompacts (G ⧸ Γ) :=
    K.map π QuotientGroup.continuous_mk QuotientGroup.isOpenMap_coe
  haveI : IsMulLeftInvariant μ :=
    MeasureTheory.QuotientMeasureEqMeasurePreimage.mulInvariantMeasure_quotient ν
  rw [haarMeasure_unique μ K']
  have finiteCovol : covolume Γ.op G ν ≠ ⊤ :=
    ne_top_of_lt <| QuotientMeasureEqMeasurePreimage.covolume_ne_top μ (ν := ν)
  obtain ⟨s, fund_dom_s⟩ := i
  rw [fund_dom_s.covolume_eq_volume] at finiteCovol
  -- TODO: why `rw` fails?
  erw [fund_dom_s.projection_respects_measure_apply μ K'.isCompact.measurableSet]
  apply IsHaarMeasure.smul
  · intro h
    haveI i' : IsOpenPosMeasure (ν : Measure G) := inferInstance
    apply IsOpenPosMeasure.open_pos (interior K) (μ := ν) (self := i')
    · exact isOpen_interior
    · exact K.interior_nonempty
    rw [← le_zero_iff,
      ← fund_dom_s.measure_zero_of_invariant _ (fun g ↦ QuotientGroup.sound _ _ g) h]
    apply measure_mono
    refine interior_subset.trans ?_
    rw [QuotientGroup.coe_mk']
    show (K : Set G) ⊆ π ⁻¹' (π '' K)
    exact subset_preimage_image π K
  · show ν (π ⁻¹' (π '' K) ∩ s) ≠ ⊤
    apply ne_of_lt
    refine lt_of_le_of_lt ?_ finiteCovol.lt_top
    apply measure_mono
    exact inter_subset_right

variable [SigmaFinite ν]

/-- Given a normal subgroup `Γ` of a topological group `G` with Haar measure `μ`, which is also
  right-invariant, and a finite volume fundamental domain `𝓕`, the quotient map to `G ⧸ Γ`,
  properly normalized, satisfies `QuotientMeasureEqMeasurePreimage`. -/
@[to_additive "Given a normal
subgroup `Γ` of an additive topological group `G` with Haar measure `μ`, which is also
right-invariant, and a finite volume fundamental domain `𝓕`, the quotient map to `G ⧸ Γ`,
properly normalized, satisfies `AddQuotientMeasureEqMeasurePreimage`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ad2fd7a27d480d662eafb193b8151209876bd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
