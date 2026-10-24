# exists_forall_signedInfDist_eq_iff_excenterExists_and_eq_excenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fefc65b7-decd-7d53-7eb8-06625afe19e1",
  "kind": "lemma",
  "lexical_name": "exists_forall_signedInfDist_eq_iff_excenterExists_and_eq_excenter",
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
  "slug": "exists-forall-signedinfdist-eq-iff-excenterexists-and-eq-excenter--7eb1b268d73177af1c9b699c",
  "source": {
    "blob": "401cc1ded433db248dd46aeca64cc5cd3edffc93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 967,
    "line": 938,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7eb1b268d73177af1c9b699c0210604f6382e5ec7c5473f7260595872c5fc329",
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

Occurrence: `result:fefc65b7-decd-7d53-7eb8-06625afe19e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 938–967.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_forall_signedInfDist_eq_iff_excenterExists_and_eq_excenter {p : P}
    (hp : p ∈ affineSpan ℝ (Set.range s.points)) {signs : Finset (Fin (n + 1))} :
    (∃ r : ℝ, ∀ i, s.signedInfDist i p = (if i ∈ signs then -1 else 1) * r) ↔
      s.ExcenterExists signs ∧ p = s.excenter signs := by
  refine ⟨?_, ?_⟩
  · rintro ⟨r, h⟩
    obtain ⟨w, h1, rfl⟩ := eq_affineCombination_of_mem_affineSpan_of_fintype hp
    have h' : ∀ i, w i * ‖s.points i -ᵥ s.altitudeFoot i‖ = (if i ∈ signs then -1 else 1) * r := by
      intro i
      rw [altitudeFoot, ← s.signedInfDist_affineCombination i h1]
      exact h i
    simp_rw [← dist_eq_norm_vsub] at h'
    have h'' : ∀ i, w i = r * s.excenterWeightsUnnorm signs i := by
      simp_rw [excenterWeightsUnnorm]
      intro i
      replace h' := h' i
      rw [← height, ← eq_div_iff (s.height_pos i).ne'] at h'
      rw [h', mul_comm, div_eq_mul_inv, mul_assoc, height, altitudeFoot, orthogonalProjectionSpan]
    have hw : w = s.excenterWeights signs := by
      simp_rw [h'', ← Finset.mul_sum] at h1
      ext j
      rw [h'', eq_inv_of_mul_eq_one_left h1]
      simp [excenterWeights]
    subst hw
    exact ⟨s.sum_excenterWeights_eq_one_iff.1 h1, rfl⟩
  · rintro ⟨h, rfl⟩
    refine ⟨SignType.sign (∑ j, s.excenterWeightsUnnorm signs j) * (s.exradius signs), fun i ↦ ?_⟩
    rw [h.signedInfDist_excenter]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variantd788e3d20838dc2a3b9a9ef623833fe1afb95a3a91847ef45e73cac3280c72fa.lean#L938).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401cc1ded433db248dd46aeca64cc5cd3edffc93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
