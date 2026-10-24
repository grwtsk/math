# pluennecke_petridis_inequality_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d1d7728b728d2f2abdd0705d8f26f7a316ca206",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f50256e-758b-ca0e-1703-2c5b8941815b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe324775-6828-a7ba-b16f-bd36b4dcb591",
  "kind": "theorem",
  "lexical_name": "pluennecke_petridis_inequality_mul",
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
  "slug": "pluennecke-petridis-inequality-mul--607b97b046b8c07d7e72a435",
  "source": {
    "blob": "8d1d7728b728d2f2abdd0705d8f26f7a316ca206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:607b97b046b8c07d7e72a4356a76a1b3fc7310dff5bea3b6887fe8d8220e573c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe324775-6828-a7ba-b16f-bd36b4dcb591`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pluennecke_petridis_inequality_mul (C : Finset G)
    (hA : ∀ A' ⊆ A, #(A * B) * #A' ≤ #(A' * B) * #A) :
    #(C * A * B) * #A ≤ #(A * B) * #(C * A) := by
  induction C using Finset.induction_on with
  | empty => simp
  | insert x C _ ih =>
    set A' := A ∩ ({x}⁻¹ * C * A) with hA'
    set C' := insert x C with hC'
    have h₀ : {x} * A' = {x} * A ∩ (C * A) := by
      rw [hA', mul_assoc, singleton_mul_inter, (isUnit_singleton x).mul_inv_cancel_left]
    have h₁ : C' * A * B = C * A * B ∪ ({x} * A * B) \ ({x} * A' * B) := by
      rw [hC', insert_eq, union_comm, union_mul, union_mul]
      refine (sup_sdiff_eq_sup ?_).symm
      rw [h₀]
      gcongr
      exact inter_subset_right
    have h₂ : {x} * A' * B ⊆ {x} * A * B := by gcongr; exact inter_subset_left
    have h₃ : #(C' * A * B) ≤ #(C * A * B) + #(A * B) - #(A' * B) := by
      rw [h₁]
      refine (card_union_le _ _).trans_eq ?_
      rw [card_sdiff h₂, ← add_tsub_assoc_of_le (card_le_card h₂), mul_assoc {_}, mul_assoc {_},
        card_singleton_mul, card_singleton_mul]
    refine (mul_le_mul_right' h₃ _).trans ?_
    rw [tsub_mul, add_mul]
    refine (tsub_le_tsub (add_le_add_right ih _) <| hA _ inter_subset_left).trans_eq ?_
    rw [← mul_add, ← mul_tsub, ← hA', hC', insert_eq, union_mul, ← card_singleton_mul x A, ←
      card_singleton_mul x A', add_comm #_, h₀, eq_tsub_of_add_eq (card_union_add_card_inter _ _)]

end Group

section CommGroup
variable [CommGroup G] {A B C : Finset G}

/-! ### Commutative Ruzsa triangle inequality -/

-- Auxiliary lemma for Ruzsa's triangle sum inequality, and the Plünnecke-Ruzsa inequality.
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant3bad80f2fd46476bebc32a9b16896544103a59ba918ca91b3402ea05b694b87d.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d1d7728b728d2f2abdd0705d8f26f7a316ca206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
