# Ico_map_valMinAbs_natAbs_eq_Ico_map_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86b32c25-47be-275e-1ff2-c80399377709",
  "kind": "theorem",
  "lexical_name": "Ico_map_valMinAbs_natAbs_eq_Ico_map_id",
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
  "slug": "ico-map-valminabs-natabs-eq-ico-map-id--fe5662d10ff59f25a4bf277a",
  "source": {
    "blob": "f4c6859663b5b9fb454c7f509fed5ad6dcf4c297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 39,
    "path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe5662d10ff59f25a4bf277a586890c4b6b2c79f9d39c4c15301810166501537",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86b32c25-47be-275e-1ff2-c80399377709`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ico_map_valMinAbs_natAbs_eq_Ico_map_id (p : ℕ) [hp : Fact p.Prime] (a : ZMod p)
    (hap : a ≠ 0) : ((Ico 1 (p / 2).succ).1.map fun (x : ℕ) => (a * x).valMinAbs.natAbs) =
    (Ico 1 (p / 2).succ).1.map fun a => a := by
  have he : ∀ {x}, x ∈ Ico 1 (p / 2).succ → x ≠ 0 ∧ x ≤ p / 2 := by
    simp (config := { contextual := true }) [Nat.lt_succ_iff, Nat.succ_le_iff, pos_iff_ne_zero]
  have hep : ∀ {x}, x ∈ Ico 1 (p / 2).succ → x < p := fun hx =>
    lt_of_le_of_lt (he hx).2 (Nat.div_lt_self hp.1.pos (by decide))
  have hpe : ∀ {x}, x ∈ Ico 1 (p / 2).succ → ¬p ∣ x := fun hx hpx =>
    not_lt_of_ge (le_of_dvd (Nat.pos_of_ne_zero (he hx).1) hpx) (hep hx)
  have hmem : ∀ (x : ℕ) (hx : x ∈ Ico 1 (p / 2).succ),
      (a * x : ZMod p).valMinAbs.natAbs ∈ Ico 1 (p / 2).succ := by
    intro x hx
    simp [hap, CharP.cast_eq_zero_iff (ZMod p) p, hpe hx, lt_succ_iff, succ_le_iff, pos_iff_ne_zero,
      natAbs_valMinAbs_le _]
  have hsurj : ∀ (b : ℕ) (hb : b ∈ Ico 1 (p / 2).succ),
      ∃ x ∈ Ico 1 (p / 2).succ, b = (a * x : ZMod p).valMinAbs.natAbs := by
    intro b hb
    refine' ⟨(b / a : ZMod p).valMinAbs.natAbs, mem_Ico.mpr ⟨_, _⟩, _⟩
    · apply Nat.pos_of_ne_zero
      simp only [div_eq_mul_inv, hap, CharP.cast_eq_zero_iff (ZMod p) p, hpe hb, not_false_iff,
        valMinAbs_eq_zero, inv_eq_zero, Int.natAbs_eq_zero, Ne.def, _root_.mul_eq_zero, or_self_iff]
    · apply lt_succ_of_le; apply natAbs_valMinAbs_le
    · rw [nat_cast_natAbs_valMinAbs]
      split_ifs
      · erw [mul_div_cancel' _ hap, valMinAbs_def_pos, val_cast_of_lt (hep hb),
          if_pos (le_of_lt_succ (mem_Ico.1 hb).2), Int.natAbs_ofNat]
      · erw [mul_neg, mul_div_cancel' _ hap, natAbs_valMinAbs_neg, valMinAbs_def_pos,
          val_cast_of_lt (hep hb), if_pos (le_of_lt_succ (mem_Ico.1 hb).2), Int.natAbs_ofNat]
  simp only [← exists_prop] at hsurj
  exact Multiset.map_eq_map_of_bij_of_nodup _ _ (Finset.nodup _) (Finset.nodup _)
    (fun x _ => (a * x : ZMod p).valMinAbs.natAbs) hmem (fun _ _ => rfl)
    (inj_on_of_surj_on_of_card_le _ hmem hsurj le_rfl) hsurj
#align zmod.Ico_map_val_min_abs_nat_abs_eq_Ico_map_id ZMod.Ico_map_valMinAbs_natAbs_eq_Ico_map_id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c6859663b5b9fb454c7f509fed5ad6dcf4c297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
