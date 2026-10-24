# isCardinalFiltered_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ec2ea780a4adb599c4ec4f7344924af4947adee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6fa213252611d13e5cc2cf6961412b5f5908b0c88048c4294c94ed30a182834.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3046b44d-f26d-45ff-a242-13dcfabb52db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdf89a29-bea2-f245-5793-8159e359404d",
  "kind": "lemma",
  "lexical_name": "isCardinalFiltered_iUnion",
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
  "slug": "iscardinalfiltered-iunion--e67e35dd3a6603b84a113641",
  "source": {
    "blob": "4ec2ea780a4adb599c4ec4f7344924af4947adee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 216,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf6fa213252611d13e5cc2cf6961412b5f5908b0c88048c4294c94ed30a182834.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67e35dd3a6603b84a113641b252747a4ff9e1c3a10395b68495570e3d74adca",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf6fa213252611d13e5cc2cf6961412b5f5908b0c88048c4294c94ed30a182834.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdf89a29-bea2-f245-5793-8159e359404d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalFiltered_iUnion :
    IsCardinalFiltered (⋃ (j : κ₁.ord.ToType), transfiniteIterate (φ Y m) j A) κ₁ := by
  suffices ∀ ⦃K : Type w⦄ (j : κ₁.ord.ToType) (f : K → (transfiniteIterate (φ Y m) j A : Set _))
      (hK : HasCardinalLT K κ₁),
      ∃ (x : (transfiniteIterate (φ Y m) (Order.succ j) A : Set _)),
          ∀ (k : K), (f k).val ≤ x.val by
    refine isCardinalFiltered_preorder _ _ (fun K f hK ↦ ?_)
    rw [← hasCardinalLT_iff_cardinal_mk_lt] at hK
    have (k : K) : ∃ (j : κ₁.ord.ToType), (f k).val ∈ transfiniteIterate (φ Y m) j A := by
      simpa only [Set.mem_iUnion] using (f k).prop
    choose a ha using this
    obtain ⟨⟨z, hz⟩, hz'⟩ := this (IsCardinalFiltered.max a hK) (fun k ↦
      ⟨(f k).val, monotone_transfiniteIterate_φ Y hY' m A
          (leOfHom (IsCardinalFiltered.toMax a hK k)) (ha k)⟩) hK
    exact ⟨⟨z, Set.subset_iUnion _ _ hz⟩, hz'⟩
  intro K j f hK
  obtain ⟨⟨x, hx⟩, hx'⟩ := hφ₀ Y hY' m hm _
    (hasCardinalLT_transfiniteIterate_φ h₀ Y hY m A hA _) f hK
  refine ⟨⟨x, ?_⟩, hx'⟩
  have : NoMaxOrder κ₁.ord.ToType := noMaxOrder (IsRegular.aleph0_le Fact.out)
  rwa [transfiniteIterate_succ _ _ _ (not_isMax j),
    φ_eq _ _ _ (hasCardinalLT_transfiniteIterate_φ h₀ Y hY m A hA _)]

end existsIsCardinalFilteredSetOfExistsCofinal

open existsIsCardinalFilteredSetOfExistsCofinal in
/-- This is the implication (iii) → (iv) in the characterizations
of `SharplyLT κ₁ κ₂` in the docstring of this file. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf6fa213252611d13e5cc2cf6961412b5f5908b0c88048c4294c94ed30a182834.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf6fa213252611d13e5cc2cf6961412b5f5908b0c88048c4294c94ed30a182834.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ec2ea780a4adb599c4ec4f7344924af4947adee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
