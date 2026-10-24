# exists_finiteIndex_of_leftCoset_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37b507a6c6f810c77b88bd72a6d78639136ff249",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ad5cffa-503b-ed0d-585e-dbdd28ded01a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6063f250-d507-5cac-838c-0bd5248e8038",
  "kind": "theorem",
  "lexical_name": "exists_finiteIndex_of_leftCoset_cover",
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
  "slug": "exists-finiteindex-of-leftcoset-cover--b009c0b881a1b4f533b6fc98",
  "source": {
    "blob": "37b507a6c6f810c77b88bd72a6d78639136ff249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b009c0b881a1b4f533b6fc98abdaa151f36828b13649b2b2ae747ef2c811b011",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6063f250-d507-5cac-838c-0bd5248e8038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finiteIndex_of_leftCoset_cover : ∃ k ∈ s, (H k).FiniteIndex := by
  classical
  have ⟨j, hj⟩ : s.Nonempty := Finset.nonempty_iff_ne_empty.mpr fun hempty => by
    rw [hempty, ← Finset.set_biUnion_coe, Finset.coe_empty, Set.biUnion_empty] at hcovers
    exact Set.empty_ne_univ hcovers
  by_cases hcovers' : ⋃ i ∈ s.filter (H · = H j), g i • (H i : Set G) = Set.univ
  · rw [Set.iUnion₂_congr fun i hi => by rw [(Finset.mem_filter.mp hi).right]] at hcovers'
    exact ⟨j, hj, finiteIndex_of_leftCoset_cover_const hcovers'⟩
  · have ⟨i, hi, _, hfi⟩ :=
      exists_finiteIndex_of_leftCoset_cover_aux hcovers j hj hcovers'
    exact ⟨i, hi, hfi⟩

-- Auxiliary to `leftCoset_cover_filter_FiniteIndex` and `one_le_sum_inv_index_of_leftCoset_cover`.
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CosetCover/Variante03706ae54d2f6ff7e074ef5eef26ca7ff902d2b7168dc3224ff4394ee7738fe.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37b507a6c6f810c77b88bd72a6d78639136ff249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
