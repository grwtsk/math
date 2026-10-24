# extended_cells

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d680c8e-e9af-8e9e-ae39-c199e76a1fbb",
  "kind": "theorem",
  "lexical_name": "extended_cells",
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
  "slug": "extended-cells--00aca1d7c5671e3a1b58d3dc",
  "source": {
    "blob": "b7ca2ab0d88aa2c53f1e942fa124042fe453a2ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 260,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00aca1d7c5671e3a1b58d3dc5952b264a40204db021b024df005381d87db6193",
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

Occurrence: `result:5d680c8e-e9af-8e9e-ae39-c199e76a1fbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extended_cells (state : State V Key) (hstate : WellFormed state)
    (rows : List (Key × Occurrence state.root)) :
    extendedNodes state rows = (extendedDictionary state rows).map
      (IncrementalPrefixTable.cell (extendedDictionary state rows)) := by
  have hold : state.nodes = state.dictionary.map
      (IncrementalPrefixTable.cell (extendedDictionary state rows)) := by
    rw [hstate.cells]
    apply List.map_congr_left
    intro initial hmem
    exact (old_cell_stable state hstate rows initial hmem).symm
  rw [extendedNodes, hold, ← List.map_append]
  rfl

/-- The actual updater closes the structural invariant on arbitrary stored states. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7ca2ab0d88aa2c53f1e942fa124042fe453a2ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
