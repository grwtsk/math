# b₈_of_isCharTwoJEqZeroNF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d68f92c7fde11602eda407bb10231172b8d608f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 571,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0f5d70a-be94-6089-109c-d191be495911",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a0503ed-02c0-3f2e-5a35-19221f203976",
  "kind": "theorem",
  "lexical_name": "b₈_of_isCharTwoJEqZeroNF",
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
  "slug": "b-of-ischartwojeqzeronf--534e4f587c06cdba8df8e1b8",
  "source": {
    "blob": "4d68f92c7fde11602eda407bb10231172b8d608f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 571,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:534e4f587c06cdba8df8e1b8df0a44663d4a168f949679c42c79fd2a0b38917d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a0503ed-02c0-3f2e-5a35-19221f203976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem b₈_of_isCharTwoJEqZeroNF : W.b₈ = -W.a₄ ^ 2 := by
  rw [b₈, a₁_of_isCharTwoJEqZeroNF, a₂_of_isCharTwoJEqZeroNF]
  ring1

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variant85c13b8d6d9b7144125b0e6c02f690c20b508c906448e1f0db5f5bea0e4587df.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d68f92c7fde11602eda407bb10231172b8d608f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
