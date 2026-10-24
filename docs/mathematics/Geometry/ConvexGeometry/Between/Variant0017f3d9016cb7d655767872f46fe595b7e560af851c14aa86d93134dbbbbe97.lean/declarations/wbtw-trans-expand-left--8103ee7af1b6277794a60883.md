# Wbtw.trans_expand_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24b6df3e-cb45-4b9d-6c82-96e6067402eb",
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
  "slug": "wbtw-trans-expand-left--8103ee7af1b6277794a60883",
  "source": {
    "blob": "355f6d168937263c79e43098d714e32961142d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1037,
    "line": 1016,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8103ee7af1b6277794a60883ff404e00c0da2975f46b6edb231f77a1d0ce25b5",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24b6df3e-cb45-4b9d-6c82-96e6067402eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1016–1037.

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

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean#L1016).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `355f6d168937263c79e43098d714e32961142d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
