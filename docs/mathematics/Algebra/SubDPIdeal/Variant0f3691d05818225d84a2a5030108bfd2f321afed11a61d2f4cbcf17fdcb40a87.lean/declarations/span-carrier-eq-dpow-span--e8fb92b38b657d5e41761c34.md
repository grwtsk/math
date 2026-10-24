# span_carrier_eq_dpow_span

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
      "line": 417,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e237f83c-d284-da4e-8b11-ec193fa7f8ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f61e391d-6739-b2b0-803f-b441bf1c47fc",
  "kind": "theorem",
  "lexical_name": "span_carrier_eq_dpow_span",
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
  "slug": "span-carrier-eq-dpow-span--e8fb92b38b657d5e41761c34",
  "source": {
    "blob": "7854e39795ffabb5082ab39d799549ae6c79ddb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 417,
    "path": "GRWTSK/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8fb92b38b657d5e41761c34e1dd3e018a91358283402ae87613a4694a9d6e17",
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

Occurrence: `result:f61e391d-6739-b2b0-803f-b441bf1c47fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_carrier_eq_dpow_span {S : Set A} (hS : S ⊆ I) :
    (SubDPIdeal.span hI S).carrier =
      span {y : A | ∃ (n : ℕ) (_ : n ≠ 0) (x : A) (_ : x ∈ S), y = hI.dpow n x} := by
  set J : SubDPIdeal hI := {
    carrier := span {y : A | ∃ (n : ℕ) (_ : n ≠ 0) (x : A) (_ : x ∈ S), y = hI.dpow n x }
    isSubideal := hI.dpow_span_isSubideal hS
    dpow_mem _ hk _ hz := dpow_mem_span_of_mem_span hI hS hk hz }
  simp only [SubDPIdeal.span, sInf_carrier_def]
  apply le_antisymm
  · have h : J ∈ insert ⊤ {J : hI.SubDPIdeal | S ⊆ ↑J.carrier} :=
      Set.mem_insert_of_mem _
        (fun x hx ↦ subset_span ⟨1, one_ne_zero, x, hx, by rw [hI.dpow_one (hS hx)]⟩)
    refine sInf_le_of_le ⟨J, ?_⟩ (le_refl _)
    simp only [h, ciInf_pos, J]
  · rw [le_iInf₂_iff]
    intro K hK
    have : S ≤ K := by
      simp only [Set.mem_insert_iff, Set.mem_ofPred_eq] at hK
      rcases hK with rfl | hKS
      exacts [hS, hKS]
    rw [span_le]
    rintro y ⟨n, hn, x, hx, rfl⟩
    exact K.dpow_mem n hn x (this hx)

end Generated

end SubDPIdeal

section Ker

variable {A : Type*} [CommRing A] {I : Ideal A} (hI : DividedPowers I)
  {B : Type*} [CommRing B] {J : Ideal B} (hJ : DividedPowers J)

/-- The kernel of a divided power morphism from `I` to `J` is a sub-dp-ideal of `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SubDPIdeal/Variant0f3691d05818225d84a2a5030108bfd2f321afed11a61d2f4cbcf17fdcb40a87.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7854e39795ffabb5082ab39d799549ae6c79ddb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
