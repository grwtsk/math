# MulAction.IsPreprimitive.isMultiplyPreprimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d110204b11b0326e04097af6cc308d300493e86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7060c22e5e801b5ad0e106c47d9a5f4d8c2974962880b6b91377830bdeda7bea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9ce1b03-c526-6808-4d18-115dd47e7164",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c12bc5b3-2604-d5cb-7922-3e72d1a55b98",
  "kind": "theorem",
  "lexical_name": "MulAction.IsPreprimitive.isMultiplyPreprimitive",
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
  "slug": "mulaction-ispreprimitive-ismultiplypreprimitive--c06f9d3fc91baefe12f64333",
  "source": {
    "blob": "3d110204b11b0326e04097af6cc308d300493e86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 233,
    "path": "GRWTSK/Algebra/GroupTheory/Jordan/Variant7060c22e5e801b5ad0e106c47d9a5f4d8c2974962880b6b91377830bdeda7bea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c06f9d3fc91baefe12f6433359feeddf433229cf45fffde64530680c50c950c5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Jordan/Variant7060c22e5e801b5ad0e106c47d9a5f4d8c2974962880b6b91377830bdeda7bea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c12bc5b3-2604-d5cb-7922-3e72d1a55b98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulAction.IsPreprimitive.isMultiplyPreprimitive
    (hG : IsPreprimitive G α) {s : Set α} {n : ℕ}
    (hsn : s.ncard = n + 1) (hsn' : n + 2 < Nat.card α)
    (hprim : IsPreprimitive (fixingSubgroup G s) (ofFixingSubgroup G s)) :
    IsMultiplyPreprimitive G α (n + 2) := by
  have hα : Finite α := Or.resolve_right (finite_or_infinite α) (fun _ ↦ by
    simp [Nat.card_eq_zero_of_infinite] at hsn')
  induction n generalizing α hα G with
  -- case n = 0
  | zero => simpa using is_two_preprimitive hG hsn hsn' hprim
  -- Induction step
  | succ n hrec =>
    suffices ∃ (a : α) (t : Set (SubMulAction.ofStabilizer G a)),
      a ∈ s ∧ s = insert a (Subtype.val '' t) by
      obtain ⟨a, t, _, hst⟩ := this
      have ha' : a ∉ Subtype.val '' t := by
        intro h; rw [Set.mem_image] at h; obtain ⟨x, hx⟩ := h
        apply x.prop; rw [hx.right]; exact Set.mem_singleton a
      have ht_prim : IsPreprimitive (stabilizer G a) (SubMulAction.ofStabilizer G a) := by
        rw [← is_one_preprimitive_iff]
        rw [← isMultiplyPreprimitive_succ_iff_ofStabilizer]
        · apply is_two_preprimitive hG hsn hsn' hprim
        · norm_num
      have : IsPreprimitive ↥(fixingSubgroup G (insert a (Subtype.val '' t)))
          (ofFixingSubgroup G (insert a (Subtype.val '' t))) :=
        IsPreprimitive.of_surjective
          (ofFixingSubgroup_of_eq_bijective (hst := hst)).surjective
      have hGs' : IsPreprimitive (fixingSubgroup (stabilizer G a) t)
        (ofFixingSubgroup (stabilizer G a) t) :=
        IsPreprimitive.of_surjective
          ofFixingSubgroup_insert_map_bijective.surjective
      rw [isMultiplyPreprimitive_succ_iff_ofStabilizer G (a := a) _ (Nat.le_add_left 1 (n + 1))]
      refine hrec ht_prim ?_ ?_ hGs' Subtype.finite
      · -- t.card = Nat.succ n
        rw [← Set.ncard_image_of_injective t Subtype.val_injective]
        apply Nat.add_right_cancel
        rw [← Set.ncard_insert_of_notMem ha', ← hst, hsn]
      · -- n + 2 < Nat.card (SubMulAction.ofStabilizer G α a)
        rw [← Nat.add_lt_add_iff_right, nat_card_ofStabilizer_add_one_eq]
        exact hsn'
    -- ∃ a t, a ∈ s ∧ s = insert a (Subtype.val '' t)
    suffices s.Nonempty by
      obtain ⟨a, ha⟩ := this
      use a, Subtype.val ⁻¹' s, ha
      ext x
      by_cases hx : x = a <;> simp [hx, mem_ofStabilizer_iff, ha]
    rw [← Set.ncard_pos, hsn]; apply Nat.succ_pos

end Jordan

section Subgroups

namespace Equiv.Perm

open Equiv

variable {α : Type*}

variable {G : Subgroup (Perm α)}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Jordan/Variant7060c22e5e801b5ad0e106c47d9a5f4d8c2974962880b6b91377830bdeda7bea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Jordan/Variant7060c22e5e801b5ad0e106c47d9a5f4d8c2974962880b6b91377830bdeda7bea.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d110204b11b0326e04097af6cc308d300493e86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
