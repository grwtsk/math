# sbtw_of_sbtw_of_sbtw_of_mem_affineSpan_pair

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
      "line": 759,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/adfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7cf41578-0913-0c95-6132-41d421cf7462",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5077f002-8bab-6a5e-2bcf-55c4a290fa2a",
  "kind": "theorem",
  "lexical_name": "sbtw_of_sbtw_of_sbtw_of_mem_affineSpan_pair",
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
  "slug": "sbtw-of-sbtw-of-sbtw-of-mem-affinespan-pair--5e733eafcae0fb3cfd6bd498",
  "source": {
    "blob": "8f77b511767208189b469358f4c51b31e40b154b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 832,
    "line": 759,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variantadfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e733eafcae0fb3cfd6bd498af91692957ab2ccac0a7a6bcad804aca4039bf7e",
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

Occurrence: `result:5077f002-8bab-6a5e-2bcf-55c4a290fa2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 759–832.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sbtw_of_sbtw_of_sbtw_of_mem_affineSpan_pair [IsTorsionFree R V]
    {t : Affine.Triangle R P} {i₁ i₂ i₃ : Fin 3} (h₁₂ : i₁ ≠ i₂) {p₁ p₂ p : P}
    (h₁ : Sbtw R (t.points i₂) p₁ (t.points i₃)) (h₂ : Sbtw R (t.points i₁) p₂ (t.points i₃))
    (h₁' : p ∈ line[R, t.points i₁, p₁]) (h₂' : p ∈ line[R, t.points i₂, p₂]) :
    Sbtw R (t.points i₁) p p₁ := by
  have h₁₃ : i₁ ≠ i₃ := by
    rintro rfl
    simp at h₂
  have h₂₃ : i₂ ≠ i₃ := by
    rintro rfl
    simp at h₁
  have h3 : ∀ i : Fin 3, i = i₁ ∨ i = i₂ ∨ i = i₃ := by lia
  have hu : (Finset.univ : Finset (Fin 3)) = {i₁, i₂, i₃} := by
    clear h₁ h₂ h₁' h₂'
    decide +revert
  have hp : p ∈ affineSpan R (Set.range t.points) := by
    have hle : line[R, t.points i₁, p₁] ≤ affineSpan R (Set.range t.points) := by
      refine affineSpan_pair_le_of_mem_of_mem (mem_affineSpan R (Set.mem_range_self _)) ?_
      have hle : line[R, t.points i₂, t.points i₃] ≤ affineSpan R (Set.range t.points) := by
        refine affineSpan_mono R ?_
        simp [Set.insert_subset_iff]
      rw [AffineSubspace.le_def'] at hle
      exact hle _ h₁.wbtw.mem_affineSpan
    rw [AffineSubspace.le_def'] at hle
    exact hle _ h₁'
  have h₁i := h₁.mem_image_Ioo
  have h₂i := h₂.mem_image_Ioo
  rw [Set.mem_image] at h₁i h₂i
  rcases h₁i with ⟨r₁, ⟨hr₁0, hr₁1⟩, rfl⟩
  rcases h₂i with ⟨r₂, ⟨hr₂0, hr₂1⟩, rfl⟩
  rcases eq_affineCombination_of_mem_affineSpan_of_fintype hp with ⟨w, hw, rfl⟩
  have h₁s :=
    sign_eq_of_affineCombination_mem_affineSpan_single_lineMap t.independent hw (Finset.mem_univ _)
      (Finset.mem_univ _) (Finset.mem_univ _) h₁₂ h₁₃ h₂₃ hr₁0 hr₁1 h₁'
  have h₂s :=
    sign_eq_of_affineCombination_mem_affineSpan_single_lineMap t.independent hw (Finset.mem_univ _)
      (Finset.mem_univ _) (Finset.mem_univ _) h₁₂.symm h₂₃ h₁₃ hr₂0 hr₂1 h₂'
  rw [← Finset.univ.affineCombination_piSingle R t.points
      (Finset.mem_univ i₁),
    ← Finset.univ.affineCombination_affineCombinationLineMapWeights t.points (Finset.mem_univ _)
      (Finset.mem_univ _)] at h₁' ⊢
  refine
    Sbtw.affineCombination_of_mem_affineSpan_pair t.independent hw (Fintype.sum_pi_single' _ _)
      (Finset.univ.sum_affineCombinationLineMapWeights (Finset.mem_univ _) (Finset.mem_univ _) _)
      h₁' (Finset.mem_univ i₁) ?_
  rw [Pi.single_eq_same,
    Finset.affineCombinationLineMapWeights_apply_of_ne h₁₂ h₁₃, sbtw_one_zero_iff]
  have hs : ∀ i : Fin 3, SignType.sign (w i) = SignType.sign (w i₃) := by
    intro i
    rcases h3 i with (rfl | rfl | rfl)
    · exact h₂s
    · exact h₁s
    · rfl
  have hss : SignType.sign (∑ i, w i) = 1 := by simp [hw]
  have hs' := sign_sum Finset.univ_nonempty (SignType.sign (w i₃)) fun i _ => hs i
  rw [hs'] at hss
  simp_rw [hss, sign_eq_one_iff] at hs
  refine ⟨hs i₁, ?_⟩
  rw [hu] at hw
  rw [Finset.sum_insert, Finset.sum_insert, Finset.sum_singleton] at hw
  · by_contra hle
    rw [not_lt] at hle
    exact (hle.trans_lt (lt_add_of_pos_right _ (Left.add_pos (hs i₂) (hs i₃)))).ne' hw
  · simpa using h₂₃
  · simpa [not_or] using ⟨h₁₂, h₁₃⟩

end LinearOrderedRing

section LinearOrderedField

variable [Field R] [LinearOrder R] [IsStrictOrderedRing R]
  [AddCommGroup V] [Module R V] [AddTorsor V P] {x y z : P}
variable {R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variantadfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variantadfec3b38809f8c6a6e0c08b9f8c4785d689b52b770aadd3cdae341637d588ed.lean#L759).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f77b511767208189b469358f4c51b31e40b154b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
