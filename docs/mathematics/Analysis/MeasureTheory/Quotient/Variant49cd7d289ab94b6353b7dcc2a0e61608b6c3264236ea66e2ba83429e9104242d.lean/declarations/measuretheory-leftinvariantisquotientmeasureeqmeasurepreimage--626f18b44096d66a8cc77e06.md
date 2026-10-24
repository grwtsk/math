# MeasureTheory.leftInvariantIsQuotientMeasureEqMeasurePreimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:655af9b1-5d80-c812-8c8e-424024eb0eac",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.leftInvariantIsQuotientMeasureEqMeasurePreimage",
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
  "slug": "measuretheory-leftinvariantisquotientmeasureeqmeasurepreimage--626f18b44096d66a8cc77e06",
  "source": {
    "blob": "83ad2fd7a27d480d662eafb193b8151209876bd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 195,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:626f18b44096d66a8cc77e061e166294f7db71de5313130eef6fb1d02e0bb7e2",
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

Occurrence: `result:655af9b1-5d80-c812-8c8e-424024eb0eac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.leftInvariantIsQuotientMeasureEqMeasurePreimage [IsFiniteMeasure μ]
    [hasFun : HasFundamentalDomain Γ.op G ν]
    (h : covolume Γ.op G ν = μ univ) : QuotientMeasureEqMeasurePreimage ν μ := by
  obtain ⟨s, fund_dom_s⟩ := hasFun.ExistsIsFundamentalDomain
  have finiteCovol : μ univ < ⊤ := measure_lt_top μ univ
  rw [fund_dom_s.covolume_eq_volume] at h
  by_cases meas_s_ne_zero : ν s = 0
  · convert fund_dom_s.quotientMeasureEqMeasurePreimage_of_zero meas_s_ne_zero
    rw [← @measure_univ_eq_zero, ← h, meas_s_ne_zero]
  apply IsMulLeftInvariant.quotientMeasureEqMeasurePreimage_of_set (fund_dom_s := fund_dom_s)
    (meas_V := MeasurableSet.univ)
  · rw [← h]
    exact meas_s_ne_zero
  · rw [← h]
    simp
  · rw [← h]
    convert finiteCovol.ne

end mulInvariantMeasure

section haarMeasure

variable [Countable Γ] (ν : Measure G) [IsHaarMeasure ν] [IsMulRightInvariant ν]

local notation "π" => @QuotientGroup.mk G _ Γ

/-- If a measure `μ` on the quotient `G ⧸ Γ` of a group `G` by a discrete normal subgroup `Γ` having
fundamental domain, satisfies `QuotientMeasureEqMeasurePreimage` relative to a standardized choice
of Haar measure on `G`, and assuming `μ` is finite, then `μ` is itself Haar.
TODO: Is it possible to drop the assumption that `μ` is finite? -/
@[to_additive "If a measure `μ` on the quotient `G ⧸ Γ` of an additive group `G` by a discrete
normal subgroup `Γ` having fundamental domain, satisfies `AddQuotientMeasureEqMeasurePreimage`
relative to a standardized choice of Haar measure on `G`, and assuming `μ` is finite, then `μ` is
itself Haar."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ad2fd7a27d480d662eafb193b8151209876bd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
