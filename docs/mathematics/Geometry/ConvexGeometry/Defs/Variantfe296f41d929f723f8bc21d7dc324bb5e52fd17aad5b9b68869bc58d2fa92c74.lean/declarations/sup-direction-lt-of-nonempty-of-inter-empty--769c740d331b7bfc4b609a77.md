# sup_direction_lt_of_nonempty_of_inter_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6349026-91a4-f53b-10a1-8edb9bc1e944",
  "kind": "theorem",
  "lexical_name": "sup_direction_lt_of_nonempty_of_inter_empty",
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
  "slug": "sup-direction-lt-of-nonempty-of-inter-empty--769c740d331b7bfc4b609a77",
  "source": {
    "blob": "28f186245aab4571bac1ccc537c76c90f7a9befe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 940,
    "line": 920,
    "path": "GRWTSK/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:769c740d331b7bfc4b609a770d52d104b94848155139383813fac8ddfbe18462",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6349026-91a4-f53b-10a1-8edb9bc1e944`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 920–940.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_direction_lt_of_nonempty_of_inter_empty {s₁ s₂ : AffineSubspace k P}
    (h1 : (s₁ : Set P).Nonempty) (h2 : (s₂ : Set P).Nonempty) (he : (s₁ ∩ s₂ : Set P) = ∅) :
    s₁.direction ⊔ s₂.direction < (s₁ ⊔ s₂).direction := by
  obtain ⟨p₁, hp₁⟩ := h1
  obtain ⟨p₂, hp₂⟩ := h2
  rw [SetLike.lt_iff_le_and_exists]
  use sup_direction_le s₁ s₂, p₂ -ᵥ p₁,
    vsub_mem_direction ((le_sup_right : s₂ ≤ s₁ ⊔ s₂) hp₂) ((le_sup_left : s₁ ≤ s₁ ⊔ s₂) hp₁)
  intro h
  rw [Submodule.mem_sup] at h
  rcases h with ⟨v₁, hv₁, v₂, hv₂, hv₁v₂⟩
  rw [← sub_eq_zero, sub_eq_add_neg, neg_vsub_eq_vsub_rev, add_comm v₁, add_assoc, ←
    vadd_vsub_assoc, ← neg_neg v₂, add_comm, ← sub_eq_add_neg, ← vsub_vadd_eq_vsub_sub,
    vsub_eq_zero_iff_eq] at hv₁v₂
  refine Set.Nonempty.ne_empty ?_ he
  use v₁ +ᵥ p₁, vadd_mem_of_mem_direction hv₁ hp₁
  rw [hv₁v₂]
  exact vadd_mem_of_mem_direction (Submodule.neg_mem _ hv₂) hp₂

/-- If the directions of two nonempty affine subspaces span the whole module, they have nonempty
intersection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean#L920).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28f186245aab4571bac1ccc537c76c90f7a9befe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
