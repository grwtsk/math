# Aquaesulian.card_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d9372d5-741e-9704-567d-655c195cad46",
  "kind": "lemma",
  "lexical_name": "Aquaesulian.card_le_two",
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
  "slug": "aquaesulian-card-le-two--c6f21b3e24f8f392f45b48c7",
  "source": {
    "blob": "7e51816e0cdfc444a0e6c337c2c24240c185670a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant51b0b379bd83bfaae8ab67b02bc39df2be0ddc4a8ba39eb935c87ac21cd924ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6f21b3e24f8f392f45b48c7f500402a7bfe83c347cd86303926e2d3cefae6b3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant51b0b379bd83bfaae8ab67b02bc39df2be0ddc4a8ba39eb935c87ac21cd924ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d9372d5-741e-9704-567d-655c195cad46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Aquaesulian.card_le_two : #(Set.range (fun x ↦ f x + f (-x))) ≤ 2 := by
  classical
  by_cases! hf : ∀ x, f x + f (-x) = 0
  · simp [hf]
  · rcases hf with ⟨x, hx⟩
    suffices #(Set.range (fun x ↦ f x + f (-x))) ≤ (2 : ℕ) from mod_cast this
    rw [Cardinal.mk_le_iff_forall_finset_subset_card_le]
    intro s hs
    simp_rw [Set.subset_def, Set.mem_range] at hs
    refine (Finset.card_le_card_of_surjOn (fun x ↦ f x + f (-x)) ?_).trans
      (Finset.card_le_two (a := 0) (b := x))
    intro y hy
    rcases hs y hy with ⟨t, ht⟩
    simp only [Finset.coe_insert, Finset.coe_singleton, Set.mem_image, Set.mem_insert_iff,
               Set.mem_singleton_iff, exists_eq_or_imp, neg_zero, exists_eq_left, h.apply_zero,
               add_zero]
    by_cases h0 : y = 0
    · simp [h0]
    · refine .inr ?_
      by_contra hxy
      have huv := h.u_eq_zero_or_v_eq_zero hxy rfl ht
      simp [hx, h0] at huv

end General

/-- The condition on functions in the problem (for `ℚ` and in the original form). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant51b0b379bd83bfaae8ab67b02bc39df2be0ddc4a8ba39eb935c87ac21cd924ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2024Q6/Variant51b0b379bd83bfaae8ab67b02bc39df2be0ddc4a8ba39eb935c87ac21cd924ae.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e51816e0cdfc444a0e6c337c2c24240c185670a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
