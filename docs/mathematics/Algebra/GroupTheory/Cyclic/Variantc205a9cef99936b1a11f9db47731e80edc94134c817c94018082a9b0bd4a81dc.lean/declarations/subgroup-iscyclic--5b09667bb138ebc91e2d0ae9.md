# Subgroup.isCyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0753a7b0ff7f4a9944138cddd118e4618c0914d420e980ca79b07db6d0bb328c",
  "kind": "instance",
  "lexical_name": "Subgroup.isCyclic",
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
  "slug": "subgroup-iscyclic--5b09667bb138ebc91e2d0ae9",
  "source": {
    "blob": "cb93a05c1b79c927c778756bad363f3dd5d0d421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 185,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b09667bb138ebc91e2d0ae9baae41f9b4c7dac8b86dd72973407ef463a4c720",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0753a7b0ff7f4a9944138cddd118e4618c0914d420e980ca79b07db6d0bb328c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subgroup.isCyclic {α : Type u} [Group α] [IsCyclic α] (H : Subgroup α) : IsCyclic H :=
  haveI := Classical.propDecidable
  let ⟨g, hg⟩ := IsCyclic.exists_generator (α := α)
  if hx : ∃ x : α, x ∈ H ∧ x ≠ (1 : α) then
    let ⟨x, hx₁, hx₂⟩ := hx
    let ⟨k, hk⟩ := hg x
    have hk : g ^ k = x := hk
    have hex : ∃ n : ℕ, 0 < n ∧ g ^ n ∈ H :=
      ⟨k.natAbs,
        Nat.pos_of_ne_zero fun h => hx₂ <| by
          rw [← hk, Int.natAbs_eq_zero.mp h, zpow_zero], by
            cases' k with k k
            · rw [Int.ofNat_eq_coe, Int.natAbs_cast k, ← zpow_ofNat, ←Int.ofNat_eq_coe, hk]
              exact hx₁
            · rw [Int.natAbs_negSucc, ← Subgroup.inv_mem_iff H]; simp_all⟩
    ⟨⟨⟨g ^ Nat.find hex, (Nat.find_spec hex).2⟩, fun ⟨x, hx⟩ =>
        let ⟨k, hk⟩ := hg x
        have hk : g ^ k = x := hk
        have hk₂ : g ^ ((Nat.find hex : ℤ) * (k / Nat.find hex : ℤ)) ∈ H := by
          rw [zpow_mul]
          apply H.zpow_mem
          exact_mod_cast (Nat.find_spec hex).2
        have hk₃ : g ^ (k % Nat.find hex : ℤ) ∈ H :=
          (Subgroup.mul_mem_cancel_right H hk₂).1 <| by
            rw [← zpow_add, Int.emod_add_ediv, hk]; exact hx
        have hk₄ : k % Nat.find hex = (k % Nat.find hex).natAbs := by
          rw [Int.natAbs_of_nonneg
              (Int.emod_nonneg _ (Int.coe_nat_ne_zero_iff_pos.2 (Nat.find_spec hex).1))]
        have hk₅ : g ^ (k % Nat.find hex).natAbs ∈ H := by rwa [← zpow_ofNat, ← hk₄]
        have hk₆ : (k % (Nat.find hex : ℤ)).natAbs = 0 :=
          by_contradiction fun h =>
            Nat.find_min hex
              (Int.ofNat_lt.1 <| by
                rw [← hk₄]; exact Int.emod_lt_of_pos _ (Int.coe_nat_pos.2 (Nat.find_spec hex).1))
              ⟨Nat.pos_of_ne_zero h, hk₅⟩
        ⟨k / (Nat.find hex : ℤ),
          Subtype.ext_iff_val.2
            (by
              suffices g ^ ((Nat.find hex : ℤ) * (k / Nat.find hex : ℤ)) = x by simpa [zpow_mul]
              rw [Int.mul_ediv_cancel'
                  (Int.dvd_of_emod_eq_zero (Int.natAbs_eq_zero.mp hk₆)),
                hk])⟩⟩⟩
  else by
    have : H = (⊥ : Subgroup α) :=
      Subgroup.ext fun x =>
        ⟨fun h => by simp at *; tauto, fun h => by rw [Subgroup.mem_bot.1 h]; exact H.one_mem⟩
    subst this; infer_instance
#align subgroup.is_cyclic Subgroup.isCyclic
#align add_subgroup.is_add_cyclic AddSubgroup.isAddCyclic

open Finset Nat

section Classical

open Classical

@[to_additive IsAddCyclic.card_pow_eq_one_le]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variantc205a9cef99936b1a11f9db47731e80edc94134c817c94018082a9b0bd4a81dc.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb93a05c1b79c927c778756bad363f3dd5d0d421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
