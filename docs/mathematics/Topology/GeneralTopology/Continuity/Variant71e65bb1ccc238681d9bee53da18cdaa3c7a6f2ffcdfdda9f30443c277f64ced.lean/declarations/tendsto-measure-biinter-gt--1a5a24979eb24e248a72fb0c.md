# tendsto_measure_biInter_gt

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
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5cca947-f2b7-4956-bed6-6454fe5b3c82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13d63dc5-c232-29ca-06e6-9d28151c4831",
  "kind": "theorem",
  "lexical_name": "tendsto_measure_biInter_gt",
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
  "slug": "tendsto-measure-biinter-gt--1a5a24979eb24e248a72fb0c",
  "source": {
    "blob": "be390e716cdc71c2e888e6c47fa50e7cbc0e0ca1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a5a24979eb24e248a72fb0c105d4295ce7811effc028bad9fff0a779d15ad26",
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

Occurrence: `result:13d63dc5-c232-29ca-06e6-9d28151c4831`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_measure_biInter_gt [LinearOrder ι] [TopologicalSpace ι]
    [OrderTopology ι] [FirstCountableTopology ι]
    {a : ι} (hs : ∀ r > a, NullMeasurableSet (s r) μ) (hm : ∀ i j, a < i → i ≤ j → s i ⊆ s j)
    (hf : ∃ r > a, μ (s r) ≠ ∞) : Tendsto (μ ∘ s) (𝓝[Ioi a] a) (𝓝 (μ (⋂ r > a, s r))) := by
  by_cases ha : Order.IsPredPrelimit a
  · have : (atBot : Filter (Ioi a)).IsCountablyGenerated := by
      rw [← comap_coe_Ioi_nhdsGT a ha]
      infer_instance
    simp_rw [← map_coe_Ioi_atBot a ha, tendsto_map'_iff, ← mem_Ioi, biInter_eq_iInter]
    apply tendsto_measure_iInter_atBot
    · rwa [Subtype.forall]
    · exact fun i j h ↦ hm i j i.2 h
    · simpa only [Subtype.exists, exists_prop]
  · rw [Order.not_isPredPrelimit_iff] at ha
    rcases ha with ⟨b, hab⟩
    simp [hab.nhdsGT]

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be390e716cdc71c2e888e6c47fa50e7cbc0e0ca1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
