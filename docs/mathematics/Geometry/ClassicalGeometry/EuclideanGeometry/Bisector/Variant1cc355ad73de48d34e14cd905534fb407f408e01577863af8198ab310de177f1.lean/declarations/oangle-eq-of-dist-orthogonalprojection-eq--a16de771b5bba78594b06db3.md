# oangle_eq_of_dist_orthogonalProjection_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c518ff64-ddd3-cc1a-5b19-21ab4bbcae4b",
  "kind": "lemma",
  "lexical_name": "oangle_eq_of_dist_orthogonalProjection_eq",
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
  "slug": "oangle-eq-of-dist-orthogonalprojection-eq--a16de771b5bba78594b06db3",
  "source": {
    "blob": "159d93dab9f89a5ded988be238ea4b7c54eed408",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 145,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a16de771b5bba78594b06db3ae31c693e78a661cc1a27ac68a9b60d252cb5c1b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c518ff64-ddd3-cc1a-5b19-21ab4bbcae4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma oangle_eq_of_dist_orthogonalProjection_eq {p p' : P} {s₁ s₂ : AffineSubspace ℝ P}
    (hp'₁ : p' ∈ s₁) (hp'₂ : p' ∈ s₂) :
    haveI : Nonempty s₁ := ⟨p', hp'₁⟩
    haveI : Nonempty s₂ := ⟨p', hp'₂⟩
    (orthogonalProjection s₁ p : P) ≠ orthogonalProjection s₂ p →
    dist p (orthogonalProjection s₁ p) = dist p (orthogonalProjection s₂ p) →
    ∡ (orthogonalProjection s₁ p : P) p' p = ∡ p p' (orthogonalProjection s₂ p) := by
  intro hne h
  have : Nonempty s₁ := ⟨p', hp'₁⟩
  have : Nonempty s₂ := ⟨p', hp'₂⟩
  have : Nonempty (s₁ ⊓ s₂ : AffineSubspace ℝ P) := ⟨p', hp'₁, hp'₂⟩
  have hp₁ : orthogonalProjection s₁ p ≠ p' := by
    intro hp
    rw [hp, eq_comm, dist_orthogonalProjection_eq_dist_iff_eq_of_mem hp'₂] at h
    grind
  have hp₂ : orthogonalProjection s₂ p ≠ p' := by
    intro hp
    rw [hp, dist_orthogonalProjection_eq_dist_iff_eq_of_mem hp'₁] at h
    grind
  have hc : ¬ Collinear ℝ {p', (orthogonalProjection s₁ p : P),
      (orthogonalProjection s₂ p : P)} := by
    intro hc
    have h₁ : (orthogonalProjection s₁ p : P) ∈ line[ℝ, p', (orthogonalProjection s₂ p : P)] :=
      hc.mem_affineSpan_of_mem_of_ne (by grind) (by grind) (by grind) (by grind)
    have h₁' : (orthogonalProjection s₁ p : P) ∈ s₁ ⊓ s₂ :=
      ⟨orthogonalProjection_mem _,
        SetLike.le_def.1 (affineSpan_pair_le_of_mem_of_mem hp'₂ (orthogonalProjection_mem _)) h₁⟩
    have h₁'' : (orthogonalProjection s₁ p : P) = (orthogonalProjection (s₁ ⊓ s₂) p : P) := by
      rw [← orthogonalProjection_orthogonalProjection_of_le inf_le_left, eq_comm,
        orthogonalProjection_eq_self_iff]
      grind
    have h₂ : (orthogonalProjection s₂ p : P) ∈ line[ℝ, p', (orthogonalProjection s₁ p : P)] :=
      hc.mem_affineSpan_of_mem_of_ne (by grind) (by grind) (by grind) (by grind)
    have h₂' : (orthogonalProjection s₂ p : P) ∈ s₁ ⊓ s₂ :=
      ⟨SetLike.le_def.1 (affineSpan_pair_le_of_mem_of_mem hp'₁ (orthogonalProjection_mem _)) h₂,
        orthogonalProjection_mem _⟩
    have h₂'' : (orthogonalProjection s₂ p : P) = (orthogonalProjection (s₁ ⊓ s₂) p : P) := by
      rw [← orthogonalProjection_orthogonalProjection_of_le inf_le_right, eq_comm,
        orthogonalProjection_eq_self_iff]
      grind
    apply hne
    rw [h₁'', h₂'']
  rw [dist_orthogonalProjection_eq_iff_angle_eq hp'₁ hp'₂, angle_comm,
    angle_eq_iff_oangle_eq_or_wbtw hp₁ hp₂] at h
  rcases h with h | h | h
  · exact h
  · exfalso
    exact hc h.collinear
  · exfalso
    have h' := h.collinear
    rw [Set.pair_comm] at h'
    exact hc h'

-- See https://github.com/leanprover/lean4/issues/11182 for why hypotheses are after the colon.
/-- A point `p` is equidistant to two affine subspaces (typically lines, for this version of the
lemma) if and only if the oriented angles at a point `p'` in their intersection between `p` and
its orthogonal projections onto the subspaces are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `159d93dab9f89a5ded988be238ea4b7c54eed408` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
