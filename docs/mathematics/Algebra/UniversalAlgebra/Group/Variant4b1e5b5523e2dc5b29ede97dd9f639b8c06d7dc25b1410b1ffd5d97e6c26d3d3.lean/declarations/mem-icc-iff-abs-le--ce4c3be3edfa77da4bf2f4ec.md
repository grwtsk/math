# mem_Icc_iff_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b79b43e87a5b21cd41d1167ab6b5dca7539ce14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2d9749d-67db-7bf7-4291-78ab2ef04590",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a29d3b3-f13a-8a4f-3cdc-7c719514b576",
  "kind": "theorem",
  "lexical_name": "mem_Icc_iff_abs_le",
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
  "slug": "mem-icc-iff-abs-le--ce4c3be3edfa77da4bf2f4ec",
  "source": {
    "blob": "9b79b43e87a5b21cd41d1167ab6b5dca7539ce14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 106,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce4c3be3edfa77da4bf2f4ec975beaebe8d6fe3065f6635df2bc9d8bf20247e8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a29d3b3-f13a-8a4f-3cdc-7c719514b576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_Icc_iff_abs_le {R : Type*}
    [AddCommGroup R] [LinearOrder R] [IsOrderedAddMonoid R] {x y z : R} :
    |x - y| ≤ z ↔ y ∈ Icc (x - z) (x + z) :=
  abs_le.trans <| and_comm.trans <| and_congr sub_le_comm neg_le_sub_iff_le_add

/-! `sub_mem_Ixx_zero_right` and `sub_mem_Ixx_zero_iff_right`; this specializes the previous
lemmas to the case of reflecting the interval. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b79b43e87a5b21cd41d1167ab6b5dca7539ce14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
