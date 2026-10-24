# closure_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9dbe53ab8cc6ce454f4c068e9d4104fdab8d0a17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 436,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:839e4257-5fbd-88a8-1376-b978c1e4ba35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f39bce1-a43c-1afb-ae35-549aaf32b7b6",
  "kind": "theorem",
  "lexical_name": "closure_iUnion",
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
  "slug": "closure-iunion--5b778de07c6a4a49bf51c314",
  "source": {
    "blob": "9dbe53ab8cc6ce454f4c068e9d4104fdab8d0a17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 436,
    "path": "GRWTSK/Algebra/GroupTheory/Lattice/Variantdab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b778de07c6a4a49bf51c3143b61ff68220c11e46e205a9dd5cff52b986f6491",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lattice/Variantdab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f39bce1-a43c-1afb-ae35-549aaf32b7b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_iUnion {ι} (s : ι → Set G) : closure (⋃ i, s i) = ⨆ i, closure (s i) :=
  (Subgroup.gi G).gc.l_iSup

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lattice/Variantdab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lattice/Variantdab58e0302c1eedbcc9fac9b3432d774956ec425976133de0f764b888f0cfa6c.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dbe53ab8cc6ce454f4c068e9d4104fdab8d0a17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
