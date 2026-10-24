# rank_range_add_rank_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6c8a624ef6dde9c17b9763988af3c37c25e6b1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d914e16f5cd410c58668dc080ad6d22c38a267301a65da4980c0897f0a1c29ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e8414aa-e60d-481e-9162-c41b9d9ac5cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3d5f2ec-7bf7-5676-ce1b-c405f04f10aa",
  "kind": "theorem",
  "lexical_name": "rank_range_add_rank_ker",
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
  "slug": "rank-range-add-rank-ker--af0eae551f03b82e1a095585",
  "source": {
    "blob": "f6c8a624ef6dde9c17b9763988af3c37c25e6b1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1113,
    "line": 1108,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dimension/Variantd914e16f5cd410c58668dc080ad6d22c38a267301a65da4980c0897f0a1c29ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af0eae551f03b82e1a095585bd25f3c3f3e34a9b6348388a04736b69b26f6ba6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dimension/Variantd914e16f5cd410c58668dc080ad6d22c38a267301a65da4980c0897f0a1c29ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3d5f2ec-7bf7-5676-ce1b-c405f04f10aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1108–1113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_range_add_rank_ker (f : V →ₗ[K] V₁) :
    Module.rank K (LinearMap.range f) + Module.rank K (LinearMap.ker f) = Module.rank K V := by
  haveI := fun p : Submodule K V => Classical.decEq (V ⧸ p)
  rw [← f.quotKerEquivRange.rank_eq, rank_quotient_add_rank]
#align rank_range_add_rank_ker rank_range_add_rank_ker

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dimension/Variantd914e16f5cd410c58668dc080ad6d22c38a267301a65da4980c0897f0a1c29ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dimension/Variantd914e16f5cd410c58668dc080ad6d22c38a267301a65da4980c0897f0a1c29ae.lean#L1108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6c8a624ef6dde9c17b9763988af3c37c25e6b1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
