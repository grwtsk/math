# simple_iff_isSimpleModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9f85be1110c2f138d6d6890ea0903d7a9a9af34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa5d3fd7-eca1-0154-e330-23646f066d17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d60d844-7717-1295-680a-4d9a14341be5",
  "kind": "theorem",
  "lexical_name": "simple_iff_isSimpleModule",
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
  "slug": "simple-iff-issimplemodule--a07089a851c87f23c94c01d5",
  "source": {
    "blob": "c9f85be1110c2f138d6d6890ea0903d7a9a9af34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 23,
    "path": "GRWTSK/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a07089a851c87f23c94c01d5941890d0bd8339d03e5842f1c70dfe83be92457f",
  "verification": {
    "reference": "docs/verification/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d60d844-7717-1295-680a-4d9a14341be5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simple_iff_isSimpleModule : Simple (of R M) ↔ IsSimpleModule R M :=
  (simple_iff_subobject_isSimpleOrder _).trans (subobjectModule (of R M)).isSimpleOrder_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Simple/Variant113446abac09701e34720a484ded3223146a4306a14c933c1a52dbbd44e5cf39.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9f85be1110c2f138d6d6890ea0903d7a9a9af34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
