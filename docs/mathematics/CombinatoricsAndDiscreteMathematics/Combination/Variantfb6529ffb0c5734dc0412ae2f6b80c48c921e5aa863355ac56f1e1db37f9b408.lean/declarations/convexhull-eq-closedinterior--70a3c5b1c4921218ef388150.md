# convexHull_eq_closedInterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df71b42c-c2fe-c4f8-ecc7-8d19ff9e9057",
  "kind": "theorem",
  "lexical_name": "convexHull_eq_closedInterior",
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
  "slug": "convexhull-eq-closedinterior--70a3c5b1c4921218ef388150",
  "source": {
    "blob": "a7508e810a77e8f5b56199340f2f5fe86c4695ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 616,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70a3c5b1c4921218ef38815024b82d5fbfc6a286a3db06fd1aa1cdf9becc5111",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df71b42c-c2fe-c4f8-ecc7-8d19ff9e9057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem convexHull_eq_closedInterior {𝕜 V : Type*} [Field 𝕜] [LinearOrder 𝕜]
    [IsOrderedRing 𝕜] [AddCommGroup V] [Module 𝕜 V] {n : ℕ} (s : Simplex 𝕜 V n) :
    convexHull 𝕜 (Set.range s.points) = s.closedInterior := by
  ext p
  rw [convexHull_range_eq_exists_affineCombination, Set.mem_ofPred]
  constructor <;> intro h
  · obtain ⟨u, w, hw, hw1, rfl⟩ := h
    have hw' : ∀ i ∈ u, w i ≤ 1 := by
      intro i hi
      rw [← hw1]
      apply Finset.single_le_sum (fun j hj ↦ hw j hj) hi
    have hw1' : ∑ i, (u : Set (Fin (n + 1))).indicator w i = 1 := by
      simpa [Finset.sum_indicator_subset _ u.subset_univ] using hw1
    rw [Finset.affineCombination_indicator_subset _ _ u.subset_univ,
      affineCombination_mem_closedInterior_iff hw1']
    intro i
    by_cases hi : i ∈ (u : Set (Fin (n + 1))) <;> aesop
  · obtain ⟨w, hw1, rfl⟩ := eq_affineCombination_of_mem_affineSpan_of_fintype <|
      Set.mem_of_mem_of_subset h s.closedInterior_subset_affineSpan
    rw [affineCombination_mem_closedInterior_iff hw1] at h
    exact ⟨Finset.univ, w, fun i _ ↦ (h i).1, hw1, rfl⟩

end Affine.Simplex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7508e810a77e8f5b56199340f2f5fe86c4695ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
