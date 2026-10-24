# update_wellFormed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:753156b8-17d1-6582-2a88-30157a00b1f4",
  "kind": "theorem",
  "lexical_name": "update_wellFormed",
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
  "slug": "update-wellformed--1d0773125675bced66e79de4",
  "source": {
    "blob": "b7ca2ab0d88aa2c53f1e942fa124042fe453a2ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 274,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d0773125675bced66e79de4d51bcd711948db12f4b0dd7893e58c0e63fbe972",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:753156b8-17d1-6582-2a88-30157a00b1f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem update_wellFormed (state : State V Key) (hstate : WellFormed state)
    (rows : List (Key × Occurrence state.root)) : WellFormed (update state rows) := by
  refine ⟨IncrementalDictionary.expandedDictionary_nodup _ _ hstate.nodup, ?_, ?_,
    extended_cells state hstate rows, ?_⟩
  · intro first second hmem hprefix
    rcases (mem_extended_iff state rows second).mp hmem with hold | hnew
    · exact (mem_extended_iff state rows first).mpr (Or.inl (hstate.closed hold hprefix))
    · exact (mem_extended_iff state rows first).mpr (Or.inr (prefix_closed rows hnew hprefix))
  · intro initial hmem
    rcases (mem_extended_iff state rows initial).mp hmem with hold | hnew
    · exact hstate.rooted initial hold
    · exact inventory_valid rows initial hnew
  · have hvalid := IncrementalDictionary.appendEntries_valid (basePacked state rows)
      (traceRows rows) (base_valid state hstate rows)
    change Valid (⟨extendedDictionary state rows,
      (realPacked state rows).references⟩ : Packed Key _)
    rw [← real_dictionary state rows]
    exact hvalid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7ca2ab0d88aa2c53f1e942fa124042fe453a2ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
