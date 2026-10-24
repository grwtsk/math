# touchpoint_singleton_sbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9e4f405-6387-b2c8-02ca-7019f1400db6",
  "kind": "lemma",
  "lexical_name": "touchpoint_singleton_sbtw",
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
  "slug": "touchpoint-singleton-sbtw--d7f553c596d4d0d02fa0d943",
  "source": {
    "blob": "401cc1ded433db248dd46aeca64cc5cd3edffc93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1385,
    "line": 1362,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7f553c596d4d0d02fa0d943536d20ac2efb7e78ed8da2446524f5f2ba121c02",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9e4f405-6387-b2c8-02ca-7019f1400db6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1362–1385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma touchpoint_singleton_sbtw {i₁ i₂ i₃ : Fin 3} (h₁₂ : i₁ ≠ i₂) (h₁₃ : i₁ ≠ i₃) (h₂₃ : i₂ ≠ i₃) :
    Sbtw ℝ (t.touchpoint {i₁} i₂) (t.points i₃) (t.points i₁) := by
  rw [← Affine.Simplex.affineCombination_touchpointWeights]
  have hw := t.sum_touchpointWeights {i₁} i₂
  rw [(by clear hw; decide +revert : (Finset.univ : Finset (Fin 3)) = {i₁, i₂, i₃})] at hw
  simp only [Nat.reduceAdd, Finset.mem_insert, h₁₂, Finset.mem_singleton, h₁₃, or_self,
    not_false_eq_true, Finset.sum_insert, h₂₃, Simplex.touchpointWeights_eq_zero,
    Finset.sum_singleton, zero_add] at hw
  have h : t.touchpointWeights {i₁} i₂ =
      Finset.affineCombinationLineMapWeights i₁ i₃ (t.touchpointWeights {i₁} i₂ i₃) := by
    ext i
    have h : i = i₁ ∨ i = i₂ ∨ i = i₃ := by clear hw; decide +revert
    rcases h with rfl | rfl | rfl
    · rw [Finset.affineCombinationLineMapWeights_apply_left h₁₃]
      simp [← hw]
    · simp [h₁₂.symm, h₂₃]
    · simp [h₁₃]
  rw [h, Finset.univ.affineCombination_affineCombinationLineMapWeights _ (Finset.mem_univ _)
    (Finset.mem_univ _), sbtw_iff_right_ne_and_left_mem_image_Ioi]
  simp [t.independent.injective.ne h₁₃, ← hw, t.touchpointWeights_singleton_neg h₁₂]

end Triangle

end Affine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean#L1362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401cc1ded433db248dd46aeca64cc5cd3edffc93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
