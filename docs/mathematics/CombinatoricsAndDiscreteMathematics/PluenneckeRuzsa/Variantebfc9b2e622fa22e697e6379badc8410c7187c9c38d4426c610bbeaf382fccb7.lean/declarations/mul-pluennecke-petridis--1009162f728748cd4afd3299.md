# mul_pluennecke_petridis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7c9503686fc7d729b3cfc372667622bc221e8a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abef766b-c3a5-56a3-635c-502afa3bc3d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d418086-4556-6829-e4e5-8e1c7939ad2b",
  "kind": "theorem",
  "lexical_name": "mul_pluennecke_petridis",
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
  "slug": "mul-pluennecke-petridis--1009162f728748cd4afd3299",
  "source": {
    "blob": "d7c9503686fc7d729b3cfc372667622bc221e8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1009162f728748cd4afd3299667c58588bc93836b656fa70f2e5e1a2da02fc55",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d418086-4556-6829-e4e5-8e1c7939ad2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_pluennecke_petridis (C : Finset α)
    (hA : ∀ (A') (_ : A' ⊆ A), (A * B).card * A'.card ≤ (A' * B).card * A.card) :
    (A * B * C).card * A.card ≤ (A * B).card * (A * C).card := by
  induction' C using Finset.induction_on with x C _ ih
  · simp
  set A' := A ∩ (A * C / {x}) with hA'
  set C' := insert x C with hC'
  have h₀ : A' * {x} = A * {x} ∩ (A * C) := by
    rw [hA', inter_mul_singleton, (isUnit_singleton x).div_mul_cancel]
  have h₁ : A * B * C' = A * B * C ∪ (A * B * {x}) \ (A' * B * {x}) := by
    rw [hC', insert_eq, union_comm, mul_union]
    refine' (sup_sdiff_eq_sup _).symm
    rw [mul_right_comm, mul_right_comm A, h₀]
    exact mul_subset_mul_right (inter_subset_right _ _)
  have h₂ : A' * B * {x} ⊆ A * B * {x} :=
    mul_subset_mul_right (mul_subset_mul_right <| inter_subset_left _ _)
  have h₃ : (A * B * C').card ≤ (A * B * C).card + (A * B).card - (A' * B).card := by
    rw [h₁]
    refine' (card_union_le _ _).trans_eq _
    rw [card_sdiff h₂, ← add_tsub_assoc_of_le (card_le_of_subset h₂), card_mul_singleton,
      card_mul_singleton]
  refine' (mul_le_mul_right' h₃ _).trans _
  rw [tsub_mul, add_mul]
  refine' (tsub_le_tsub (add_le_add_right ih _) <| hA _ <| inter_subset_left _ _).trans_eq _
  rw [← mul_add, ← mul_tsub, ← hA', hC', insert_eq, mul_union, ← card_mul_singleton A x, ←
    card_mul_singleton A' x, add_comm (card _), h₀,
    eq_tsub_of_add_eq (card_union_add_card_inter _ _)]
#align finset.mul_pluennecke_petridis Finset.mul_pluennecke_petridis
#align finset.add_pluennecke_petridis Finset.add_pluennecke_petridis

/-! ### Sum triangle inequality -/


-- Auxiliary lemma for Ruzsa's triangle sum inequality, and the Plünnecke-Ruzsa inequality.
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PluenneckeRuzsa/Variantebfc9b2e622fa22e697e6379badc8410c7187c9c38d4426c610bbeaf382fccb7.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c9503686fc7d729b3cfc372667622bc221e8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
