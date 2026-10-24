# innerRegularWRT_preimage_one_hasCompactSupport_measure_ne_top_of_group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5106d8a5-68d8-149b-05bd-9c06c5185c7d",
  "kind": "theorem",
  "lexical_name": "innerRegularWRT_preimage_one_hasCompactSupport_measure_ne_top_of_group",
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
  "slug": "innerregularwrt-preimage-one-hascompactsupport-measure-ne-top-of-group--eaaad6aede2ec2579065c1e7",
  "source": {
    "blob": "9803a5400a6aeb655a6bb7b5807be18f4b5253f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 294,
    "path": "GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaaad6aede2ec2579065c1e7cfb51cc07175a7634410315621d7c80f41fb7c29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5106d8a5-68d8-149b-05bd-9c06c5185c7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerRegularWRT_preimage_one_hasCompactSupport_measure_ne_top_of_group :
    InnerRegularWRT μ (fun s ↦ ∃ (f : G → ℝ), Continuous f ∧ HasCompactSupport f ∧ s = f ⁻¹' {1})
    (fun s ↦ MeasurableSet s ∧ μ s ≠ ∞) := by
  /- First, approximate a measurable set from inside by a compact closed set `K`. Then notice that
  the everywhere positive subset of `K` is a Gδ,
  by Lemma `IsEverywherePos.IsGdelta_of_isMulLeftInvariant`, and therefore the level set of a
  continuous compactly supported function. Moreover, it has the same measure as `K`. -/
  apply InnerRegularWRT.trans _ innerRegularWRT_isCompact_isClosed_measure_ne_top_of_group
  intro K ⟨K_comp, K_closed⟩ r hr
  let L := μ.everywherePosSubset K
  have L_comp : IsCompact L := K_comp.everywherePosSubset
  have L_closed : IsClosed L := K_closed.everywherePosSubset
  refine ⟨L, everywherePosSubset_subset μ K, ?_, ?_⟩
  · have : μ.IsEverywherePos L :=
      isEverywherePos_everywherePosSubset_of_measure_ne_top K_closed.measurableSet
      K_comp.measure_lt_top.ne
    have L_Gδ : IsGδ L := this.IsGdelta_of_isMulLeftInvariant L_comp L_closed
    obtain ⟨⟨f, f_cont⟩, Lf, -, f_comp, -⟩ : ∃ f : C(G, ℝ), L = f ⁻¹' {1} ∧ EqOn f 0 ∅
        ∧ HasCompactSupport f ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1 :=
      exists_continuous_one_zero_of_isCompact_of_isGδ L_comp L_Gδ isClosed_empty
        (disjoint_empty L)
    exact ⟨f, f_cont, f_comp, Lf⟩
  · convert! hr using 1
    apply measure_congr
    exact everywherePosSubset_ae_eq_of_measure_ne_top K_closed.measurableSet
      K_comp.measure_lt_top.ne

end IsTopologicalGroup

end Measure

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3f66db2f5e4dae06d33e3edc9099088ec49e5c4e60ccb0f3ef48f173613ce543.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9803a5400a6aeb655a6bb7b5807be18f4b5253f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
