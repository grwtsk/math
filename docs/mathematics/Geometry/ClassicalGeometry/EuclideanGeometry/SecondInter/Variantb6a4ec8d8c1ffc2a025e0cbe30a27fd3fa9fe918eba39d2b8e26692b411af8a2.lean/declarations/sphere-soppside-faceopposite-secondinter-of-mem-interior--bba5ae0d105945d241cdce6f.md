# Sphere.sOppSide_faceOpposite_secondInter_of_mem_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88edce432fae89f953ae3092237e9f45be20bccd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35f84497-f5d5-37a7-ecc3-135fb290741f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78f96444-2b87-9a4e-661b-661b1cb351c6",
  "kind": "lemma",
  "lexical_name": "Sphere.sOppSide_faceOpposite_secondInter_of_mem_interior",
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
  "slug": "sphere-soppside-faceopposite-secondinter-of-mem-interior--bba5ae0d105945d241cdce6f",
  "source": {
    "blob": "88edce432fae89f953ae3092237e9f45be20bccd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 250,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bba5ae0d105945d241cdce6fec390d32203eeeccd76a4fd324c4717f59900f20",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78f96444-2b87-9a4e-661b-661b1cb351c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Sphere.sOppSide_faceOpposite_secondInter_of_mem_interior {s : Sphere P}
    {n : ℕ} [Nat.AtLeastTwo n] {sx : Affine.Simplex ℝ P n} {i : Fin (n + 1)} (hi : sx.points i ∈ s)
    (hsx : ∀ j, dist (sx.points j) s.center ≤ s.radius) {p : P}
    (hp : p ∈ sx.interior) :
    (affineSpan ℝ (Set.range (sx.faceOpposite i).points)).SOppSide (sx.points i)
      (s.secondInter (sx.points i) (p -ᵥ (sx.points i))) := by
  obtain ⟨w, hw, hw01, rfl⟩ := hp
  let r : ℝ := (1 - w i)⁻¹
  have hrpos : 0 < r := by simp [inv_pos, sub_pos, r, (hw01 i).2]
  let p' : P := AffineMap.lineMap (sx.points i) (Finset.univ.affineCombination ℝ sx.points w) r
  have hp' : (p' -ᵥ (sx.points i)) =
      r • (Finset.univ.affineCombination ℝ sx.points w -ᵥ (sx.points i)) := by simp [p']
  suffices (affineSpan ℝ (Set.range (sx.faceOpposite i).points)).SOppSide (sx.points i)
      (s.secondInter (sx.points i) (p' -ᵥ (sx.points i))) by
    rwa [hp', s.secondInter_smul _ _ hrpos.ne'] at this
  refine s.sOppSide_faceOpposite_secondInter_of_mem_interior_faceOpposite hi hsx ?_
  simp_rw [p', ← Finset.univ.affineCombination_piSingle ℝ (sx.points)
    (Finset.mem_univ i), AffineMap.lineMap_apply, Finset.affineCombination_vsub,
    ← LinearMap.map_smul, Finset.weightedVSub_vadd_affineCombination,
    Affine.Simplex.faceOpposite]
  rw [Affine.Simplex.affineCombination_mem_interior_face_iff_pos]
  · simp only [Finset.mem_compl, Finset.mem_singleton, Pi.add_apply, Pi.smul_apply, Pi.sub_apply,
      smul_eq_mul, Decidable.not_not, forall_eq, Pi.single_eq_same]
    refine ⟨fun j hj ↦ ?_, by grind⟩
    simp [hj, hrpos, (hw01 j).1]
  · simp [Finset.sum_add_distrib, ← Finset.mul_sum, hw]

end EuclideanGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantb6a4ec8d8c1ffc2a025e0cbe30a27fd3fa9fe918eba39d2b8e26692b411af8a2.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88edce432fae89f953ae3092237e9f45be20bccd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
