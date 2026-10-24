# square_preserves_integer_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f84448f2ebe8c84419a7bc3d17b7a3aabd898b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fa32bcc-b7bb-4569-0d08-83c289d79e5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ecb4b1c-374d-124a-0067-487669feedb4",
  "kind": "theorem",
  "lexical_name": "square_preserves_integer_roots",
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
  "slug": "square-preserves-integer-roots--6eb2c4652909b9a01ec675ed",
  "source": {
    "blob": "0f84448f2ebe8c84419a7bc3d17b7a3aabd898b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 52,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eb2c4652909b9a01ec675ed8b4070ee84a8820479c5fb74e0776142ba0b80be",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ecb4b1c-374d-124a-0067-487669feedb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_preserves_integer_roots (p : Polynomial ℤ) (x : ℤ) :
    (p ^ 2).eval x = 0 ↔ p.eval x = 0 := by simp

/-- Every strictly positive power preserves the integer-root predicate. Exponent
zero is excluded, so this cannot replace a nonconstant polynomial by a constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f84448f2ebe8c84419a7bc3d17b7a3aabd898b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
