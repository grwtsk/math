# sOppSide_affineSpan_faceOpposite_of_pos_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d7b49eb-b2c5-c478-7eab-70fda6d3a451",
  "kind": "lemma",
  "lexical_name": "sOppSide_affineSpan_faceOpposite_of_pos_of_neg",
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
  "slug": "soppside-affinespan-faceopposite-of-pos-of-neg--f9c4c8d07e463afb1983f32d",
  "source": {
    "blob": "57630cbda5d143c6bb8150def59664c519757323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 973,
    "line": 948,
    "path": "GRWTSK/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9c4c8d07e463afb1983f32d03544b732e40efa61b5091828b4f37056f3cfc6a",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d7b49eb-b2c5-c478-7eab-70fda6d3a451`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 948–973.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sOppSide_affineSpan_faceOpposite_of_pos_of_neg {w₁ w₂ : Fin (n + 1) → R}
    (hw₁ : ∑ j, w₁ j = 1) (hw₂ : ∑ j, w₂ j = 1) {i : Fin (n + 1)} (hs₁ : 0 < w₁ i)
    (hs₂ : w₂ i < 0) :
    (affineSpan R (Set.range (s.faceOpposite i).points)).SOppSide
      (Finset.univ.affineCombination R s.points w₁)
      (Finset.univ.affineCombination R s.points w₂) := by
  let w₃ : Fin (n + 1) → R := lineMap w₁ w₂ (w₁ i / (w₁ i - w₂ i))
  have hp : 0 < w₁ i - w₂ i := by grind
  have hw₃ : ∑ j, w₃ j = 1 := by
    simp [w₃, lineMap_apply, Finset.sum_add_distrib, ← Finset.mul_sum, hw₁, hw₂]
  have h : Sbtw R w₁ w₃ w₂ := sbtw_lineMap_iff.2
    ⟨(by grind), div_pos hs₁ hp, (div_lt_one hp).2 (by grind)⟩
  have h' : Sbtw R (Finset.univ.affineCombination R s.points w₁)
      (Finset.univ.affineCombination R s.points w₃)
      (Finset.univ.affineCombination R s.points w₂) := by
    rwa [s.independent.injOn_affineCombination_fintypeAffineCoords.sbtw_map_iff
     (mem_fintypeAffineCoords_iff_sum.2 hw₁) (mem_fintypeAffineCoords_iff_sum.2 hw₃)
     (mem_fintypeAffineCoords_iff_sum.2 hw₂)]
  refine h'.sOppSide_of_notMem_of_mem
    ((s.affineCombination_mem_affineSpan_faceOpposite_iff hw₁).not.2 hs₁.ne')
    ((s.affineCombination_mem_affineSpan_faceOpposite_iff hw₃).2 ?_)
  simp only [lineMap_apply, vsub_eq_sub, vadd_eq_add, Pi.add_apply, Pi.smul_apply, Pi.sub_apply,
    smul_eq_mul, w₃]
  rw [← neg_sub (w₁ i) (w₂ i), mul_neg, div_mul_cancel₀ _ hp.ne']
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Side/Variant5ec498840b0680e5fb43f1ffb9c133c54ae6be318c62bb62caee84082f099d5f.lean#L948).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57630cbda5d143c6bb8150def59664c519757323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
