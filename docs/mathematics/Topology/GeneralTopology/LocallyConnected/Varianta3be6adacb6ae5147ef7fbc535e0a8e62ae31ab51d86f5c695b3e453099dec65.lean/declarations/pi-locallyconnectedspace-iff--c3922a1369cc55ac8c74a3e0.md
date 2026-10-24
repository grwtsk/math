# Pi.locallyConnectedSpace_iff

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
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9308034b-5104-2795-82f4-a14e55ba66f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7afffe1b-2951-64e7-3072-5e667f524edf",
  "kind": "theorem",
  "lexical_name": "Pi.locallyConnectedSpace_iff",
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
  "slug": "pi-locallyconnectedspace-iff--c3922a1369cc55ac8c74a3e0",
  "source": {
    "blob": "afd96aafe30a89a89cc000ac6322f2c07b6883c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3922a1369cc55ac8c74a3e0d4fb573a29260305544fea799f99e1468761f88d",
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

Occurrence: `result:7afffe1b-2951-64e7-3072-5e667f524edf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pi.locallyConnectedSpace_iff [∀ i, TopologicalSpace (X i)] :
    LocallyConnectedSpace (∀ i, X i) ↔
      IsEmpty (∀ i, X i) ∨
        (∀ i, LocallyConnectedSpace (X i)) ∧ {i | ¬PreconnectedSpace (X i)}.Finite := by
  refine ⟨fun h ↦ ?_, ?_⟩
  · rcases isEmpty_or_nonempty (∀ i, X i) with he | hne
    · exact .inl he
    obtain ⟨x⟩ := hne
    classical
    have : ∀ i, Nonempty (X i) := Classical.nonempty_pi.mp ⟨x⟩
    refine .inr ⟨fun i ↦ ((isOpenMap_eval i).isQuotientMap (continuous_apply i)
      (Function.surjective_eval i)).locallyConnectedSpace, ?_⟩
    have hVn : connectedComponent x ∈ 𝓝 x :=
      isOpen_connectedComponent.mem_nhds mem_connectedComponent
    rw [nhds_pi, Filter.mem_pi] at hVn
    obtain ⟨J, hJ, t, ht, htV⟩ := hVn
    refine hJ.subset fun i hi ↦ by_contra fun hiJ ↦ hi ?_
    suffices himg : Function.eval i '' connectedComponent x = univ from
      ⟨himg ▸ isPreconnected_connectedComponent.image _ (continuous_apply i).continuousOn⟩
    refine (subset_univ _).antisymm fun z _ ↦ ⟨Function.update x i z, htV fun j hj ↦ ?_, by simp⟩
    rw [Function.update_of_ne (ne_of_mem_of_not_mem hj hiJ)]
    exact mem_of_mem_nhds (ht j)
  · rintro (he | ⟨hloc, hfin⟩)
    · exact ⟨he.elim⟩
    · exact locallyConnectedSpace_of_finite_not_preconnectedSpace hfin

end LocallyConnectedSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyConnected/Varianta3be6adacb6ae5147ef7fbc535e0a8e62ae31ab51d86f5c695b3e453099dec65.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afd96aafe30a89a89cc000ac6322f2c07b6883c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
