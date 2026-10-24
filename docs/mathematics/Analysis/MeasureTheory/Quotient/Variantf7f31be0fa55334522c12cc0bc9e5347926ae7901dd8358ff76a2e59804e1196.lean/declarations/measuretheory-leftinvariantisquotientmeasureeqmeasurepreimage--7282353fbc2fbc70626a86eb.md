# MeasureTheory.leftInvariantIsQuotientMeasureEqMeasurePreimage

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
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:894d5a72-c68f-ac89-22ee-14b8360e00e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a84231b-8c5c-0fa2-c70a-5b8f4493088d",
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
  "slug": "measuretheory-leftinvariantisquotientmeasureeqmeasurepreimage--7282353fbc2fbc70626a86eb",
  "source": {
    "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 187,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7282353fbc2fbc70626a86eb0c55e3c2078498d4f6b39a1297042fa9433a4a6e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a84231b-8c5c-0fa2-c70a-5b8f4493088d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–220.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b71e0a3f773b720ae422a48d3a93e44211f79906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
