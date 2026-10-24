# lt_mul_inv_of_mul_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dba1a34cc18724d060f99ac1f1661e4594b887bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cecbe11534d5b2e3eca87d11d4c114ca2bfc293257d2bfadb5c7bd8e5aedf95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d01ba2a0-44cb-7f4f-69bf-a4768bb6906f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91ee3c67-39e4-96ed-59c4-153ef2c09b0b",
  "kind": "theorem",
  "lexical_name": "lt_mul_inv_of_mul_lt",
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
  "slug": "lt-mul-inv-of-mul-lt--e051ddf6a67984020009f68e",
  "source": {
    "blob": "dba1a34cc18724d060f99ac1f1661e4594b887bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 75,
    "path": "GRWTSK/Algebra/Field/Variant0cecbe11534d5b2e3eca87d11d4c114ca2bfc293257d2bfadb5c7bd8e5aedf95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e051ddf6a67984020009f68eeba8e2127dfeaeb65886ae7f386d401267b7bfb5",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant0cecbe11534d5b2e3eca87d11d4c114ca2bfc293257d2bfadb5c7bd8e5aedf95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91ee3c67-39e4-96ed-59c4-153ef2c09b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lt_mul_inv_of_mul_lt {a b c : R} (h : 0 < b) (h' : a * b < c) : a < c * b⁻¹ := by
  simpa [Semiring.mul_assoc, Field.mul_inv_cancel (Preorder.ne_of_gt h), Semiring.mul_one] using
    OrderedRing.mul_lt_mul_of_pos_right h' (inv_pos_iff.mpr h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant0cecbe11534d5b2e3eca87d11d4c114ca2bfc293257d2bfadb5c7bd8e5aedf95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant0cecbe11534d5b2e3eca87d11d4c114ca2bfc293257d2bfadb5c7bd8e5aedf95.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dba1a34cc18724d060f99ac1f1661e4594b887bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
