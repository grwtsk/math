# inl_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4c0ee01d3d91aea12920afcfe1da7d915f87537",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27a24b60-a0c0-8a07-d00e-b53d9ec1434d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e508c9c4-25e6-e949-1485-e71f47b71b8a",
  "kind": "theorem",
  "lexical_name": "inl_sub",
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
  "slug": "inl-sub--ce8c2a7c969cdef241e0e138",
  "source": {
    "blob": "b4c0ee01d3d91aea12920afcfe1da7d915f87537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 325,
    "path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce8c2a7c969cdef241e0e1382cbf363b35fd6c286c2e021d58dbea5cad35c128",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variant929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e508c9c4-25e6-e949-1485-e71f47b71b8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inl_sub [Sub R] [SubNegZeroMonoid M] (r₁ r₂ : R) :
    (inl (r₁ - r₂) : tsze R M) = inl r₁ - inl r₂ :=
  ext rfl (sub_zero _).symm
#align triv_sq_zero_ext.inl_sub TrivSqZeroExt.inl_sub

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variant929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c0ee01d3d91aea12920afcfe1da7d915f87537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
