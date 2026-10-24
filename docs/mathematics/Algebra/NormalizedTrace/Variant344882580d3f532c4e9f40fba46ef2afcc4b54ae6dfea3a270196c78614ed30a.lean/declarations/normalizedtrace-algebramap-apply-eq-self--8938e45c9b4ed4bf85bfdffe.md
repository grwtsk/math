# normalizedTrace_algebraMap_apply_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5a68e220e09f1653768c4f812635e0798d79d93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c315392-5293-ca82-9599-25c685d1af7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e42fd174-e8f1-78f2-996c-f82524ae65cd",
  "kind": "theorem",
  "lexical_name": "normalizedTrace_algebraMap_apply_eq_self",
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
  "slug": "normalizedtrace-algebramap-apply-eq-self--8938e45c9b4ed4bf85bfdffe",
  "source": {
    "blob": "d5a68e220e09f1653768c4f812635e0798d79d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 224,
    "path": "GRWTSK/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8938e45c9b4ed4bf85bfdffe70166aae71bfcb52cb0ff17b3b0870fc27f254cf",
  "verification": {
    "reference": "docs/verification/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e42fd174-e8f1-78f2-996c-f82524ae65cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedTrace_algebraMap_apply_eq_self (a : F) :
    normalizedTrace F K (algebraMap F K a) = a := by simp

/-- The normalized trace map is a left inverse of the algebra map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a68e220e09f1653768c4f812635e0798d79d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
