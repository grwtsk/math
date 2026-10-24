# nonempty_ring_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e078ba4e9a95ab4f39b5941c930f39a63e25e8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbb636e3599811fd1fa099cc9b7fe69aa46b10103068d78ac3ef0b542d3c38ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea5e3c1d-1f35-a630-537a-d4cecf553515",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38464d91-b417-9ca3-0acf-2385122f6d8f",
  "kind": "theorem",
  "lexical_name": "nonempty_ring_iff",
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
  "slug": "nonempty-ring-iff--4747332ccdb1e34dfecd241c",
  "source": {
    "blob": "2e078ba4e9a95ab4f39b5941c930f39a63e25e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 131,
    "path": "GRWTSK/Algebra/Free/Variantdbb636e3599811fd1fa099cc9b7fe69aa46b10103068d78ac3ef0b542d3c38ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4747332ccdb1e34dfecd241cea5e1cdc5aaeb24d1867c0af7a8c0b6104e0ab3f",
  "verification": {
    "reference": "docs/verification/Algebra/Free/Variantdbb636e3599811fd1fa099cc9b7fe69aa46b10103068d78ac3ef0b542d3c38ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38464d91-b417-9ca3-0acf-2385122f6d8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_ring_iff : Nonempty (Ring α) ↔ Nonempty α :=
  ⟨Nonempty.map (·.zero), fun _ => (nonempty_commRing _).map (·.toRing)⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Free/Variantdbb636e3599811fd1fa099cc9b7fe69aa46b10103068d78ac3ef0b542d3c38ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Free/Variantdbb636e3599811fd1fa099cc9b7fe69aa46b10103068d78ac3ef0b542d3c38ee.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e078ba4e9a95ab4f39b5941c930f39a63e25e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
