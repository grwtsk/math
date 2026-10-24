# theorem_with_local_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d6658f77b19fd7ecc0fb3f65e72178bc771d08e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:acf70f0d-886a-9fee-16b7-86eb191b1447",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c97d5391-185c-e9b1-fcf3-03d22de5d86a",
  "kind": "theorem",
  "lexical_name": "theorem_with_local_def",
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
  "slug": "theorem-with-local-def--8bfa6f6c714ad9fe08c37985",
  "source": {
    "blob": "9d6658f77b19fd7ecc0fb3f65e72178bc771d08e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 207,
    "path": "GRWTSK/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bfa6f6c714ad9fe08c379854d1834e0080253636af16e7151937e90cef80bda",
  "verification": {
    "reference": "docs/verification/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c97d5391-185c-e9b1-fcf3-03d22de5d86a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_with_local_def : propose_to_move_this_def = 0 := rfl

-- This definition depends on definitions in two different files, so should not be moved.
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d6658f77b19fd7ecc0fb3f65e72178bc771d08e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
