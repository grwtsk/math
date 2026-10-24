# Wbtw.trans_left_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3324b39c-3de6-7bc4-31eb-c7346e2688a2",
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
  "slug": "wbtw-trans-left-right--d536b5b51db5dc15de55303b",
  "source": {
    "blob": "90cfcc91c41b613890812a3b0e00c15321c159a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 836,
    "line": 812,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d536b5b51db5dc15de55303b1d309055a56e2d2870fc28eb8b2133f10f1e5c67",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3324b39c-3de6-7bc4-31eb-c7346e2688a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 812–836.

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

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean#L812).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90cfcc91c41b613890812a3b0e00c15321c159a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
