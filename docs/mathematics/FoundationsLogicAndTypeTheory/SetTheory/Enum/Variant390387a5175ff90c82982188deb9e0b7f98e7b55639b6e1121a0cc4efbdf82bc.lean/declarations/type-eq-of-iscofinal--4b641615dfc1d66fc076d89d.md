# type_eq_of_isCofinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d6abcfb336590783825cf05180fc7ce554c0427",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/390387a5175ff90c82982188deb9e0b7f98e7b55639b6e1121a0cc4efbdf82bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cacfde15-3f39-a64a-02f2-73d3a4326823",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab65c171-edbb-98bd-8f19-e1939ac82274",
  "kind": "theorem",
  "lexical_name": "type_eq_of_isCofinal",
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
  "slug": "type-eq-of-iscofinal--4b641615dfc1d66fc076d89d",
  "source": {
    "blob": "5d6abcfb336590783825cf05180fc7ce554c0427",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant390387a5175ff90c82982188deb9e0b7f98e7b55639b6e1121a0cc4efbdf82bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b641615dfc1d66fc076d89dc60cdb5c209d296b1f8b96ca62f6c58d36bdb0c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant390387a5175ff90c82982188deb9e0b7f98e7b55639b6e1121a0cc4efbdf82bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab65c171-edbb-98bd-8f19-e1939ac82274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem type_eq_of_isCofinal {s : Set α} (hs : IsCofinal s) : typeLT s = typeLT α := by
  apply (RelEmbedding.ofMonotone Subtype.val (by simp)).ordinal_type_le.antisymm
  rw [← ord_cardinalMk, ord_le, card_type, ← cof_eq_cardinalMk]
  exact cof_le hs

/-- Enumerate the elements of a cofinal subset of `α` by `α` itself. This is a generalization of
`Nat.nth`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant390387a5175ff90c82982188deb9e0b7f98e7b55639b6e1121a0cc4efbdf82bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant390387a5175ff90c82982188deb9e0b7f98e7b55639b6e1121a0cc4efbdf82bc.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d6abcfb336590783825cf05180fc7ce554c0427` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
