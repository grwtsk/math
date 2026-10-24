# dist_orthogonalProjection_eq_iff_angle_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f83d31d713c077353ecca5a87f0464bbe8224d65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f29ee2d771ac2ae83a741ed68ef37b79ad52209eee5d6195e6162126b4412fa0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd355faf-4872-d4e5-b56b-1f8fd6027430",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1778a63f-cbda-8400-6889-0c571e9d326e",
  "kind": "lemma",
  "lexical_name": "dist_orthogonalProjection_eq_iff_angle_eq",
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
  "slug": "dist-orthogonalprojection-eq-iff-angle-eq--6c3cc91a88b3bbe35844b980",
  "source": {
    "blob": "f83d31d713c077353ecca5a87f0464bbe8224d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 75,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variantf29ee2d771ac2ae83a741ed68ef37b79ad52209eee5d6195e6162126b4412fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c3cc91a88b3bbe35844b98031eec832f435624908dfc752e9cd3f6a9fe7b801",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variantf29ee2d771ac2ae83a741ed68ef37b79ad52209eee5d6195e6162126b4412fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1778a63f-cbda-8400-6889-0c571e9d326e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_orthogonalProjection_eq_iff_angle_eq {p p' : P} {s₁ s₂ : AffineSubspace ℝ P}
    [s₁.direction.HasOrthogonalProjection] [s₂.direction.HasOrthogonalProjection]
    (hp'₁ : p' ∈ s₁) (hp'₂ : p' ∈ s₂) :
    haveI : Nonempty s₁ := ⟨p', hp'₁⟩
    haveI : Nonempty s₂ := ⟨p', hp'₂⟩
    dist p (orthogonalProjection s₁ p) = dist p (orthogonalProjection s₂ p) ↔
      ∠ p p' (orthogonalProjection s₁ p) = ∠ p p' (orthogonalProjection s₂ p) := by
  have : Nonempty s₁ := ⟨p', hp'₁⟩
  have : Nonempty s₂ := ⟨p', hp'₂⟩
  by_cases h' : p ∈ s₁ ∨ p ∈ s₂
  · exact dist_orthogonalProjection_eq_iff_angle_eq_aux hp'₁ hp'₂ h'
  rw [not_or] at h'
  rw [angle_comm,
    angle_eq_arcsin_of_angle_eq_pi_div_two (angle_self_orthogonalProjection p hp'₁)
      (.inl (Ne.symm (orthogonalProjection_eq_self_iff.symm.not.1 h'.1))),
    angle_comm,
    angle_eq_arcsin_of_angle_eq_pi_div_two (angle_self_orthogonalProjection p hp'₂)
      (.inl (Ne.symm (orthogonalProjection_eq_self_iff.symm.not.1 h'.2)))]
  · refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
    · rw [h]
    · have hp : p ≠ p' := by
        rintro rfl
        exact h'.1 hp'₁
      have hpd : 0 < dist p p' := dist_pos.2 hp
      rw [Real.arcsin_inj (le_trans (by norm_num : (-1 : ℝ) ≤ 0) (by positivity))
        ((div_le_one hpd).2 ?_)
        (le_trans (by norm_num : (-1 : ℝ) ≤ 0) (by positivity)) ((div_le_one hpd).2 ?_)] at h
      · rwa [div_left_inj' hpd.ne'] at h
      · rw [dist_orthogonalProjection_eq_infDist]
        exact Metric.infDist_le_dist_of_mem (SetLike.mem_coe.1 hp'₁)
      · rw [dist_orthogonalProjection_eq_infDist]
        exact Metric.infDist_le_dist_of_mem (SetLike.mem_coe.1 hp'₂)

section Oriented

open Module

variable [Fact (finrank ℝ V = 2)] [Module.Oriented ℝ V (Fin 2)]

attribute [local instance] FiniteDimensional.of_fact_finrank_eq_two

-- See https://github.com/leanprover/lean4/issues/11182 for why hypotheses are after the colon.
/-- A point `p` is equidistant to two affine subspaces (typically lines, for this version of the
lemma) if the oriented angles at a point `p'` in their intersection between `p` and its orthogonal
projections onto the subspaces are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variantf29ee2d771ac2ae83a741ed68ef37b79ad52209eee5d6195e6162126b4412fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variantf29ee2d771ac2ae83a741ed68ef37b79ad52209eee5d6195e6162126b4412fa0.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f83d31d713c077353ecca5a87f0464bbe8224d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
