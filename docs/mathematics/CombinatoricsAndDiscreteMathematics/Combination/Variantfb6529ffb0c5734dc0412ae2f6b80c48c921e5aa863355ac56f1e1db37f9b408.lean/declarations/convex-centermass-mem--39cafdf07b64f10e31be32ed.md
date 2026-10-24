# Convex.centerMass_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7508e810a77e8f5b56199340f2f5fe86c4695ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20ca4f6a-d519-4db7-5e20-8c505bf51ea1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c09537a-7e60-f34e-a40b-61ad14c333c7",
  "kind": "theorem",
  "lexical_name": "Convex.centerMass_mem",
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
  "slug": "convex-centermass-mem--39cafdf07b64f10e31be32ed",
  "source": {
    "blob": "a7508e810a77e8f5b56199340f2f5fe86c4695ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 190,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39cafdf07b64f10e31be32edf0187a346338685f3a3524bbec3a7ab656ac6c51",
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

Occurrence: `result:4c09537a-7e60-f34e-a40b-61ad14c333c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.centerMass_mem (hs : Convex R s) :
    (∀ i ∈ t, 0 ≤ w i) → (0 < ∑ i ∈ t, w i) → (∀ i ∈ t, z i ∈ s) → t.centerMass w z ∈ s := by
  classical
  induction t using Finset.induction with
  | empty => simp
  | insert i t hi ht =>
    intro h₀ hpos hmem
    have zi : z i ∈ s := hmem _ (mem_insert_self _ _)
    have hs₀ : ∀ j ∈ t, 0 ≤ w j := fun j hj => h₀ j <| mem_insert_of_mem hj
    rw [sum_insert hi] at hpos
    by_cases hsum_t : ∑ j ∈ t, w j = 0
    · have ws : ∀ j ∈ t, w j = 0 := (sum_eq_zero_iff_of_nonneg hs₀).1 hsum_t
      have wz : ∑ j ∈ t, w j • z j = 0 := sum_eq_zero fun i hi => by simp [ws i hi]
      simp only [centerMass, sum_insert hi, wz, hsum_t, add_zero]
      simp only [hsum_t, add_zero] at hpos
      rw [← mul_smul, inv_mul_cancel₀ (ne_of_gt hpos), one_smul]
      exact zi
    · rw [Finset.centerMass_insert _ _ _ hi hsum_t]
      refine convex_iff_div.1 hs zi (ht hs₀ ?_ ?_) ?_ (sum_nonneg hs₀) hpos
      · exact lt_of_le_of_ne (sum_nonneg hs₀) (Ne.symm hsum_t)
      · intro j hj
        exact hmem j (mem_insert_of_mem hj)
      · exact h₀ _ (mem_insert_self _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7508e810a77e8f5b56199340f2f5fe86c4695ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
