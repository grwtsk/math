# exists_forall_signedInfDist_eq_iff_excenterExists_and_eq_excenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d7b5902c403049b85d9ff01a8f82d74ea7abe4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 930,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3894524c-dae9-0424-58d6-fde18e0f589b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0a997d5-b296-dde9-fd24-1ed2b8ab718a",
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
  "slug": "exists-forall-signedinfdist-eq-iff-excenterexists-and-eq-excenter--1d6f6dba571230579e1dce99",
  "source": {
    "blob": "1d7b5902c403049b85d9ff01a8f82d74ea7abe4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 959,
    "line": 930,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d6f6dba571230579e1dce99855295bc8e158d47ccd052834535d47912342366",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0a997d5-b296-dde9-fd24-1ed2b8ab718a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 930–959.

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

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variante5962d6b1d3e0349e014edb5d8521040076ebb0a0c71f286616a044d8157e68c.lean#L930).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d7b5902c403049b85d9ff01a8f82d74ea7abe4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
