# measure_iInter_eq_iInf_measure_iInter_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be390e716cdc71c2e888e6c47fa50e7cbc0e0ca1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8f38584-4d49-27db-df96-1db54505c00c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f360ea73-7df2-7acb-9f7b-56580913720b",
  "kind": "theorem",
  "lexical_name": "measure_iInter_eq_iInf_measure_iInter_le",
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
  "slug": "measure-iinter-eq-iinf-measure-iinter-le--fe19a278f19cf9249b6b1dd8",
  "source": {
    "blob": "be390e716cdc71c2e888e6c47fa50e7cbc0e0ca1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe19a278f19cf9249b6b1dd89e548b03e58a2dcf624df2609138af0351729356",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f360ea73-7df2-7acb-9f7b-56580913720b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_iInter_eq_iInf_measure_iInter_le [Countable ι] [Preorder ι] [IsDirectedOrder ι]
    (h : ∀ i, NullMeasurableSet (s i) μ) (hfin : ∃ i, μ (s i) ≠ ∞) :
    μ (⋂ i, s i) = ⨅ i, μ (⋂ j ≤ i, s j) := by
  rw [← Antitone.measure_iInter]
  · rw [iInter_comm]
    exact congrArg μ <| iInter_congr fun i ↦ (biInf_const nonempty_Ici).symm
  · exact fun i j h ↦ biInter_mono (Iic_subset_Iic.2 h) fun _ _ ↦ Set.Subset.rfl
  · exact fun i ↦ .biInter (to_countable _) fun _ _ ↦ h _
  · refine hfin.imp fun k hk ↦ ne_top_of_le_ne_top hk <| measure_mono <| iInter₂_subset k ?_
    rfl

/-- Continuity from below: the measure of the union of an increasing sequence of (not necessarily
measurable) sets is the limit of the measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be390e716cdc71c2e888e6c47fa50e7cbc0e0ca1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
