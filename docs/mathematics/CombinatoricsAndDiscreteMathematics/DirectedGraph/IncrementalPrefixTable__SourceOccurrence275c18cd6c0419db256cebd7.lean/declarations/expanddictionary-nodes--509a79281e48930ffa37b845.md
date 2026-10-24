# expandDictionary_nodes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4ce724e-6b0a-7d69-966a-74064f7a4f73",
  "kind": "theorem",
  "lexical_name": "expandDictionary_nodes",
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
  "slug": "expanddictionary-nodes--509a79281e48930ffa37b845",
  "source": {
    "blob": "8460d6c0d1e45a4f5eb51f1068860a5d15659022",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 210,
    "path": "GRWTSK/Combinatorics/DirectedGraph/IncrementalPrefixTable.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:509a79281e48930ffa37b8451f09c560c4f31baba665bb7df05bc63a24b9200a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrence275c18cd6c0419db256cebd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4ce724e-6b0a-7d69-966a-74064f7a4f73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expandDictionary_nodes (oldRows newRows : List (Key × Occurrence root)) :
    expandDictionary (nodes oldRows newRows) = some (dictionary oldRows newRows) := by
  have hlength : (nodes oldRows newRows).length = (dictionary oldRows newRows).length := by
    rw [nodes_eq_map, List.length_map]
  have hbound (slot : Fin (nodes oldRows newRows).length) :
      slot.1 < (dictionary oldRows newRows).length := hlength ▸ slot.2
  have hfun : (fun slot : Fin (nodes oldRows newRows).length =>
      decodeSlot (nodes oldRows newRows) slot.1) =
      (fun slot : Fin (nodes oldRows newRows).length =>
        some ((dictionary oldRows newRows)[slot.1]'(hbound slot))) := by
    funext slot
    exact decodeSlot_nodes oldRows newRows slot.1 _ (List.getElem_mem (hbound slot))
      (List.getElem?_eq_getElem (hbound slot))
  have hlist : (List.finRange (nodes oldRows newRows).length).map
      (fun slot => (dictionary oldRows newRows)[slot.1]'(hbound slot)) =
      dictionary oldRows newRows := by
    rw [← List.ofFn_eq_map]
    apply List.ext_getElem
    · simp only [List.length_ofFn, hlength]
    · intro index hleft hright
      simp only [List.getElem_ofFn]
  unfold expandDictionary
  rw [hfun]
  calc
    _ = some ((List.finRange (nodes oldRows newRows).length).map
        (fun slot => (dictionary oldRows newRows)[slot.1]'(hbound slot))) := List.mapM_pure
    _ = some (dictionary oldRows newRows) := congrArg some hlist

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrence275c18cd6c0419db256cebd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/IncrementalPrefixTable.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8460d6c0d1e45a4f5eb51f1068860a5d15659022` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
