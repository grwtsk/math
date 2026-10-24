# MeasureTheory.QuotientMeasureEqMeasurePreimage.haarMeasure_quotient

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
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ba1a1e0-08d1-753d-e978-8149d9a13d0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65f26282-5a84-a375-c83b-ea3778888e65",
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
  "slug": "measuretheory-quotientmeasureeqmeasurepreimage-haarmeasure-quotient--b07cbb80f0013355bbb2b625",
  "source": {
    "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 221,
    "path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b07cbb80f0013355bbb2b625182a026b9171f9c9990390ece1d641a653a5d3a6",
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

Occurrence: `result:65f26282-5a84-a375-c83b-ea3778888e65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–263.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b71e0a3f773b720ae422a48d3a93e44211f79906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
