# map_le_map_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1321606a8ae06d88c818ca1f4bc286ffcff0c044",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/290f1e01c04615ac9a72d5e53c7a3b98e0c27182ea054b318ebb3e1ef16567c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e23824fa-5f26-58d9-b3e9-48bc33c9377e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0de2354-1eea-4537-dd5e-b225c1d7ce8d",
  "kind": "theorem",
  "lexical_name": "map_le_map_iff",
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
  "slug": "map-le-map-iff--ab1bb91c3086726a12255f69",
  "source": {
    "blob": "1321606a8ae06d88c818ca1f4bc286ffcff0c044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 359,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant290f1e01c04615ac9a72d5e53c7a3b98e0c27182ea054b318ebb3e1ef16567c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab1bb91c3086726a12255f69f7d44ac496497e8328cbacd4fd81f16ca8362270",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant290f1e01c04615ac9a72d5e53c7a3b98e0c27182ea054b318ebb3e1ef16567c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0de2354-1eea-4537-dd5e-b225c1d7ce8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_le_map_iff {f : α → β} (hf : Function.Injective f) {s t : Multiset α} :
    s.map f ≤ t.map f ↔ s ≤ t := by
  classical
    refine ⟨fun h => le_iff_count.mpr fun a => ?_, map_le_map⟩
    simpa [count_map_eq_count' f _ hf] using le_iff_count.mp h (f a)

/-- Associate to an embedding `f` from `α` to `β` the order embedding that maps a multiset to its
image under `f`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant290f1e01c04615ac9a72d5e53c7a3b98e0c27182ea054b318ebb3e1ef16567c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant290f1e01c04615ac9a72d5e53c7a3b98e0c27182ea054b318ebb3e1ef16567c5.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1321606a8ae06d88c818ca1f4bc286ffcff0c044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
