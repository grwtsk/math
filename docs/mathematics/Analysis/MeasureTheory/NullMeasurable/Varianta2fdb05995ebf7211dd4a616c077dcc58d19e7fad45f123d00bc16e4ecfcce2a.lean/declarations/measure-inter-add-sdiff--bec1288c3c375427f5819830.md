# measure_inter_add_sdiff₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c25f7837a44f50a5882f8052e8217678930a93cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2fdb05995ebf7211dd4a616c077dcc58d19e7fad45f123d00bc16e4ecfcce2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9db0ecb4-362b-5aff-a1c4-0644f0c0d023",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a62ebf4-3cb2-a4b3-5194-33dfcb008947",
  "kind": "theorem",
  "lexical_name": "measure_inter_add_sdiff₀",
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
  "slug": "measure-inter-add-sdiff--bec1288c3c375427f5819830",
  "source": {
    "blob": "c25f7837a44f50a5882f8052e8217678930a93cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 265,
    "path": "GRWTSK/Analysis/MeasureTheory/NullMeasurable/Varianta2fdb05995ebf7211dd4a616c077dcc58d19e7fad45f123d00bc16e4ecfcce2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bec1288c3c375427f5819830c2cb1eda17f50e339b02846d1b475c87a4aa0b3d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NullMeasurable/Varianta2fdb05995ebf7211dd4a616c077dcc58d19e7fad45f123d00bc16e4ecfcce2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a62ebf4-3cb2-a4b3-5194-33dfcb008947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_inter_add_sdiff₀ (s : Set α) (ht : NullMeasurableSet t μ) :
    μ (s ∩ t) + μ (s \ t) = μ s := by
  refine le_antisymm ?_ (measure_le_inter_add_sdiff _ _ _)
  rcases exists_measurable_superset μ s with ⟨s', hsub, hs'm, hs'⟩
  replace hs'm : NullMeasurableSet s' μ := hs'm.nullMeasurableSet
  calc
    μ (s ∩ t) + μ (s \ t) ≤ μ (s' ∩ t) + μ (s' \ t) := by gcongr
    _ = μ (s' ∩ t ∪ s' \ t) :=
      (measure_union₀_aux (hs'm.inter ht) (hs'm.diff ht) <|
          (@disjoint_inf_sdiff _ s' t _).aedisjoint).symm
    _ = μ s' := congr_arg μ (inter_union_sdiff _ _)
    _ = μ s := hs'

@[deprecated (since := "2026-06-03")] alias measure_inter_add_diff₀ := measure_inter_add_sdiff₀

/-- If `s` and `t` are null measurable sets of equal measure
and their intersection has finite measure,
then `s \ t` and `t \ s` have equal measures too. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NullMeasurable/Varianta2fdb05995ebf7211dd4a616c077dcc58d19e7fad45f123d00bc16e4ecfcce2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NullMeasurable/Varianta2fdb05995ebf7211dd4a616c077dcc58d19e7fad45f123d00bc16e4ecfcce2a.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c25f7837a44f50a5882f8052e8217678930a93cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
