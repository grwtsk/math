# tendsto_map_of_tendsto_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a94d5462b9191cd9522bc1e55a7e775998acb532",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 569,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b97077f72d534783ccce0bc20637dcf55e066af1e7aa4ca5ccf32140bebe611a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ffa84fd-cc1b-ba7a-2524-19f686f939e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d50df7f-7676-e1f4-78fd-1e8d72bbcd46",
  "kind": "lemma",
  "lexical_name": "tendsto_map_of_tendsto_of_continuous",
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
  "slug": "tendsto-map-of-tendsto-of-continuous--99426fddeee52f583912ad8f",
  "source": {
    "blob": "a94d5462b9191cd9522bc1e55a7e775998acb532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 569,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb97077f72d534783ccce0bc20637dcf55e066af1e7aa4ca5ccf32140bebe611a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99426fddeee52f583912ad8f04469da55531d32635fb0d22a9e2708fed6adf8b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb97077f72d534783ccce0bc20637dcf55e066af1e7aa4ca5ccf32140bebe611a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d50df7f-7676-e1f4-78fd-1e8d72bbcd46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_map_of_tendsto_of_continuous {ι : Type*} {L : Filter ι}
    (νs : ι → ProbabilityMeasure Ω) (ν : ProbabilityMeasure Ω) (lim : Tendsto νs L (𝓝 ν))
    {f : Ω → Ω'} (f_cont : Continuous f) :
    Tendsto (fun i ↦ (νs i).map f_cont.measurable.aemeasurable) L
      (𝓝 (ν.map f_cont.measurable.aemeasurable)) := by
  rw [ProbabilityMeasure.tendsto_iff_forall_lintegral_tendsto] at lim ⊢
  intro g
  convert lim (g.compContinuous ⟨f, f_cont⟩) <;>
  · simp only [map, compContinuous_apply, ContinuousMap.coe_mk]
    refine lintegral_map ?_ f_cont.measurable
    exact (ENNReal.continuous_coe.comp g.continuous).measurable

/-- If `f : X → Y` is continuous and `Y` is equipped with the Borel sigma algebra, then
the push-forward of probability measures `f* : ProbabilityMeasure X → ProbabilityMeasure Y`
is continuous (in the topologies of convergence in distribution). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb97077f72d534783ccce0bc20637dcf55e066af1e7aa4ca5ccf32140bebe611a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb97077f72d534783ccce0bc20637dcf55e066af1e7aa4ca5ccf32140bebe611a.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a94d5462b9191cd9522bc1e55a7e775998acb532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
