# apply_diag_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7aeb247706fd7f50349e37ed551a0ca14b39044d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a23086c-1386-55b8-2ac3-24ce26313ac7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0484bbb2-653b-469e-9804-cdce46f12e61",
  "kind": "theorem",
  "lexical_name": "apply_diag_ne",
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
  "slug": "apply-diag-ne--5b0ee6ebba028a916da85986",
  "source": {
    "blob": "7aeb247706fd7f50349e37ed551a0ca14b39044d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b0ee6ebba028a916da85986d506a93feb063597ba2d688da0039b5c72672b53",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0484bbb2-653b-469e-9804-cdce46f12e61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_diag_ne [MulZeroOneClass α] [Nontrivial α] (h : IsAdjMatrix A) (i : V) :
    ¬A i i = 1 := by simp [h.apply_diag i]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aeb247706fd7f50349e37ed551a0ca14b39044d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
