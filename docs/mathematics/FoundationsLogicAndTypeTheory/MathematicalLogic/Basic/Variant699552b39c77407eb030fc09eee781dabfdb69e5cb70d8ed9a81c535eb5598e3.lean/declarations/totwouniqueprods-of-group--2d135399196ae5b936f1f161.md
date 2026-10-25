# toTwoUniqueProds_of_group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15a272cc-c9ea-ce24-f3ae-aed4f0946fe5",
  "kind": "theorem",
  "lexical_name": "toTwoUniqueProds_of_group",
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
  "slug": "totwouniqueprods-of-group--2d135399196ae5b936f1f161",
  "source": {
    "blob": "afd4bc8fc72ad3c204f81773e6c78e1b71f3b917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 388,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant699552b39c77407eb030fc09eee781dabfdb69e5cb70d8ed9a81c535eb5598e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d135399196ae5b936f1f1616b247f1c48767afcaca0c6d4c94b2a723bb903d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant699552b39c77407eb030fc09eee781dabfdb69e5cb70d8ed9a81c535eb5598e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15a272cc-c9ea-ce24-f3ae-aed4f0946fe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] theorem toTwoUniqueProds_of_group {G}
    [Group G] [UniqueProds G] : TwoUniqueProds G where
  uniqueMul_of_one_lt_card {A B} hc := by
    simp_rw [Nat.one_lt_mul_iff, card_pos] at hc
    obtain ⟨a, ha, b, hb, hu⟩ := uniqueMul_of_nonempty hc.1 hc.2.1
    let C := A.map ⟨_, mul_right_injective a⁻¹⟩ -- C = a⁻¹A
    let D := B.map ⟨_, mul_left_injective b⁻¹⟩  -- D = Bb⁻¹
    have hcard : 1 < #C ∨ 1 < #D := by simp_rw [C, D, card_map]; exact hc.2.2
    have hC : 1 ∈ C := mem_map.mpr ⟨a, ha, inv_mul_cancel a⟩
    have hD : 1 ∈ D := mem_map.mpr ⟨b, hb, mul_inv_cancel b⟩
    suffices ∃ c ∈ C, ∃ d ∈ D, (c ≠ 1 ∨ d ≠ 1) ∧ UniqueMul C D c d by
      simp_rw [mem_product]
      obtain ⟨c, hc, d, hd, hne, hu'⟩ := this
      obtain ⟨a0, ha0, rfl⟩ := mem_map.mp hc
      obtain ⟨b0, hb0, rfl⟩ := mem_map.mp hd
      refine ⟨(_, _), ⟨ha0, hb0⟩, (a, b), ⟨ha, hb⟩, ?_, fun a' b' ha' hb' he => ?_, hu⟩
      · simp_rw [Function.Embedding.coeFn_mk, Ne, inv_mul_eq_one, mul_inv_eq_one] at hne
        rwa [Ne, Prod.mk_inj, not_and_or, eq_comm]
      specialize hu' (mem_map_of_mem _ ha') (mem_map_of_mem _ hb')
      simp_rw [Function.Embedding.coeFn_mk, mul_left_cancel_iff, mul_right_cancel_iff] at hu'
      rw [mul_assoc, ← mul_assoc a', he, mul_assoc, mul_assoc] at hu'
      exact hu' rfl
    classical
    let _ := Finset.mul (α := G)              -- E = D⁻¹C, F = DC⁻¹
    have := uniqueMul_of_nonempty (A := D.image (·⁻¹) * C) (B := D * C.image (·⁻¹)) ?_ ?_
    · obtain ⟨e, he, f, hf, hu⟩ := this
      clear_value C D
      simp only [UniqueMul, mem_mul, mem_image] at he hf hu
      obtain ⟨_, ⟨d1, hd1, rfl⟩, c1, hc1, rfl⟩ := he
      obtain ⟨d2, hd2, _, ⟨c2, hc2, rfl⟩, rfl⟩ := hf
      by_cases! h12 : c1 ≠ 1 ∨ d2 ≠ 1
      · refine ⟨c1, hc1, d2, hd2, h12, fun c3 d3 hc3 hd3 he => ?_⟩
        specialize hu ⟨_, ⟨_, hd1, rfl⟩, _, hc3, rfl⟩ ⟨_, hd3, _, ⟨_, hc2, rfl⟩, rfl⟩
        rw [mul_left_cancel_iff, mul_right_cancel_iff,
            mul_assoc, ← mul_assoc c3, he, mul_assoc, mul_assoc] at hu; exact hu rfl
      obtain ⟨rfl, rfl⟩ := h12
      by_cases! h21 : c2 ≠ 1 ∨ d1 ≠ 1
      · refine ⟨c2, hc2, d1, hd1, h21, fun c4 d4 hc4 hd4 he => ?_⟩
        specialize hu ⟨_, ⟨_, hd4, rfl⟩, _, hC, rfl⟩ ⟨_, hD, _, ⟨_, hc4, rfl⟩, rfl⟩
        simpa only [mul_one, one_mul, ← mul_inv_rev, he, true_imp_iff, inv_inj, and_comm] using hu
      obtain ⟨rfl, rfl⟩ := h21
      rcases hcard with hC | hD
      · obtain ⟨c, hc, hc1⟩ := exists_mem_ne hC 1
        refine (hc1 ?_).elim
        simpa using hu ⟨_, ⟨_, hD, rfl⟩, _, hc, rfl⟩ ⟨_, hD, _, ⟨_, hc, rfl⟩, rfl⟩
      · obtain ⟨d, hd, hd1⟩ := exists_mem_ne hD 1
        refine (hd1 ?_).elim
        simpa using hu ⟨_, ⟨_, hd, rfl⟩, _, hC, rfl⟩ ⟨_, hd, _, ⟨_, hC, rfl⟩, rfl⟩
    all_goals apply_rules [Nonempty.mul, Nonempty.image, Finset.Nonempty.map, hc.1, hc.2.1]

open UniqueMul in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant699552b39c77407eb030fc09eee781dabfdb69e5cb70d8ed9a81c535eb5598e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant699552b39c77407eb030fc09eee781dabfdb69e5cb70d8ed9a81c535eb5598e3.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afd4bc8fc72ad3c204f81773e6c78e1b71f3b917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
