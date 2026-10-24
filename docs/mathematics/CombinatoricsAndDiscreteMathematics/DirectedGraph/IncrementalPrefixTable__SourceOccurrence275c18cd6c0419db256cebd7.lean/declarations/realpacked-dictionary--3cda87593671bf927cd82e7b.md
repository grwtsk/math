# realPacked_dictionary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dabfaaf-6f1d-7bd4-bc17-b7a829f81c7e",
  "kind": "theorem",
  "lexical_name": "realPacked_dictionary",
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
  "slug": "realpacked-dictionary--3cda87593671bf927cd82e7b",
  "source": {
    "blob": "8460d6c0d1e45a4f5eb51f1068860a5d15659022",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 270,
    "path": "GRWTSK/Combinatorics/DirectedGraph/IncrementalPrefixTable.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cda87593671bf927cd82e7b25b900c51f53ae4e7d3bf96d66e96a4de77dcdb2",
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

Occurrence: `result:8dabfaaf-6f1d-7bd4-bc17-b7a829f81c7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realPacked_dictionary (oldRows newRows : List (Key × Occurrence root)) :
    (realPacked oldRows newRows).dictionary = dictionary oldRows newRows := by
  have hmissing : IncrementalDictionary.missingPayloads (dictionary oldRows newRows)
      (traceRows newRows) = [] := by
    unfold IncrementalDictionary.missingPayloads
    apply (List.dedup_eq_nil _).mpr
    apply List.filter_eq_nil_iff.mpr
    intro initial hmem
    obtain ⟨entry, hentry, rfl⟩ := List.mem_map.mp hmem
    simp [new_trace_mem oldRows newRows entry hentry]
  simp only [realPacked, IncrementalDictionary.appendEntries, oldPacked, replaceDictionary]
  rw [IncrementalDictionary.expandedDictionary, hmissing, List.append_nil]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrence275c18cd6c0419db256cebd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/IncrementalPrefixTable.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8460d6c0d1e45a4f5eb51f1068860a5d15659022` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
