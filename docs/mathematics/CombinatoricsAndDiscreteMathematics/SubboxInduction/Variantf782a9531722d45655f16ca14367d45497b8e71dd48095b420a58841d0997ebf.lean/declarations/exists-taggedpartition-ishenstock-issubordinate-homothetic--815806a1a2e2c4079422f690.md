# exists_taggedPartition_isHenstock_isSubordinate_homothetic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b423bb32daf759d0927e5b80b858c13d9b5ea600",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5f1ccc1-c824-feb4-9482-81ebd2fb946e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27b69505-44e7-500d-4468-8e9c386d0338",
  "kind": "theorem",
  "lexical_name": "exists_taggedPartition_isHenstock_isSubordinate_homothetic",
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
  "slug": "exists-taggedpartition-ishenstock-issubordinate-homothetic--815806a1a2e2c4079422f690",
  "source": {
    "blob": "b423bb32daf759d0927e5b80b858c13d9b5ea600",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:815806a1a2e2c4079422f6909280d6514acee64afe13ce2927703d91e01a8a92",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27b69505-44e7-500d-4468-8e9c386d0338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_taggedPartition_isHenstock_isSubordinate_homothetic (I : Box ι)
    (r : (ι → ℝ) → Ioi (0 : ℝ)) :
    ∃ π : TaggedPrepartition I, π.IsPartition ∧ π.IsHenstock ∧ π.IsSubordinate r ∧
      (∀ J ∈ π, ∃ m : ℕ, ∀ i, (J :).upper i - J.lower i = (I.upper i - I.lower i) / 2 ^ m) ∧
        π.distortion = I.distortion := by
  refine subbox_induction_on I (fun J _ hJ => ?_) fun z _ => ?_
  · choose! πi hP hHen hr Hn _ using hJ
    choose! n hn using Hn
    have hP : ((splitCenter J).biUnionTagged πi).IsPartition :=
      (isPartition_splitCenter _).biUnionTagged hP
    have hsub : ∀ J' ∈ (splitCenter J).biUnionTagged πi, ∃ n : ℕ, ∀ i,
        (J' :).upper i - J'.lower i = (J.upper i - J.lower i) / 2 ^ n := by
      intro J' hJ'
      rcases (splitCenter J).mem_biUnionTagged.1 hJ' with ⟨J₁, h₁, h₂⟩
      refine ⟨n J₁ J' + 1, fun i => ?_⟩
      simp only [hn J₁ h₁ J' h₂, upper_sub_lower_of_mem_splitCenter h₁, pow_succ', div_div]
    refine ⟨_, hP, isHenstock_biUnionTagged.2 hHen, isSubordinate_biUnionTagged.2 hr, hsub, ?_⟩
    refine TaggedPrepartition.distortion_of_const _ hP.nonempty_boxes fun J' h' => ?_
    rcases hsub J' h' with ⟨n, hn⟩
    exact Box.distortion_eq_of_sub_eq_div hn
  · refine ⟨Box.Icc I ∩ closedBall z (r z),
      inter_mem_nhdsWithin _ (closedBall_mem_nhds _ (r z).coe_prop), ?_⟩
    intro J _ n Hmem HIcc Hsub
    rw [Set.subset_inter_iff] at HIcc
    refine ⟨single _ _ le_rfl _ Hmem, isPartition_single _, isHenstock_single _,
      (isSubordinate_single _ _).2 HIcc.2, ?_, distortion_single _ _⟩
    simp only [TaggedPrepartition.mem_single, forall_eq]
    refine ⟨0, fun i => ?_⟩
    simp

end Box

namespace Prepartition

open TaggedPrepartition Finset Function

/-- Given a box `I` in `ℝⁿ`, a function `r : ℝⁿ → (0, ∞)`, and a prepartition `π` of `I`, there
exists a tagged prepartition `π'` of `I` such that

* each box of `π'` is included in some box of `π`;
* `π'` is a Henstock partition;
* `π'` is subordinate to `r`;
* `π'` covers exactly the same part of `I` as `π`;
* the distortion of `π'` is equal to the distortion of `π`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b423bb32daf759d0927e5b80b858c13d9b5ea600` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
