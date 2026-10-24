# QuotientMeasureEqMeasurePreimage.sigmaFiniteQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b3b0246c7de95c6f2f9f04d8e60615abe127267",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 829,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4904b3e8-7cc2-cbb5-ecdf-4e291bee07f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:883c3125-634f-33d5-695c-e769637a3f6d",
  "kind": "lemma",
  "lexical_name": "QuotientMeasureEqMeasurePreimage.sigmaFiniteQuotient",
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
  "slug": "quotientmeasureeqmeasurepreimage-sigmafinitequotient--fb42e5d0cacc2eb73877dc4e",
  "source": {
    "blob": "7b3b0246c7de95c6f2f9f04d8e60615abe127267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 853,
    "line": 829,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb42e5d0cacc2eb73877dc4eeb6a408ce20ebb8f3a3b20d80486046777004507",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:883c3125-634f-33d5-695c-e769637a3f6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 829–853.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuotientMeasureEqMeasurePreimage.sigmaFiniteQuotient
    [i : SigmaFinite ν] [i' : HasFundamentalDomain G α ν]
    (μ : Measure (Quotient α_mod_G)) [QuotientMeasureEqMeasurePreimage ν μ] :
    SigmaFinite μ := by
  rw [sigmaFinite_iff]
  obtain ⟨A, hA_meas, hA, hA'⟩ := Measure.toFiniteSpanningSetsIn (h := i)
  simp only [mem_setOf_eq] at hA_meas
  refine ⟨⟨fun n ↦ π '' (A n), by simp, fun n ↦ ?_, ?_⟩⟩
  · obtain ⟨s, fund_dom_s⟩ := i'
    have : π ⁻¹' (π '' (A n)) = _ := MulAction.quotient_preimage_image_eq_union_mul (A n) (G := G)
    have measπAn : MeasurableSet (π '' A n) := by
      let _ : Setoid α := α_mod_G
      rw [measurableSet_quotient, Quotient.mk''_eq_mk, this]
      apply MeasurableSet.iUnion
      exact fun g ↦ MeasurableSet.const_smul (hA_meas n) g
    rw [fund_dom_s.projection_respects_measure_apply (μ := μ) measπAn, this, iUnion_inter]
    refine lt_of_le_of_lt ?_ (hA n)
    rw [fund_dom_s.measure_eq_tsum (A n)]
    exact measure_iUnion_le _
  · rw [← image_iUnion, hA']
    refine image_univ_of_surjective (by convert Quotient.mk'_surjective)

/-- A measure `μ` on `α ⧸ G` satisfying `QuotientMeasureEqMeasurePreimage` and having finite
covolume is a finite measure. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean#L829).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b3b0246c7de95c6f2f9f04d8e60615abe127267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
