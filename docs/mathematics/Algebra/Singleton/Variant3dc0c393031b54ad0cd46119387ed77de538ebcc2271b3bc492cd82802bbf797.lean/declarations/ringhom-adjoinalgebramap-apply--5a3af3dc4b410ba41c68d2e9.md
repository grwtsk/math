# RingHom.adjoinAlgebraMap_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0faa8ec64c7e962130bf8f28daf8fffd071f400b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d28ba137-d369-9fc1-166d-57f7a74d476c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47c89fad-9094-b838-66a4-8bf9b78c4b24",
  "kind": "theorem",
  "lexical_name": "RingHom.adjoinAlgebraMap_apply",
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
  "slug": "ringhom-adjoinalgebramap-apply--5a3af3dc4b410ba41c68d2e9",
  "source": {
    "blob": "0faa8ec64c7e962130bf8f28daf8fffd071f400b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 39,
    "path": "GRWTSK/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a3af3dc4b410ba41c68d2e9a4afb8840a0e454c39024fe8ee94e7532bd0d958",
  "verification": {
    "reference": "docs/verification/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47c89fad-9094-b838-66a4-8bf9b78c4b24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RingHom.adjoinAlgebraMap_apply (x : A[b]) :
    (RingHom.adjoinAlgebraMap b x (C := C) : C) = algebraMap B C x := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0faa8ec64c7e962130bf8f28daf8fffd071f400b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
