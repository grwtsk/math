# exists_compact_superset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8daae99ac29b2ad06fbe9308dc7fb988c732763",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b6595bb61a6c53eee398a96f7fb2301cf24f400f82ce9fdfe4ee1d5dd3e64ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cb2f296-12f3-4c8b-59bf-5496cfeb8cb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:951daeb1-3ef9-4c02-3108-18e75ae7ac9b",
  "kind": "theorem",
  "lexical_name": "exists_compact_superset",
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
  "slug": "exists-compact-superset--f3973ec8398a106aceaae50c",
  "source": {
    "blob": "a8daae99ac29b2ad06fbe9308dc7fb988c732763",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant4b6595bb61a6c53eee398a96f7fb2301cf24f400f82ce9fdfe4ee1d5dd3e64ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3973ec8398a106aceaae50c6cfc922c6c09ec7efca8959eec6da42477887cc6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant4b6595bb61a6c53eee398a96f7fb2301cf24f400f82ce9fdfe4ee1d5dd3e64ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:951daeb1-3ef9-4c02-3108-18e75ae7ac9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_compact_superset [WeaklyLocallyCompactSpace X] {K : Set X} (hK : IsCompact K) :
    ∃ K', IsCompact K' ∧ K ⊆ interior K' := by
  choose s hc hmem using fun x : X ↦ exists_compact_mem_nhds x
  rcases hK.elim_nhds_subcover _ fun x _ ↦ interior_mem_nhds.2 (hmem x) with ⟨I, -, hIK⟩
  refine ⟨⋃ x ∈ I, s x, I.isCompact_biUnion fun _ _ ↦ hc _, hIK.trans ?_⟩
  exact iUnion₂_subset fun x hx ↦ interior_mono <| subset_iUnion₂ (s := fun x _ ↦ s x) x hx

/-- In a weakly locally compact space,
the filters `𝓝 x` and `cocompact X` are disjoint for all `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant4b6595bb61a6c53eee398a96f7fb2301cf24f400f82ce9fdfe4ee1d5dd3e64ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant4b6595bb61a6c53eee398a96f7fb2301cf24f400f82ce9fdfe4ee1d5dd3e64ce.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8daae99ac29b2ad06fbe9308dc7fb988c732763` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
