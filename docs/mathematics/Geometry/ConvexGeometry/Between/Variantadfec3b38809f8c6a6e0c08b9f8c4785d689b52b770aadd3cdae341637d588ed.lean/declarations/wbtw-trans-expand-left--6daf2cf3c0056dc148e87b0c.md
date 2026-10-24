# Wbtw.trans_expand_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f77b511767208189b469358f4c51b31e40b154b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1008,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/adfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4737acc0-e332-b5e8-9c0c-971be0bf8fab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:765b506d-940f-d7be-f11b-73a24ab7c2f9",
  "kind": "theorem",
  "lexical_name": "Wbtw.trans_expand_left",
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
  "slug": "wbtw-trans-expand-left--6daf2cf3c0056dc148e87b0c",
  "source": {
    "blob": "8f77b511767208189b469358f4c51b31e40b154b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1029,
    "line": 1008,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variantadfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6daf2cf3c0056dc148e87b0c8ce3e0ca83a3a19627bbec59b07f0bca3a860fd9",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variantadfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:765b506d-940f-d7be-f11b-73a24ab7c2f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1008–1029.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Wbtw.trans_expand_left {w x y z : P} (h₁ : Wbtw R w x y) (h₂ : Wbtw R x y z)
    (h_ne : x ≠ y) : Wbtw R w x z := by
  rcases h₁ with ⟨t₁, ht₁, hx⟩
  rcases h₂ with ⟨t₂, ht₂, hy⟩
  refine ⟨t₁ * t₂ / (1 - t₁ + t₁ * t₂), ?_, ?_⟩
  · constructor
    · apply div_nonneg (mul_nonneg ht₁.1 ht₂.1)
      nlinarith [ht₁.1, ht₁.2, ht₂.1, ht₂.2]
    · apply div_le_one_of_le₀
      · grind
      · nlinarith [ht₁.1, ht₁.2, ht₂.1, ht₂.2]
  have h_denom : 1 - t₁ + t₁ * t₂ ≠ 0 := by
    contrapose h_ne
    have h1 : t₁ = 1 := by nlinarith [ht₁.1, ht₁.2, ht₂.1, ht₂.2]
    rw [← hx, h1, lineMap_apply_one]
  rw [← hy, lineMap_apply, lineMap_apply, eq_comm, eq_vadd_iff_vsub_eq] at hx
  rw [lineMap_apply, eq_comm, eq_vadd_iff_vsub_eq, div_eq_mul_inv, mul_comm, mul_smul,
    eq_inv_smul_iff₀ h_denom, add_smul, sub_smul, one_smul]
  nth_rw 1 [hx]
  rw [← smul_sub, mul_smul, mul_smul, vsub_sub_vsub_cancel_right, vadd_vsub, ← smul_assoc,
    ← smul_assoc, ← smul_assoc, ← smul_add, vsub_add_vsub_cancel]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variantadfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variantadfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean#L1008).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f77b511767208189b469358f4c51b31e40b154b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
