# Wbtw.trans_left_right

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
      "line": 804,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d7b1ad7-9dfa-b62d-e4d2-3f04cd28c7d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bef1faca-e6f8-fca5-bcaa-5d6b3e146cd2",
  "kind": "theorem",
  "lexical_name": "Wbtw.trans_left_right",
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
  "slug": "wbtw-trans-left-right--178e7ec21d1d69955df619a9",
  "source": {
    "blob": "82b36e529321fa6f8eb5546f6efe33fca1fd64a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 828,
    "line": 804,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:178e7ec21d1d69955df619a948646f9d250b36706fbbc8d891bda4f0d9e8017e",
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

Occurrence: `result:bef1faca-e6f8-fca5-bcaa-5d6b3e146cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 804–828.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Wbtw.trans_left_right {w x y z : P} (h₁ : Wbtw R w y z) (h₂ : Wbtw R w x y) :
    Wbtw R x y z := by
  rcases h₁ with ⟨t₁, ht₁, rfl⟩
  rcases h₂ with ⟨t₂, ht₂, rfl⟩
  refine'
    ⟨(t₁ - t₂ * t₁) / (1 - t₂ * t₁),
      ⟨div_nonneg (sub_nonneg.2 (mul_le_of_le_one_left ht₁.1 ht₂.2))
          (sub_nonneg.2 (mul_le_one ht₂.2 ht₁.1 ht₁.2)),
        div_le_one_of_le (sub_le_sub_right ht₁.2 _) (sub_nonneg.2 (mul_le_one ht₂.2 ht₁.1 ht₁.2))⟩,
      _⟩
  simp only [lineMap_apply, smul_smul, ← add_vadd, vsub_vadd_eq_vsub_sub, smul_sub, ← sub_smul,
    ← add_smul, vadd_vsub, vadd_right_cancel_iff, div_mul_eq_mul_div, div_sub_div_same]
  nth_rw 1 [← mul_one (t₁ - t₂ * t₁)]
  rw [← mul_sub, mul_div_assoc]
  by_cases h : 1 - t₂ * t₁ = 0
  · rw [sub_eq_zero, eq_comm] at h
    rw [h]
    suffices t₁ = 1 by simp [this]
    exact
      eq_of_le_of_not_lt ht₁.2 fun ht₁lt =>
        (mul_lt_one_of_nonneg_of_lt_one_right ht₂.2 ht₁.1 ht₁lt).ne h
  · rw [div_self h]
    ring_nf
#align wbtw.trans_left_right Wbtw.trans_left_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant71ec796b74caf12de6f460e28507dc3def0b0dd08c8f5e7e4f0d18adfb5010db.lean#L804).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b36e529321fa6f8eb5546f6efe33fca1fd64a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
