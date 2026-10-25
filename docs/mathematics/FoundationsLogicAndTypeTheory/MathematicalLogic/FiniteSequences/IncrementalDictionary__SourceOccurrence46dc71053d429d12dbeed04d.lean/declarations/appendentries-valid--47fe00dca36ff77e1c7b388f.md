# appendEntries_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b02c965a-3461-959e-55d0-3f0302077c4f",
  "kind": "theorem",
  "lexical_name": "appendEntries_valid",
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
  "slug": "appendentries-valid--47fe00dca36ff77e1c7b388f",
  "source": {
    "blob": "8f0e5f1ad718e59cb86bc299291ec40a7789fbf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 117,
    "path": "GRWTSK/Logic/FiniteSequences/IncrementalDictionary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47fe00dca36ff77e1c7b388fd7c53a92715a2b6ee607d458e87e5d458c128bd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IncrementalDictionary__SourceOccurrence46dc71053d429d12dbeed04d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b02c965a-3461-959e-55d0-3f0302077c4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem appendEntries_valid (original : Packed Key Payload) (entries : List (Key × Payload))
    (hvalid : Valid original) : Valid (appendEntries original entries) := by
  intro reference hreference
  change reference ∈ original.references ++ entries.map
    (fun entry => (entry.1, (expandedDictionary original.dictionary entries).idxOf entry.2))
      at hreference
  rcases List.mem_append.mp hreference with hold | hnew
  · exact Nat.lt_of_lt_of_le (hvalid reference hold)
      (dictionary_prefix original.dictionary entries).length_le
  · obtain ⟨entry, hentry, rfl⟩ := List.mem_map.mp hnew
    exact List.idxOf_lt_length_of_mem (payload_mem_expandedDictionary original.dictionary hentry)

/-- Actual incremental reconstruction preserves the old decoded sequence and appends every new row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IncrementalDictionary__SourceOccurrence46dc71053d429d12dbeed04d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/FiniteSequences/IncrementalDictionary.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f0e5f1ad718e59cb86bc299291ec40a7789fbf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
