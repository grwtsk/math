# measure_isMulLeftInvariant_eq_smul_of_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 807,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a03f694-b3f2-3649-8dda-a2616d0c4928",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37d917f8-c942-99d7-2969-1d3a1de47ae1",
  "kind": "lemma",
  "lexical_name": "measure_isMulLeftInvariant_eq_smul_of_ne_top",
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
  "slug": "measure-ismulleftinvariant-eq-smul-of-ne-top--df5b9527cad3542a2736050e",
  "source": {
    "blob": "6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 845,
    "line": 807,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df5b9527cad3542a2736050e79d2f046371fffa0f25706fa03f0762b87d6631c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37d917f8-c942-99d7-2969-1d3a1de47ae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 807–845.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_isMulLeftInvariant_eq_smul_of_ne_top [LocallyCompactSpace G]
    (μ' μ : Measure G) [IsHaarMeasure μ] [IsFiniteMeasureOnCompacts μ'] [IsMulLeftInvariant μ']
    [InnerRegularCompactLTTop μ] [InnerRegularCompactLTTop μ'] {s : Set G}
    (hs : μ s ≠ ∞) (h's : μ' s ≠ ∞) : μ' s = haarScalarFactor μ' μ • μ s := by
  /- We know that the measures integrate in the same way continuous compactly supported functions,
  up to the factor `c = haarScalarFactor μ' μ`. -/
  let c := haarScalarFactor μ' μ
  /- By regularity, every measurable set of finite measure may be approximated by compact sets.
  Therefore, the measures coincide on measurable sets of finite measure. -/
  have B : ∀ s, MeasurableSet s → μ s < ∞ → μ' s < ∞ → μ' s = (c • μ) s := by
    intro s s_meas hs h's
    have : (c • μ) s ≠ ∞ := by simp [ENNReal.mul_eq_top, hs.ne]
    rw [s_meas.measure_eq_iSup_isCompact_of_ne_top h's.ne,
        s_meas.measure_eq_iSup_isCompact_of_ne_top this]
    congr! 4 with K _Ks K_comp
    exact measure_isMulInvariant_eq_smul_of_isCompact_closure μ' μ K_comp.closure
  /- Finally, replace an arbitrary finite measure set with a measurable version, and use the
  version for measurable sets. -/
  let t := toMeasurable μ' s ∩ toMeasurable μ s
  have st : s ⊆ t := subset_inter (subset_toMeasurable μ' s) (subset_toMeasurable μ s)
  have mu'_t : μ' t = μ' s := by
    apply le_antisymm
    · exact (measure_mono inter_subset_left).trans (measure_toMeasurable s).le
    · exact measure_mono st
  have mu_t : μ t = μ s := by
    apply le_antisymm
    · exact (measure_mono inter_subset_right).trans (measure_toMeasurable s).le
    · exact measure_mono st
  simp only [← mu'_t, smul_toOuterMeasure, OuterMeasure.coe_smul, Pi.smul_apply, ← mu_t,
    nnreal_smul_coe_apply]
  apply B
  · exact (measurableSet_toMeasurable _ _).inter (measurableSet_toMeasurable _ _)
  · exact mu_t.le.trans_lt hs.lt_top
  · exact mu'_t.le.trans_lt h's.lt_top

/-- **Uniqueness of left-invariant measures**:
Given two left-invariant measures which are finite
on compacts and inner regular, they coincide up to a multiplicative constant. -/
@[to_additive isAddLeftInvariant_eq_smul_of_innerRegular]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean#L807).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
