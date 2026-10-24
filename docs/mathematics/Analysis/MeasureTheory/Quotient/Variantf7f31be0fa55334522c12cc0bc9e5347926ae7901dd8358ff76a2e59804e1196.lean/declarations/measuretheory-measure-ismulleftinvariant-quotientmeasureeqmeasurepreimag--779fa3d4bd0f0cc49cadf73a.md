# MeasureTheory.Measure.IsMulLeftInvariant.quotientMeasureEqMeasurePreimage_of_set

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
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b95d8694-6cef-739d-8734-c037e140ba9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30da9be1-df09-9462-3a5b-c6ed9d289dc4",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.Measure.IsMulLeftInvariant.quotientMeasureEqMeasurePreimage_of_set",
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
  "slug": "measuretheory-measure-ismulleftinvariant-quotientmeasureeqmeasurepreimag--779fa3d4bd0f0cc49cadf73a",
  "source": {
    "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 156,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:779fa3d4bd0f0cc49cadf73ac69bf01637a79e790f0510727bee4e8337dd39c6",
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

Occurrence: `result:30da9be1-df09-9462-3a5b-c6ed9d289dc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.Measure.IsMulLeftInvariant.quotientMeasureEqMeasurePreimage_of_set {s : Set G}
    (fund_dom_s : IsFundamentalDomain Γ.op s ν) {V : Set (G ⧸ Γ)}
    (meas_V : MeasurableSet V) (neZeroV : μ V ≠ 0) (hV : μ V = ν (π ⁻¹' V ∩ s))
    (neTopV : μ V ≠ ⊤) : QuotientMeasureEqMeasurePreimage ν μ := by
  apply fund_dom_s.quotientMeasureEqMeasurePreimage
  ext U _
  have meas_π : Measurable (QuotientGroup.mk : G → G ⧸ Γ) := continuous_quotient_mk'.measurable
  let μ' : Measure (G ⧸ Γ) := (ν.restrict s).map π
  haveI has_fund : HasFundamentalDomain Γ.op G ν := ⟨⟨s, fund_dom_s⟩⟩
  have i : QuotientMeasureEqMeasurePreimage ν μ' :=
    fund_dom_s.quotientMeasureEqMeasurePreimage_quotientMeasure
  have : μ'.IsMulLeftInvariant :=
    MeasureTheory.QuotientMeasureEqMeasurePreimage.mulInvariantMeasure_quotient ν
  suffices μ = μ' by
    rw [this]
    rfl
  have : SigmaFinite μ' := i.sigmaFiniteQuotient
  rw [measure_eq_div_smul μ' μ neZeroV neTopV, hV]
  symm
  suffices (μ' V / ν (QuotientGroup.mk ⁻¹' V ∩ s)) = 1 by rw [this, one_smul]
  rw [Measure.map_apply meas_π meas_V, Measure.restrict_apply]
  · convert ENNReal.div_self ..
    · exact trans hV.symm neZeroV
    · exact trans hV.symm neTopV
  exact measurableSet_quotient.mp meas_V

/-- If a measure `μ` is left-invariant and satisfies the right scaling condition, then it
  satisfies `QuotientMeasureEqMeasurePreimage`. -/
@[to_additive "If a measure `μ` is
left-invariant and satisfies the right scaling condition, then it satisfies
`AddQuotientMeasureEqMeasurePreimage`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b71e0a3f773b720ae422a48d3a93e44211f79906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
