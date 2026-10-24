# mem_fixedSet_linear_iff_mem_ker_id_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f7e6c3efbfc443952fe8ef2e7c34d14d510b00c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dce99a56-5d53-6bde-db0d-52948fd53752",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d20ff28-6d31-c7fc-d4d0-8158957d4f51",
  "kind": "theorem",
  "lexical_name": "mem_fixedSet_linear_iff_mem_ker_id_sub",
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
  "slug": "mem-fixedset-linear-iff-mem-ker-id-sub--18305177cdf9394081a27c03",
  "source": {
    "blob": "4f7e6c3efbfc443952fe8ef2e7c34d14d510b00c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 238,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18305177cdf9394081a27c03e8777d2fb372fd56061a908321aa68e455f40e52",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d20ff28-6d31-c7fc-d4d0-8158957d4f51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_fixedSet_linear_iff_mem_ker_id_sub
    {R V : Type*} [Ring R] [AddCommGroup V] [Module R V]
    (transformation : V →ₗ[R] V) (point : V) :
    point ∈ FixedSet transformation ↔
      point ∈ LinearMap.ker (LinearMap.id - transformation) := by
  change transformation point = point ↔ point - transformation point = 0
  rw [sub_eq_zero]
  exact eq_comm

/-- A runtime representation relation with an explicit abstraction function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f7e6c3efbfc443952fe8ef2e7c34d14d510b00c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
