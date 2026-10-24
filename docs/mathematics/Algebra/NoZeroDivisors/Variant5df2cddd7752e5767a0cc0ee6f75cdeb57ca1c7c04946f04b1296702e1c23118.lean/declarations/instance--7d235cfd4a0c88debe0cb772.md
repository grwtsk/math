# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71b2e79f464706b86ca5a5a1f2c61c5a953bc5dc70301a62f3a9d59d142b8911",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7d235cfd4a0c88debe0cb772",
  "source": {
    "blob": "6f13ed2626b3a56e2efee5ea4373b5026e54b62e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 109,
    "path": "GRWTSK/Algebra/NoZeroDivisors/Variant5df2cddd7752e5767a0cc0ee6f75cdeb57ca1c7c04946f04b1296702e1c23118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d235cfd4a0c88debe0cb7727902c46df5662cb163a07f349e025a3380d8b9b3",
  "verification": {
    "reference": "docs/verification/Algebra/NoZeroDivisors/Variant5df2cddd7752e5767a0cc0ee6f75cdeb57ca1c7c04946f04b1296702e1c23118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71b2e79f464706b86ca5a5a1f2c61c5a953bc5dc70301a62f3a9d59d142b8911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsCancelAdd R] [IsLeftCancelMulZero R] [Mul A] [UniqueProds A] :
    IsLeftCancelMulZero R[A] where
  mul_left_cancel_of_ne_zero {f} hf {g₁ g₂} eq := by
    classical
    induction hg : g₁.coeff.support ∪ g₂.coeff.support
      using Finset.eraseInduction generalizing g₁ g₂ with
    | _ s ih =>
    obtain h | h := s.eq_empty_or_nonempty <;> subst s
    · simp_all
    simp only [ne_eq, ← coeff_eq_zero, ← support_nonempty_iff] at hf
    obtain ⟨af, haf, ag, hag, uniq⟩ := UniqueProds.uniqueMul_of_nonempty hf h
    have h := coeff_mul_mul_of_uniqueMul (uniq.mono subset_rfl Finset.subset_union_left)
    dsimp only at eq
    rw [eq, coeff_mul_mul_of_uniqueMul (uniq.mono subset_rfl Finset.subset_union_right)] at h
    have := mul_left_cancel₀ (mem_support_iff.mp haf) h
    rw [← g₁.erase_add_single ag, ← g₂.erase_add_single ag, this] at eq ⊢
    simp_rw [mul_add, add_right_cancel_iff] at eq
    rw [ih ag hag eq]
    simp [Finset.erase_union_distrib]

@[to_additive (dont_translate := R)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NoZeroDivisors/Variant5df2cddd7752e5767a0cc0ee6f75cdeb57ca1c7c04946f04b1296702e1c23118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NoZeroDivisors/Variant5df2cddd7752e5767a0cc0ee6f75cdeb57ca1c7c04946f04b1296702e1c23118.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f13ed2626b3a56e2efee5ea4373b5026e54b62e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
