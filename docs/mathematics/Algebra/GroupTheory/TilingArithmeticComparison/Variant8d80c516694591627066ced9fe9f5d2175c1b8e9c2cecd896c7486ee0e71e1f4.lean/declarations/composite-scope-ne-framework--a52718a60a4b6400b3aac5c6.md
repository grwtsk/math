# composite_scope_ne_framework

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "345f0a7e2ef8b273809e7f431a29ade71833481c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e7c4c71-f343-ae4f-867d-d25885229e3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:975214d0-8c57-7f3f-9c66-e15e70f4759a",
  "kind": "theorem",
  "lexical_name": "composite_scope_ne_framework",
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
  "slug": "composite-scope-ne-framework--a52718a60a4b6400b3aac5c6",
  "source": {
    "blob": "345f0a7e2ef8b273809e7f431a29ade71833481c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 271,
    "path": "GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a52718a60a4b6400b3aac5c6b2f3e7be08057e9b61590a5f3bd20b0516068614",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:975214d0-8c57-7f3f-9c66-e15e70f4759a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem composite_scope_ne_framework :
    T.composite.scope ≠ .framework := by
  rw [T.composite_scope]
  intro h
  cases h

end Datum

/-! ## Explicit propagation of representation parameters -/

/--
A family of complete paths remains represented: each representation selects
its own source and the tagged sigma target remembers which representation was
used.  No existential hides that parameter.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `345f0a7e2ef8b273809e7f431a29ade71833481c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
