# decodeSlot_state

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e412a8a0-f795-fe05-183c-ee2ab37ddffb",
  "kind": "theorem",
  "lexical_name": "decodeSlot_state",
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
  "slug": "decodeslot-state--13248a206cb5365a0949fb88",
  "source": {
    "blob": "cdc163ad6de5c4c0f69405f1d2cdcd20b137d037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableState.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13248a206cb5365a0949fb88b54cadf568062dc8dbd17a47b593f71609fdc3ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e412a8a0-f795-fe05-183c-ee2ab37ddffb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decodeSlot_state (state : State V Key) (hstate : WellFormed state) (slot : Nat)
    (initial : List (EdgeTrace.TotalEdge V)) (hmem : initial ∈ state.dictionary)
    (hlookup : state.dictionary[slot]? = some initial) :
    decodeSlot state.nodes slot = some initial := by
  simp only [decodeSlot, node_lookup state hstate slot initial hlookup,
    Option.bind_eq_bind, Option.bind, IncrementalPrefixTable.cell]
  exact expand_state state hstate initial.length initial slot hmem hlookup (Nat.le_refl _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/PrefixTableState.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc163ad6de5c4c0f69405f1d2cdcd20b137d037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
