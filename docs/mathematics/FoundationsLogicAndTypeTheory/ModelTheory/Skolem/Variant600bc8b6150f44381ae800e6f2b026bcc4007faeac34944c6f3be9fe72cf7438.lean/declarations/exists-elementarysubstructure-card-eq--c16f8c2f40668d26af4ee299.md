# exists_elementarySubstructure_card_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e2910278fb18bb039a8b870dba203cf079fa837",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6baf6f05-401a-9040-144d-626f9c16deb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a31dc60-d8d5-153e-433e-7cd93e1f9454",
  "kind": "theorem",
  "lexical_name": "exists_elementarySubstructure_card_eq",
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
  "slug": "exists-elementarysubstructure-card-eq--c16f8c2f40668d26af4ee299",
  "source": {
    "blob": "7e2910278fb18bb039a8b870dba203cf079fa837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c16f8c2f40668d26af4ee299ecbf9ea1823f849bfbb0c2d10487fc3e819a1318",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a31dc60-d8d5-153e-433e-7cd93e1f9454`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_elementarySubstructure_card_eq (s : Set M) (κ : Cardinal.{w'}) (h1 : ℵ₀ ≤ κ)
    (h2 : Cardinal.lift.{w'} #s ≤ Cardinal.lift.{w} κ)
    (h3 : Cardinal.lift.{w'} L.card ≤ Cardinal.lift.{max u v} κ)
    (h4 : Cardinal.lift.{w} κ ≤ Cardinal.lift.{w'} #M) :
    ∃ S : L.ElementarySubstructure M, s ⊆ S ∧ Cardinal.lift.{w'} #S = Cardinal.lift.{w} κ := by
  obtain ⟨s', hs'⟩ := Cardinal.le_mk_iff_exists_set.1 h4
  rw [← aleph0_le_lift.{_, w}] at h1
  rw [← hs'] at h1 h2 ⊢
  refine'
    ⟨elementarySkolem₁Reduct (closure (L.sum L.skolem₁) (s ∪ Equiv.ulift '' s')),
      (s.subset_union_left _).trans subset_closure, _⟩
  have h := mk_image_eq_lift _ s' Equiv.ulift.injective
  rw [lift_umax.{w, w'}, lift_id'.{w, w'}] at h
  rw [coeSort_elementarySkolem₁Reduct, ← h, lift_inj]
  refine'
    le_antisymm (lift_le.1 (lift_card_closure_le.trans _))
      (mk_le_mk_of_subset ((Set.subset_union_right _ _).trans subset_closure))
  rw [max_le_iff, aleph0_le_lift, ← aleph0_le_lift.{_, w'}, h, add_eq_max, max_le_iff, lift_le]
  refine' ⟨h1, (mk_union_le _ _).trans _, (lift_le.2 card_functions_sum_skolem₁_le).trans _⟩
  · rw [← lift_le, lift_add, h, add_comm, add_eq_max h1]
    exact max_le le_rfl h2
  · rw [lift_max, lift_aleph0, max_le_iff, aleph0_le_lift, and_comm, ← lift_le.{w'},
      lift_lift, lift_lift, ← aleph0_le_lift, h]
    refine' ⟨_, h1⟩
    rw [← lift_lift.{w', w}]
    refine' _root_.trans (lift_le.{w}.2 h3) _
    rw [lift_lift, ← lift_lift.{w, max u v}, ← hs', ← h, lift_lift]
  · refine' _root_.trans _ (lift_le.2 (mk_le_mk_of_subset (Set.subset_union_right _ _)))
    rw [aleph0_le_lift, ← aleph0_le_lift, h]
    exact h1
#align first_order.language.exists_elementary_substructure_card_eq FirstOrder.Language.exists_elementarySubstructure_card_eq

end Language

end FirstOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2910278fb18bb039a8b870dba203cf079fa837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
