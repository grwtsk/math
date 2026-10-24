# cospherical_or_collinear_of_two_zsmul_oangle_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67dd52eb843d47b38007a135f73dc570641932d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a6059ea-9200-79ce-431d-75b8a80e9d06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eec6a45b-cf77-a4eb-c42a-8faf6eb75f82",
  "kind": "theorem",
  "lexical_name": "cospherical_or_collinear_of_two_zsmul_oangle_eq",
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
  "slug": "cospherical-or-collinear-of-two-zsmul-oangle-eq--21602d4b1a4b2caccec569f3",
  "source": {
    "blob": "67dd52eb843d47b38007a135f73dc570641932d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 363,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21602d4b1a4b2caccec569f355c373c09f70860282518bc0074e187d2731e18a",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eec6a45b-cf77-a4eb-c42a-8faf6eb75f82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cospherical_or_collinear_of_two_zsmul_oangle_eq {p₁ p₂ p₃ p₄ : P}
    (h : (2 : ℤ) • ∡ p₁ p₂ p₄ = (2 : ℤ) • ∡ p₁ p₃ p₄) :
    Cospherical ({p₁, p₂, p₃, p₄} : Set P) ∨ Collinear ℝ ({p₁, p₂, p₃, p₄} : Set P) := by
  by_cases hc : Collinear ℝ ({p₁, p₂, p₄} : Set P)
  · by_cases he : p₁ = p₄
    · rw [he, Set.insert_eq_self.2
        (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _)))]
      by_cases hl : Collinear ℝ ({p₂, p₃, p₄} : Set P); · exact Or.inr hl
      rw [or_iff_left hl]
      let t : Affine.Triangle ℝ P := ⟨![p₂, p₃, p₄], affineIndependent_iff_not_collinear_set.2 hl⟩
      rw [cospherical_iff_exists_sphere]
      refine ⟨t.circumsphere, ?_⟩
      simp_rw [Set.insert_subset_iff, Set.singleton_subset_iff]
      exact ⟨t.mem_circumsphere 0, t.mem_circumsphere 1, t.mem_circumsphere 2⟩
    have hc' : Collinear ℝ ({p₁, p₃, p₄} : Set P) := by
      rwa [← collinear_iff_of_two_zsmul_oangle_eq h]
    refine Or.inr ?_
    rw [Set.insert_comm p₁ p₂] at hc
    rwa [Set.insert_comm p₁ p₂, hc'.collinear_insert_iff_of_ne (Set.mem_insert _ _)
      (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _))) he]
  · exact Or.inl (cospherical_of_two_zsmul_oangle_eq_of_not_collinear h hc)

/-- Converse of "angles in same segment are equal" and "opposite angles of a cyclic quadrilateral
add to π", for oriented angles mod π, with a "concyclic or collinear" conclusion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67dd52eb843d47b38007a135f73dc570641932d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
