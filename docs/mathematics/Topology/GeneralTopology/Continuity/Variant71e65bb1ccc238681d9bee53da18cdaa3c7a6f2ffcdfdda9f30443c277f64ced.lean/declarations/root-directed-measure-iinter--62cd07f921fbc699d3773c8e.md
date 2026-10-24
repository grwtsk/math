# _root_.Directed.measure_iInter

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
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94c1087f-562d-36a1-0b2e-78a7cf8785eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0946c439-e7cd-a4b4-3d25-0ef72acfa20a",
  "kind": "theorem",
  "lexical_name": "_root_.Directed.measure_iInter",
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
  "slug": "root-directed-measure-iinter--62cd07f921fbc699d3773c8e",
  "source": {
    "blob": "be390e716cdc71c2e888e6c47fa50e7cbc0e0ca1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62cd07f921fbc699d3773c8e776ab5b5d3c422da8c28d10a13087ec2c36f9aba",
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

Occurrence: `result:0946c439-e7cd-a4b4-3d25-0ef72acfa20a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Directed.measure_iInter [Countable ι]
    (h : ∀ i, NullMeasurableSet (s i) μ) (hd : Directed (· ⊇ ·) s) (hfin : ∃ i, μ (s i) ≠ ∞) :
    μ (⋂ i, s i) = ⨅ i, μ (s i) := by
  rcases hfin with ⟨k, hk⟩
  have : ∀ t ⊆ s k, μ t ≠ ∞ := fun t ht => ne_top_of_le_ne_top hk (measure_mono ht)
  rw [← ENNReal.sub_sub_cancel hk (iInf_le (fun i => μ (s i)) k), ENNReal.sub_iInf, ←
    ENNReal.sub_sub_cancel hk (measure_mono (iInter_subset _ k)), ←
    measure_sdiff (iInter_subset _ k) (.iInter h) (this _ (iInter_subset _ k)),
    sdiff_iInter, Directed.measure_iUnion]
  · congr 1
    refine le_antisymm (iSup_mono' fun i => ?_) (iSup_mono fun i => le_measure_sdiff)
    rcases hd i k with ⟨j, hji, hjk⟩
    use j
    rw [← measure_sdiff hjk (h _) (this _ hjk)]
    gcongr
  · exact hd.mono_comp _ fun _ _ => sdiff_subset_sdiff_right

/-- **Continuity from above**:
the measure of the intersection of a monotone family of measurable sets
indexed by a type with countably generated `atBot` filter
is equal to the infimum of the measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be390e716cdc71c2e888e6c47fa50e7cbc0e0ca1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
