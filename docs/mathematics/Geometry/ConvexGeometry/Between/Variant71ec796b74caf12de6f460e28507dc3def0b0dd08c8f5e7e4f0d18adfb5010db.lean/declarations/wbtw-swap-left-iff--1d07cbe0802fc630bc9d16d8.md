# wbtw_swap_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82b36e529321fa6f8eb5546f6efe33fca1fd64a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 354,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5315d64c-67ef-416c-d6ce-a2be92ea80b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:117a46c9-943c-976d-b202-aa5f7bf75023",
  "kind": "theorem",
  "lexical_name": "wbtw_swap_left_iff",
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
  "slug": "wbtw-swap-left-iff--1d07cbe0802fc630bc9d16d8",
  "source": {
    "blob": "82b36e529321fa6f8eb5546f6efe33fca1fd64a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 354,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d07cbe0802fc630bc9d16d8e2686e830ade21e128ee6f5d13bcd16fd67b4407",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:117a46c9-943c-976d-b202-aa5f7bf75023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wbtw_swap_left_iff [NoZeroSMulDivisors R V] {x y : P} (z : P) :
    Wbtw R x y z ∧ Wbtw R y x z ↔ x = y := by
  constructor
  · rintro ⟨hxyz, hyxz⟩
    rcases hxyz with ⟨ty, hty, rfl⟩
    rcases hyxz with ⟨tx, htx, hx⟩
    rw [lineMap_apply, lineMap_apply, ← add_vadd] at hx
    rw [← @vsub_eq_zero_iff_eq V, vadd_vsub, vsub_vadd_eq_vsub_sub, smul_sub, smul_smul, ← sub_smul,
      ← add_smul, smul_eq_zero] at hx
    rcases hx with (h | h)
    · nth_rw 1 [← mul_one tx] at h
      rw [← mul_sub, add_eq_zero_iff_neg_eq] at h
      have h' : ty = 0 := by
        refine' le_antisymm _ hty.1
        rw [← h, Left.neg_nonpos_iff]
        exact mul_nonneg htx.1 (sub_nonneg.2 hty.2)
      simp [h']
    · rw [vsub_eq_zero_iff_eq] at h
      rw [h, lineMap_same_apply]
  · rintro rfl
    exact ⟨wbtw_self_left _ _ _, wbtw_self_left _ _ _⟩
#align wbtw_swap_left_iff wbtw_swap_left_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b36e529321fa6f8eb5546f6efe33fca1fd64a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
