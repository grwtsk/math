# Sphere.sOppSide_faceOpposite_secondInter_of_mem_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93fa9fb6-a1cd-35ba-4ec3-cead54ce41d0",
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
  "slug": "sphere-soppside-faceopposite-secondinter-of-mem-interior--4d6415e3a654f8cb861ccb37",
  "source": {
    "blob": "17357bc467861633668a58b9444d8d0914cb8004",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 258,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variant4dadda06a5a9efee653ad21b9bd5c89fd6646c042a5a98b1b3a92bf43de7798a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d6415e3a654f8cb861ccb37a3be0e6da07f19390da041f52e82a35daa7703b3",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variant4dadda06a5a9efee653ad21b9bd5c89fd6646c042a5a98b1b3a92bf43de7798a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93fa9fb6-a1cd-35ba-4ec3-cead54ce41d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–285.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variant4dadda06a5a9efee653ad21b9bd5c89fd6646c042a5a98b1b3a92bf43de7798a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variant4dadda06a5a9efee653ad21b9bd5c89fd6646c042a5a98b1b3a92bf43de7798a.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17357bc467861633668a58b9444d8d0914cb8004` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
