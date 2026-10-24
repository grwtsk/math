# dist_orthogonalProjection_eq_of_two_zsmul_oangle_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04a8900b-3954-9ceb-e546-6f4bfbdcc3b1",
  "kind": "lemma",
  "lexical_name": "dist_orthogonalProjection_eq_of_two_zsmul_oangle_eq",
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
  "slug": "dist-orthogonalprojection-eq-of-two-zsmul-oangle-eq--ccafaf5f1b845a0547575f49",
  "source": {
    "blob": "159d93dab9f89a5ded988be238ea4b7c54eed408",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 217,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccafaf5f1b845a0547575f492387132a0fd875c351e1856e8a5d143b6ca89135",
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

Occurrence: `result:04a8900b-3954-9ceb-e546-6f4bfbdcc3b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_orthogonalProjection_eq_of_two_zsmul_oangle_eq {p p' : P}
    {s₁ s₂ : AffineSubspace ℝ P} (hp'₁ : p' ∈ s₁) (hp'₂ : p' ∈ s₂) :
    haveI : Nonempty s₁ := ⟨p', hp'₁⟩
    haveI : Nonempty s₂ := ⟨p', hp'₂⟩
    -- after the colon as these need the `haveI`s above
    orthogonalProjection s₁ p ≠ p' →
    orthogonalProjection s₂ p ≠ p' →
    (2 : ℤ) • ∡ (orthogonalProjection s₁ p : P) p' p =
      (2 : ℤ) • ∡ p p' (orthogonalProjection s₂ p) →
    dist p (orthogonalProjection s₁ p) = dist p (orthogonalProjection s₂ p) := by
  intro hp₁ hp₂ h
  have : Nonempty s₁ := ⟨p', hp'₁⟩
  have : Nonempty s₂ := ⟨p', hp'₂⟩
  have h' : ∡ (orthogonalProjection s₁ p : P) p' p = ∡ p p' (orthogonalProjection s₂ p) :=
    oangle_eq_oangle_rev_of_two_zsmul_eq_of_angle_eq_pi_div_two h
      (angle_self_orthogonalProjection _ hp'₁) (angle_self_orthogonalProjection _ hp'₂)
  exact dist_orthogonalProjection_eq_of_oangle_eq hp'₁ hp'₂ hp₁ hp₂ h'

/-- Auxiliary lemma for the special case of
`dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq` where the orthogonal projection of `p`
to the line `p₁ p₂` is `p₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `159d93dab9f89a5ded988be238ea4b7c54eed408` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
