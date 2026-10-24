# two_zsmul_oangle_eq_of_dist_orthogonalProjection_line_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e956b445-902b-57cc-f179-e67593a93933",
  "kind": "lemma",
  "lexical_name": "two_zsmul_oangle_eq_of_dist_orthogonalProjection_line_eq",
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
  "slug": "two-zsmul-oangle-eq-of-dist-orthogonalprojection-line-eq--5b0f4800dcf26a5c3d5c746e",
  "source": {
    "blob": "159d93dab9f89a5ded988be238ea4b7c54eed408",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 294,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b0f4800dcf26a5c3d5c746e1161bda0a9756d426cf25e397cfa4414bb41caee",
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

Occurrence: `result:e956b445-902b-57cc-f179-e67593a93933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_zsmul_oangle_eq_of_dist_orthogonalProjection_line_eq {p p₁ p₂ p₃ : P}
    (ha : AffineIndependent ℝ ![p₁, p₂, p₃])
    (h : dist p (orthogonalProjection line[ℝ, p₁, p₂] p) =
      dist p (orthogonalProjection line[ℝ, p₁, p₃] p)) :
    (2 : ℤ) • ∡ p₂ p₁ p = (2 : ℤ) • ∡ p p₁ p₃ := by
  by_cases ho : (orthogonalProjection line[ℝ, p₁, p₂] p : P) =
      orthogonalProjection line[ℝ, p₁, p₃] p
  · suffices p = p₁ by simp [this]
    have hs := orthogonalProjection_sup_of_orthogonalProjection_eq ho
    have hinf : line[ℝ, p₁, p₂] ⊓ line[ℝ, p₁, p₃] = affineSpan ℝ {p₁} := by
      convert! (ha.inf_affineSpan_eq_affineSpan_inter {0, 1} {0, 2})
      · simp
      · simp
      · suffices {p₁} = ![p₁, p₂, p₃] '' {0} by grind
        simp
    have hsup : line[ℝ, p₁, p₂] ⊔ line[ℝ, p₁, p₃] = ⊤ := by
      rw [← AffineSubspace.span_union]
      convert! ha.affineSpan_eq_top_iff_card_eq_finrank_add_one.2 ?_
      · simp
        grind
      · simpa using Fact.out
    have hp : orthogonalProjection (line[ℝ, p₁, p₂]) p = p₁ := by
      suffices (orthogonalProjection (line[ℝ, p₁, p₂]) p : P) ∈ affineSpan ℝ {p₁} by
        simpa using this
      have hi : (orthogonalProjection (line[ℝ, p₁, p₂]) p : P) ∈
          line[ℝ, p₁, p₂] ⊓ line[ℝ, p₁, p₃] :=
        ⟨orthogonalProjection_mem _, ho ▸ orthogonalProjection_mem _⟩
      rwa [hinf] at hi
    rw [← orthogonalProjection_sup_of_orthogonalProjection_eq ho] at hp
    rw [← hp, eq_comm, orthogonalProjection_eq_self_iff, hsup]
    exact AffineSubspace.mem_top ℝ V p
  · have hp := oangle_eq_of_dist_orthogonalProjection_eq
      (left_mem_affineSpan_pair _ _ _) (left_mem_affineSpan_pair _ _ _) ho h
    have h₂₁ : p₂ ≠ p₁ := ha.injective.ne (by decide : (1 : Fin 3) ≠ 0)
    have h₃₁ : p₃ ≠ p₁ := ha.injective.ne (by decide : (2 : Fin 3) ≠ 0)
    have hp₁ : orthogonalProjection line[ℝ, p₁, p₂] p ≠ p₁ := by
      intro hp
      rw [hp, eq_comm, dist_orthogonalProjection_eq_dist_iff_eq_of_mem
        (left_mem_affineSpan_pair ℝ _ p₃)] at h
      grind
    have hp₂ : orthogonalProjection line[ℝ, p₁, p₃] p ≠ p₁ := by
      intro hp
      rw [hp, dist_orthogonalProjection_eq_dist_iff_eq_of_mem
          (left_mem_affineSpan_pair ℝ _ p₂)] at h
      grind
    rw [← (collinear_insert_of_mem_affineSpan_pair
             (orthogonalProjection_mem p)).two_zsmul_oangle_eq_left hp₁ h₂₁,
        ← (collinear_insert_of_mem_affineSpan_pair
             (orthogonalProjection_mem p)).two_zsmul_oangle_eq_right hp₂ h₃₁, hp]

/-- A point `p` is equidistant to two different lines `p₁ p₂` and `p₁ p₃` if and only if the
oriented angles at `p₁` are equal modulo `π`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `159d93dab9f89a5ded988be238ea4b7c54eed408` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
