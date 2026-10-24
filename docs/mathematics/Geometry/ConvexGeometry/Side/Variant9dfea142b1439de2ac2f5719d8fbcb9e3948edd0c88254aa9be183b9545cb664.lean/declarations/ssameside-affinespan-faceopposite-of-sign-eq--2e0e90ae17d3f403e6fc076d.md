# sSameSide_affineSpan_faceOpposite_of_sign_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae0a5224baf6893de503a4ee59332117570d4b36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 910,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d97d3911-8a4a-6f0d-afd0-4c22e141b5c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a222cbd-d9c5-2e1e-2e68-030d291a9d1a",
  "kind": "lemma",
  "lexical_name": "sSameSide_affineSpan_faceOpposite_of_sign_eq",
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
  "slug": "ssameside-affinespan-faceopposite-of-sign-eq--2e0e90ae17d3f403e6fc076d",
  "source": {
    "blob": "ae0a5224baf6893de503a4ee59332117570d4b36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 939,
    "line": 910,
    "path": "GRWTSK/Geometry/ConvexGeometry/Side/Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e0e90ae17d3f403e6fc076d08fe93d175f229df6e2e1ddb0d178630fdce2f26",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Side/Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a222cbd-d9c5-2e1e-2e68-030d291a9d1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 910–939.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sSameSide_affineSpan_faceOpposite_of_sign_eq {w₁ w₂ : Fin (n + 1) → R} (hw₁ : ∑ j, w₁ j = 1)
    (hw₂ : ∑ j, w₂ j = 1) {i : Fin (n + 1)} (hs : SignType.sign (w₁ i) = SignType.sign (w₂ i))
    (h0 : w₁ i ≠ 0) :
    (affineSpan R (Set.range (s.faceOpposite i).points)).SSameSide
      (Finset.univ.affineCombination R s.points w₁)
      (Finset.univ.affineCombination R s.points w₂) := by
  have h0' : w₂ i ≠ 0 := by intro h; simp_all
  refine ⟨?_, (s.affineCombination_mem_affineSpan_faceOpposite_iff hw₁).not.2 h0,
    (s.affineCombination_mem_affineSpan_faceOpposite_iff hw₂).not.2 h0'⟩
  obtain ⟨j, hj⟩ : ∃ j, j ≠ i := exists_ne _
  have hj' : s.points j ∈ affineSpan R (Set.range (s.faceOpposite i).points) := by
    simpa using hj
  refine (wSameSide_iff_exists_left hj').2 (.inr ?_)
  rw [← Finset.univ.affineCombination_piSingle R s.points
    (Finset.mem_univ j), Finset.affineCombination_vsub]
  let w₃ : Fin (n + 1) → R :=
    w₂ - w₂ i • (w₁ i)⁻¹ • (w₁ - Pi.single j 1)
  have hw₃1 : ∑ k, w₃ k = 1 := by simp [w₃, hw₂, ← Finset.mul_sum, hw₁]
  have hw₃i : w₃ i = 0 := by simp [w₃, hj.symm, h0]
  refine ⟨Finset.univ.affineCombination R s.points w₃,
    (s.affineCombination_mem_affineSpan_faceOpposite_iff hw₃1).2 hw₃i, ?_⟩
  simp only [w₃, Finset.affineCombination_vsub, sub_sub_cancel, smul_smul, map_smul,
    sameRay_smul_right_iff]
  left
  rcases h0.lt_or_gt with h | h
  · rw [sign_neg h, eq_comm, sign_eq_neg_one_iff] at hs
    exact (mul_pos_of_neg_of_neg hs (inv_neg''.2 h)).le
  · rw [sign_pos h, eq_comm, sign_eq_one_iff] at hs
    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Side/Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Side/Variant9dfea142b1439de2ac2f5719d8fbcb9e3948edd0c88254aa9be183b9545cb664.lean#L910).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae0a5224baf6893de503a4ee59332117570d4b36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
