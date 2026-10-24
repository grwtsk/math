# card_pow_eq_card_pow_card_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdf97508-d4d0-a0e4-11a7-fce8919f96ee",
  "kind": "theorem",
  "lexical_name": "card_pow_eq_card_pow_card_univ",
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
  "slug": "card-pow-eq-card-pow-card-univ--162e6478b79d4b7aa1a21aff",
  "source": {
    "blob": "e5448e95b3248be252732f28e3c5f3da5dab907f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 167,
    "path": "GRWTSK/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:162e6478b79d4b7aa1a21aff83a857d31b32f6f452dee5d5d87f004c205b474f",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdf97508-d4d0-a0e4-11a7-fce8919f96ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_pow_eq_card_pow_card_univ [∀ k : ℕ, DecidablePred (· ∈ S ^ k)] :
    ∀ k, Fintype.card G ≤ k → Fintype.card (↥(S ^ k)) = Fintype.card (↥(S ^ Fintype.card G)) := by
  have hG : 0 < Fintype.card G := Fintype.card_pos
  rcases S.eq_empty_or_nonempty with (rfl | ⟨a, ha⟩)
  · refine fun k hk ↦ Fintype.card_congr ?_
    rw [empty_pow (hG.trans_le hk).ne', empty_pow (ne_of_gt hG)]
  have key : ∀ (a) (s t : Set G) [Fintype s] [Fintype t],
      (∀ b : G, b ∈ s → b * a ∈ t) → Fintype.card s ≤ Fintype.card t := by
    refine fun a s t _ _ h ↦ Fintype.card_le_of_injective (fun ⟨b, hb⟩ ↦ ⟨b * a, h b hb⟩) ?_
    rintro ⟨b, hb⟩ ⟨c, hc⟩ hbc
    exact Subtype.ext (mul_right_cancel (Subtype.ext_iff.mp hbc))
  have mono : Monotone (fun n ↦ Fintype.card (↥(S ^ n)) : ℕ → ℕ) :=
    monotone_nat_of_le_succ fun n ↦ key a _ _ fun b hb ↦ Set.mul_mem_mul hb ha
  refine fun _ ↦ Nat.stabilises_of_monotone mono (fun n ↦ set_fintype_card_le_univ (S ^ n))
    fun n h ↦ le_antisymm (mono (n + 1).le_succ) (key a⁻¹ (S ^ (n + 2)) (S ^ (n + 1)) ?_)
  replace h₂ : S ^ n * {a} = S ^ (n + 1) := by
    have : Fintype (S ^ n * Set.singleton a) := by
      classical
      apply fintypeMul
    refine Set.eq_of_subset_of_card_le ?_ (le_trans (ge_of_eq h) ?_)
    · exact mul_subset_mul Set.Subset.rfl (Set.singleton_subset_iff.mpr ha)
    · convert key a (S ^ n) (S ^ n * {a}) fun b hb ↦ Set.mul_mem_mul hb (Set.mem_singleton a)
  rw [pow_succ', ← h₂, ← mul_assoc, ← pow_succ', h₂, mul_singleton, forall_mem_image]
  intro x hx
  rwa [mul_inv_cancel_right]

end Group
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantfc8ff95ae14d0ee5cb808dbb2f95d2316079f1d238a4165326c5d96935162e7b.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5448e95b3248be252732f28e3c5f3da5dab907f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
