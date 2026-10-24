# sum_range_modEq_sum_of_contra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f66c544b0397832b586b59182cce9cb98cd9c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/045249671217e9677a2d5fe3a0a5495025326875569e324117731c90cce2f221.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df86e043-a8ce-fefb-4eb5-37018503a82f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a17757c2-92c2-b0bc-f063-cb61c4aae552",
  "kind": "lemma",
  "lexical_name": "sum_range_modEq_sum_of_contra",
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
  "slug": "sum-range-modeq-sum-of-contra--071dd294b6d4d71941a58e8a",
  "source": {
    "blob": "4f66c544b0397832b586b59182cce9cb98cd9c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2001Q4/Variant045249671217e9677a2d5fe3a0a5495025326875569e324117731c90cce2f221.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:071dd294b6d4d71941a58e8a6fd77cca461e1f8b70e845fb9ce0ec868430f211",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2001Q4/Variant045249671217e9677a2d5fe3a0a5495025326875569e324117731c90cce2f221.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a17757c2-92c2-b0bc-f063-cb61c4aae552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_range_modEq_sum_of_contra (hS : ¬∃ a b, a ≠ b ∧ (n ! : ℤ) ∣ S c a - S c b) :
    n ! * ((n ! : ℤ) - 1) / 2 ≡ ∑ a, S c a [ZMOD n !] := by
  have mir : ∀ a, S c a % n ! ∈ Ico (0 : ℤ) n ! := fun a ↦ by
    rw [mem_Ico]; constructor
    · exact Int.emod_nonneg _ (by positivity)
    · exact Int.emod_lt_of_pos _ (by positivity)
  let f : Perm (Fin n) → Ico (0 : ℤ) n ! := fun a ↦ ⟨_, mir a⟩
  have bijf : Function.Bijective f := by
    rw [Fintype.bijective_iff_injective_and_card, Fintype.card_coe, Int.card_Ico, sub_zero,
      Int.toNat_natCast, Fintype.card_perm, Fintype.card_fin, Function.Injective]
    refine ⟨?_, rfl⟩
    contrapose! hS
    obtain ⟨a, b, he, hn⟩ := hS
    use a, b, hn
    simp only [f, Subtype.mk.injEq] at he
    exact Int.ModEq.dvd he.symm
  let e : Perm (Fin n) ≃ Ico (0 : ℤ) n ! := ofBijective _ bijf
  change _ % _ = _ % _; rw [sum_int_mod]; congr 1
  change _ = ∑ i, (e i).1; rw [Equiv.sum_comp]
  change _ = ∑ i : { x // x ∈ _ }, id i.1; simp_rw [sum_coe_sort, id_eq]
  have Ico_eq : Ico (0 : ℤ) n ! = (range n !).map ⟨_, Nat.cast_injective⟩ := by
    ext i
    simp_rw [mem_Ico, mem_map, mem_range, Function.Embedding.coeFn_mk]
    constructor <;> intro h
    · lift i to ℕ using h.1; rw [Nat.cast_lt] at h; simp [h.2]
    · obtain ⟨z, lz, rfl⟩ := h; simp [lz]
  rw [Ico_eq, sum_map, Function.Embedding.coeFn_mk, ← Nat.cast_sum, sum_range_id]
  change _ = ((_ : ℕ) : ℤ) / (2 : ℕ)
  rw [Nat.cast_mul, Nat.cast_ofNat, Nat.cast_pred (Nat.factorial_pos n)]

/-- The sum over all permutations of `Icc 1 n` of the entry at any fixed position is
`(n - 1)! * (n * (n + 1) / 2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2001Q4/Variant045249671217e9677a2d5fe3a0a5495025326875569e324117731c90cce2f221.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2001Q4/Variant045249671217e9677a2d5fe3a0a5495025326875569e324117731c90cce2f221.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f66c544b0397832b586b59182cce9cb98cd9c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
