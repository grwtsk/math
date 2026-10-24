# isSubDPIdeal_inf_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7854e39795ffabb5082ab39d799549ae6c79ddb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b837c36b-a381-4c54-99d7-918f5dc3f6bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fb1a80f-30bc-00d7-fd29-2d8739c446c4",
  "kind": "theorem",
  "lexical_name": "isSubDPIdeal_inf_iff",
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
  "slug": "issubdpideal-inf-iff--4315715b8e883f348638e0fe",
  "source": {
    "blob": "7854e39795ffabb5082ab39d799549ae6c79ddb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 135,
    "path": "GRWTSK/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4315715b8e883f348638e0fec100518b5a7c0a6b41ab91d82362f8450518a516",
  "verification": {
    "reference": "docs/verification/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fb1a80f-30bc-00d7-fd29-2d8739c446c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSubDPIdeal_inf_iff {A : Type*} [CommRing A] {I : Ideal A} (hI : DividedPowers I)
    {J : Ideal A} : IsSubDPIdeal hI (J ⊓ I) ↔
    ∀ {n : ℕ} {a b : A} (_ : a ∈ I) (_ : b ∈ I) (_ : a - b ∈ J), hI.dpow n a - hI.dpow n b ∈ J := by
  refine ⟨fun hIJ n a b ha hb hab ↦ ?_, fun hIJ ↦ ?_⟩
  · have hab' : a - b ∈ I := I.sub_mem ha hb
    rw [← add_sub_cancel b a, hI.dpow_add' hb hab', range_add_one, sum_insert notMem_range_self,
      tsub_self, hI.dpow_zero hab', mul_one, add_sub_cancel_left]
    exact J.sum_mem (fun i hi ↦ SemilatticeInf.inf_le_left J I ((J ⊓ I).smul_mem _
      (hIJ.dpow_mem _ (ne_of_gt (Nat.sub_pos_of_lt (mem_range.mp hi))) ⟨hab, hab'⟩)))
  · refine ⟨SemilatticeInf.inf_le_right J I, fun {n} hn {a} ha ↦ ⟨?_, hI.dpow_mem hn ha.right⟩⟩
    rw [← sub_zero (hI.dpow n a), ← hI.dpow_eval_zero hn]
    exact hIJ ha.right I.zero_mem (J.sub_mem ha.left J.zero_mem)

variable {A B : Type*} [CommSemiring A] {I : Ideal A} {hI : DividedPowers I} [CommSemiring B]
  {J : Ideal B} {hJ : DividedPowers J}

/-- [P. Berthelot and A. Ogus, *Notes on crystalline cohomology* (Lemma 3.6)][BerthelotOgus-1978] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7854e39795ffabb5082ab39d799549ae6c79ddb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
