# sum_addContent_eq_of_sUnion_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36511f3c1ee578146fd740b5241d08316d783442",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41a03abd-a815-2f66-1f4a-29cc6b0c1b36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45c14997-b0c0-5460-6973-9d5467876346",
  "kind": "theorem",
  "lexical_name": "sum_addContent_eq_of_sUnion_eq",
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
  "slug": "sum-addcontent-eq-of-sunion-eq--64af0841688673bc2d868aea",
  "source": {
    "blob": "36511f3c1ee578146fd740b5241d08316d783442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 189,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64af0841688673bc2d868aea314efe471921c294182f31c9b2fcb7a9053cf7a6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45c14997-b0c0-5460-6973-9d5467876346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_addContent_eq_of_sUnion_eq (hC : IsSetSemiring C) (J J' : Finset (Set α))
    (hJ : ↑J ⊆ C) (hJdisj : PairwiseDisjoint (J : Set (Set α)) id)
    (hJ' : ↑J' ⊆ C) (hJ'disj : PairwiseDisjoint (J' : Set (Set α)) id)
    (h : ⋃₀ (J : Set (Set α)) = ⋃₀ J') :
    ∑ s ∈ J, m s = ∑ t ∈ J', m t := by
  calc ∑ s ∈ J, m s
  _ = ∑ s ∈ J, (∑ t ∈ J', m (s ∩ t)) := by
    apply Finset.sum_congr rfl (fun s hs ↦ ?_)
    have : s = ⋃ t ∈ J', s ∩ t := by
      simp_rw [← Finset.set_biUnion_coe, ← inter_iUnion, left_eq_inter, ← sUnion_eq_biUnion, ← h]
      exact subset_sUnion_of_mem hs
    nth_rewrite 1 [this]
    apply addContent_biUnion
    · exact fun t ht ↦ hC.inter_mem _ (hJ hs) _ (hJ' ht)
    · exact hJ'disj.mono fun _ ↦ by simp
    · rw [← this]
      exact hJ hs
  _ = ∑ t ∈ J', (∑ s ∈ J, m (s ∩ t)) := sum_comm
  _ = ∑ t ∈ J', m t := by
    apply Finset.sum_congr rfl (fun t ht ↦ ?_)
    have : t = ⋃ s ∈ J, s ∩ t := by
      simp_rw [← Finset.set_biUnion_coe, ← iUnion_inter, right_eq_inter, ← sUnion_eq_biUnion, h]
      exact subset_sUnion_of_mem ht
    nth_rewrite 2 [this]
    apply (addContent_biUnion _ _ _).symm
    · exact fun s hs ↦ hC.inter_mem _ (hJ hs) _ (hJ' ht)
    · exact hJdisj.mono fun _ ↦ by simp
    · rw [← this]
      exact hJ' ht

open scoped Classical in
/-- Extend a content over `C` to the finite unions of elements of `C` by additivity.
Use instead `AddContent.supClosure` which is the same function bundled as an `AddContent`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36511f3c1ee578146fd740b5241d08316d783442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
