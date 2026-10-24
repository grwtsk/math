# of_isAlgebraic_adjoin_insert_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b6bd4f9-703a-6535-f61e-b250f62b5787",
  "kind": "lemma",
  "lexical_name": "of_isAlgebraic_adjoin_insert_sdiff",
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
  "slug": "of-isalgebraic-adjoin-insert-sdiff--fe4ba4d33354b56d2d9896af",
  "source": {
    "blob": "28bab1de2f9509d8e20552883cc6faf3014bf1f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 566,
    "path": "GRWTSK/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe4ba4d33354b56d2d9896afe806439d8c1c57400f0c71a3468ee818975bbe8d",
  "verification": {
    "reference": "docs/verification/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b6bd4f9-703a-6535-f61e-b250f62b5787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_isAlgebraic_adjoin_insert_sdiff (hj : j ∈ insert i s)
    (H₁ : IsTranscendenceBasis R fun x : s ↦ v x)
    (H₂ : IsAlgebraic (Algebra.adjoin R (v '' (insert i s \ {j}))) (v j)) :
    IsTranscendenceBasis R fun x : ↥(insert i s \ {j}) ↦ v x := by
  have := H₂.nontrivial
  have := (adjoin R (v '' (insert i s \ {j}))).subtype_injective.nontrivial
  have := (isDomain_iff_noZeroDivisors_and_nontrivial S).mpr ⟨‹_›, ‹_›⟩
  have := Module.nontrivial R S
  rw [← mem_algebraicClosure, ← SetLike.mem_coe, ← matroid_closure_eq] at H₂
  have inj := injOn_iff_injective.mpr H₁.1.injective
  have H' := image_eq_range .. ▸ matroid_isBase_iff.mpr H₁.to_subtype_range
  obtain hj' | hj := (em (j ∈ s)).symm
  · cases hj.resolve_right hj'; rwa [insert_sdiff_self_of_notMem hj']
  have Hj := H'.indep.notMem_closure_sdiff_of_mem ⟨j, hj, rfl⟩
  have hi : i ∉ s := fun hi ↦ Hj <| by
    rw [← image_singleton, ← inj.image_sdiff_subset (singleton_subset_iff.mpr hj)]
    rwa [insert_eq_of_mem hi] at H₂
  obtain eq | ne := eq_or_ne (v i) (v j)
  · classical
    convert!
      H₁.comp_equiv <|
        .symm <|
          ((Equiv.swap j i).image s).trans <|
            Set.equivOfEq <| Equiv.image_swap_of_mem_of_notMem hj hi with
      ⟨x, rfl | hxi, hxj⟩
    · simp [eq]
    · simp [Equiv.swap_apply_of_ne_of_ne hxj (ne_of_mem_of_not_mem hxi hi)]
  have hi' : v i ∉ v '' s := fun his ↦ Hj <| by
    refine Matroid.closure_subset_closure _ ?_ H₂
    rintro x ⟨k, ⟨rfl | hks, hkj⟩, rfl⟩
    · exact ⟨his, ne⟩
    · exact ⟨⟨k, hks, rfl⟩, inj.ne hks hj hkj⟩
  have : (insert i s).InjOn v := (injOn_insert hi).mpr ⟨inj, hi'⟩
  rw [← isTranscendenceBasis_subtype_range
    (by exact injOn_iff_injective.1 (this.mono sdiff_subset)),
    ← matroid_isBase_iff, ← image_eq_range]
  rw [this.image_sdiff_subset (singleton_subset_iff.mpr (.inr hj)), image_singleton,
    image_insert_eq] at H₂ ⊢
  exact H'.isBase_insert_sdiff_of_mem_closure H₂ (.inr ⟨j, hj, rfl⟩)

@[deprecated (since := "2026-06-03")]
alias of_isAlgebraic_adjoin_insert_diff := of_isAlgebraic_adjoin_insert_sdiff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28bab1de2f9509d8e20552883cc6faf3014bf1f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
