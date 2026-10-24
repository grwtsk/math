# isMultiplyPretransitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d8c489e-d0c9-86a7-7f39-8c93b13b8e2c",
  "kind": "theorem",
  "lexical_name": "isMultiplyPretransitive",
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
  "slug": "ismultiplypretransitive--b826bdfd8009e5d1c47725f6",
  "source": {
    "blob": "7ef92d0cdf83f804be1f6ecfd29e1a2cdf279e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 585,
    "path": "GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b826bdfd8009e5d1c47725f64622f6d8846b9ea687ef35ed41f2bd066504dd52",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d8c489e-d0c9-86a7-7f39-8c93b13b8e2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 585–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMultiplyPretransitive :
    IsMultiplyPretransitive (alternatingGroup α) α (Nat.card α - 2) := by
  rcases lt_or_ge (Nat.card α) 2 with h2 | h2
  · rw [Nat.sub_eq_zero_of_le (le_of_lt h2)]
    apply is_zero_pretransitive
  have h2le : Nat.card α - 2 ≤ Nat.card α := sub_le (Nat.card α) 2
  have := Equiv.Perm.isMultiplyPretransitive α (Nat.card α)
  have : IsMultiplyPretransitive (Equiv.Perm α) α (Nat.card α - 2) :=
    MulAction.isMultiplyPretransitive_of_le h2le le_rfl
  refine ⟨fun x y ↦ ?_⟩
  obtain ⟨g, hg⟩ := exists_smul_eq (Equiv.Perm α) x y
  rcases Int.units_eq_one_or (Equiv.Perm.sign g) with h | h
  · exact ⟨⟨g, h⟩, hg⟩
  · have : (Finset.univ.image x)ᶜ.card = 2 := by
      rw [Finset.card_compl, Finset.univ.card_image_of_injective (by exact x.2), Finset.card_univ,
        ← Nat.card_eq_fintype_card, Fintype.card_fin, tsub_tsub_cancel_of_le h2]
    obtain ⟨a, b, hab, hs⟩ := Finset.card_eq_two.mp this
    refine ⟨⟨g * Equiv.swap a b, by simp [h, hab]⟩, ?_⟩
    ext i
    have h : x i ∈ Finset.univ.image x := Finset.mem_image.mpr ⟨i, Finset.mem_univ i, rfl⟩
    rw [← Finset.notMem_compl, hs, Finset.mem_insert, Finset.mem_singleton, not_or] at h
    simp [Equiv.swap_apply_of_ne_of_ne h.1 h.2, ← hg]

/-- A subgroup of `Equiv.Perm α` which is (card α - 2)-pretransitive
contains `alternatingGroup α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantc3296ac977b42211721377691bdb6fe87a1017239977b09fa2acd07ffe08cdf4.lean#L585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ef92d0cdf83f804be1f6ecfd29e1a2cdf279e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
