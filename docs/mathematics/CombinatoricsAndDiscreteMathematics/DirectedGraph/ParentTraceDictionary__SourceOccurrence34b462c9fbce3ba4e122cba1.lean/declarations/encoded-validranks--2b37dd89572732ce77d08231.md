# encoded_validRanks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5d0a425-4c98-937e-ed5e-23d87d51ebc6",
  "kind": "theorem",
  "lexical_name": "encoded_validRanks",
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
  "slug": "encoded-validranks--2b37dd89572732ce77d08231",
  "source": {
    "blob": "927580b708fbc4793a5d0f659c88cf3afc8bb859",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 160,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b37dd89572732ce77d08231c13607100aa74e4562076ba2e6545c8f3e009824",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5d0a425-4c98-937e-ed5e-23d87d51ebc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encoded_validRanks (rows : List (Key × Occurrence root)) :
    ValidRanks (encodedNodes rows) := by
  intro slot node hlookup
  have hmem : node ∈ encodedNodes rows := List.mem_of_getElem? hlookup
  obtain ⟨initial, hinitial, rfl⟩ := List.mem_map.mp hmem
  by_cases hnil : initial = []
  · subst initial
    simp [nodeFor]
  · simp only [nodeFor, dif_neg hnil]
    exact ⟨nodeFor rows initial.dropLast,
      encoded_lookup rows _ _ (position_lookup rows _ (parent_mem rows initial hinitial)),
      parent_rank_lt initial hnil⟩

/-- Actual expansion equals the original trace when fuel covers its length rank. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `927580b708fbc4793a5d0f659c88cf3afc8bb859` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
