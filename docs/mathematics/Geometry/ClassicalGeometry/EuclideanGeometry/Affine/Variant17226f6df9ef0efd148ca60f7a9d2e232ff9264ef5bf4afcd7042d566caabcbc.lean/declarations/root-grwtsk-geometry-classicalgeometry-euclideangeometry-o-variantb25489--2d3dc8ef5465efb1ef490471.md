# _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variantb25489c209d02072e2179461e7f39837bd0240322bb3cfd2128debb4476a05eb.Collinear.oangle_sign_of_sameRay_vsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0545396d-406a-b9d4-69df-9011aafedcc4",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variantb25489c209d02072e2179461e7f39837bd0240322bb3cfd2128debb4476a05eb.Collinear.oangle_sign_of_sameRay_vsub",
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
  "slug": "root-grwtsk-geometry-classicalgeometry-euclideangeometry-o-variantb25489--2d3dc8ef5465efb1ef490471",
  "source": {
    "blob": "865abc9f8f6a0a7473995d10d0a560913e9f4621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 677,
    "line": 600,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d3dc8ef5465efb1ef4904717fea4db73b0ea3926a45a5e8c770b376f9c38652",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0545396d-406a-b9d4-69df-9011aafedcc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–677.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.O.Variantb25489c209d02072e2179461e7f39837bd0240322bb3cfd2128debb4476a05eb.Collinear.oangle_sign_of_sameRay_vsub {p₁ p₂ p₃ p₄ : P} (p₅ : P) (hp₁p₂ : p₁ ≠ p₂)
    (hp₃p₄ : p₃ ≠ p₄) (hc : Collinear ℝ ({p₁, p₂, p₃, p₄} : Set P))
    (hr : SameRay ℝ (p₂ -ᵥ p₁) (p₄ -ᵥ p₃)) : (∡ p₁ p₅ p₂).sign = (∡ p₃ p₅ p₄).sign := by
  by_cases hc₅₁₂ : Collinear ℝ ({p₅, p₁, p₂} : Set P)
  · have hc₅₁₂₃₄ : Collinear ℝ ({p₅, p₁, p₂, p₃, p₄} : Set P) :=
      (hc.collinear_insert_iff_of_ne (Set.mem_insert _ _)
        (Set.mem_insert_of_mem _ (Set.mem_insert _ _)) hp₁p₂).2 hc₅₁₂
    have hc₅₃₄ : Collinear ℝ ({p₅, p₃, p₄} : Set P) :=
      (hc.collinear_insert_iff_of_ne
        (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_insert _ _)))
        (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _
          (Set.mem_singleton _)))) hp₃p₄).1 hc₅₁₂₃₄
    rw [Set.insert_comm] at hc₅₁₂ hc₅₃₄
    have hs₁₅₂ := oangle_eq_zero_or_eq_pi_iff_collinear.2 hc₅₁₂
    have hs₃₅₄ := oangle_eq_zero_or_eq_pi_iff_collinear.2 hc₅₃₄
    rw [← Real.Angle.sign_eq_zero_iff] at hs₁₅₂ hs₃₅₄
    rw [hs₁₅₂, hs₃₅₄]
  · let s : Set (P × P × P) :=
      (fun x : line[ℝ, p₁, p₂] × V => (x.1, p₅, x.2 +ᵥ (x.1 : P))) ''
        Set.univ ×ˢ {v | SameRay ℝ (p₂ -ᵥ p₁) v ∧ v ≠ 0}
    have hco : IsConnected s :=
      haveI : ConnectedSpace line[ℝ, p₁, p₂] := AddTorsor.connectedSpace _ _
      (isConnected_univ.prod (isConnected_setOf_sameRay_and_ne_zero
        (vsub_ne_zero.2 hp₁p₂.symm))).image _ (by fun_prop)
    have hf : ContinuousOn (fun p : P × P × P => ∡ p.1 p.2.1 p.2.2) s := by
      refine continuousOn_of_forall_continuousAt fun p hp => continuousAt_oangle ?_ ?_
      all_goals
        simp_rw [s, Set.mem_image, Set.mem_prod, Set.mem_univ, true_and, Prod.ext_iff] at hp
        obtain ⟨q₁, q₅, q₂⟩ := p
        dsimp only at hp ⊢
        obtain ⟨⟨⟨q, hq⟩, v⟩, hv, rfl, rfl, rfl⟩ := hp
        dsimp only [Subtype.coe_mk, Set.mem_setOf] at hv ⊢
        obtain ⟨hvr, -⟩ := hv
        rintro rfl
        refine hc₅₁₂ ((collinear_insert_iff_of_mem_affineSpan ?_).2 (collinear_pair _ _ _))
      · exact hq
      · refine vadd_mem_of_mem_direction ?_ hq
        rw [← exists_nonneg_left_iff_sameRay (vsub_ne_zero.2 hp₁p₂.symm)] at hvr
        obtain ⟨r, -, rfl⟩ := hvr
        rw [direction_affineSpan]
        exact smul_vsub_rev_mem_vectorSpan_pair _ _ _
    have hsp : ∀ p : P × P × P, p ∈ s → ∡ p.1 p.2.1 p.2.2 ≠ 0 ∧ ∡ p.1 p.2.1 p.2.2 ≠ π := by
      intro p hp
      simp_rw [s, Set.mem_image, Set.mem_prod, Set.mem_setOf, Set.mem_univ, true_and,
        Prod.ext_iff] at hp
      obtain ⟨q₁, q₅, q₂⟩ := p
      dsimp only at hp ⊢
      obtain ⟨⟨⟨q, hq⟩, v⟩, hv, rfl, rfl, rfl⟩ := hp
      dsimp only [Subtype.coe_mk, Set.mem_setOf] at hv ⊢
      obtain ⟨hvr, hv0⟩ := hv
      rw [← exists_nonneg_left_iff_sameRay (vsub_ne_zero.2 hp₁p₂.symm)] at hvr
      obtain ⟨r, -, rfl⟩ := hvr
      change q ∈ line[ℝ, p₁, p₂] at hq
      rw [oangle_ne_zero_and_ne_pi_iff_affineIndependent]
      refine affineIndependent_of_ne_of_mem_of_notMem_of_mem ?_ hq
          (fun h => hc₅₁₂ ((collinear_insert_iff_of_mem_affineSpan h).2 (collinear_pair _ _ _))) ?_
      · rwa [← @vsub_ne_zero V, vsub_vadd_eq_vsub_sub, vsub_self, zero_sub, neg_ne_zero]
      · refine vadd_mem_of_mem_direction ?_ hq
        rw [direction_affineSpan]
        exact smul_vsub_rev_mem_vectorSpan_pair _ _ _
    have hp₁p₂s : (p₁, p₅, p₂) ∈ s := by
      simp_rw [s, Set.mem_image, Set.mem_prod, Set.mem_setOf, Set.mem_univ, true_and,
        Prod.ext_iff]
      refine ⟨⟨⟨p₁, left_mem_affineSpan_pair ℝ _ _⟩, p₂ -ᵥ p₁⟩,
        ⟨SameRay.rfl, vsub_ne_zero.2 hp₁p₂.symm⟩, ?_⟩
      simp
    have hp₃p₄s : (p₃, p₅, p₄) ∈ s := by
      simp_rw [s, Set.mem_image, Set.mem_prod, Set.mem_setOf, Set.mem_univ, true_and,
        Prod.ext_iff]
      refine ⟨⟨⟨p₃, hc.mem_affineSpan_of_mem_of_ne (Set.mem_insert _ _)
        (Set.mem_insert_of_mem _ (Set.mem_insert _ _))
        (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_insert _ _))) hp₁p₂⟩, p₄ -ᵥ p₃⟩,
        ⟨hr, vsub_ne_zero.2 hp₃p₄.symm⟩, ?_⟩
      simp
    convert Real.Angle.sign_eq_of_continuousOn hco hf hsp hp₃p₄s hp₁p₂s

/-- Given three points in strict order on the same line, and a fourth point, the angles at the
fourth point between the first and second or second and third points have the same sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant17226f6df9ef0efd148ca60f7a9d2e232ff9264ef5bf4afcd7042d566caabcbc.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865abc9f8f6a0a7473995d10d0a560913e9f4621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
