# Pi.locallyConnectedSpace_of_finite_not_preconnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afd96aafe30a89a89cc000ac6322f2c07b6883c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7edb52c4-dbfd-5268-dfed-b2e268fb8314",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4474e39-4da7-ca60-2d29-630dd5f3a069",
  "kind": "theorem",
  "lexical_name": "Pi.locallyConnectedSpace_of_finite_not_preconnectedSpace",
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
  "slug": "pi-locallyconnectedspace-of-finite-not-preconnectedspace--dafc9da6133909f6b87f72d6",
  "source": {
    "blob": "afd96aafe30a89a89cc000ac6322f2c07b6883c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dafc9da6133909f6b87f72d6016445383eb9c0c58e86acebf521cb2146a94d62",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4474e39-4da7-ca60-2d29-630dd5f3a069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pi.locallyConnectedSpace_of_finite_not_preconnectedSpace [∀ i, TopologicalSpace (X i)]
    [∀ i, LocallyConnectedSpace (X i)] (hfinite : {i | ¬PreconnectedSpace (X i)}.Finite) :
    LocallyConnectedSpace (∀ i, X i) := by
  refine locallyConnectedSpace_iff_connected_subsets.2 fun x U hU ↦ ?_
  rw [nhds_pi, Filter.mem_pi] at hU
  obtain ⟨J, hJ, t, ht, htU⟩ := hU
  let K := J ∪ {i | ¬PreconnectedSpace (X i)}
  refine ⟨K.pi fun i ↦ connectedComponentIn (t i) (x i),
    set_pi_mem_nhds (hJ.union hfinite) fun i _ ↦ connectedComponentIn_mem_nhds (ht i), ?_,
    fun f hf ↦ htU fun i hiJ ↦ connectedComponentIn_subset _ _ (hf i (mem_union_left _ hiJ))⟩
  classical
  rw [← univ_pi_piecewise_univ]
  refine isPreconnected_univ_pi fun i ↦ ?_
  by_cases hi : i ∈ K
  · rw [piecewise_eq_of_mem _ _ _ hi]
    exact isPreconnected_connectedComponentIn
  · rw [piecewise_eq_of_notMem _ _ _ hi]
    have : PreconnectedSpace (X i) := not_not.mp (not_or.1 hi).2
    exact isPreconnected_univ

/-- A finite product of locally connected spaces is locally connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afd96aafe30a89a89cc000ac6322f2c07b6883c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
