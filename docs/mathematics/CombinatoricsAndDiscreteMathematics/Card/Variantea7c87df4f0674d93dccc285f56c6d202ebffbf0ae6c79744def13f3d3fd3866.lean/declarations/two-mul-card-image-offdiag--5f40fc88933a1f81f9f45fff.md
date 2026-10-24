# two_mul_card_image_offDiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d02afefd6229fb86c37e083dd340a8211313fb0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1ff0cb5-8dd9-0447-7c06-4e5a909e22da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2c50fdc-944a-1a13-afe3-4d059f4bf915",
  "kind": "theorem",
  "lexical_name": "two_mul_card_image_offDiag",
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
  "slug": "two-mul-card-image-offdiag--5f40fc88933a1f81f9f45fff",
  "source": {
    "blob": "d02afefd6229fb86c37e083dd340a8211313fb0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 141,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f40fc88933a1f81f9f45fff55989a37ce3a44f33c6cd237a07e21dc53eea99c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2c50fdc-944a-1a13-afe3-4d059f4bf915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_mul_card_image_offDiag (s : Finset α) :
    2 * (s.offDiag.image Quotient.mk').card = s.offDiag.card := by
  rw [card_eq_sum_card_image (Quotient.mk' : α × α → _), sum_const_nat (Quotient.ind' _), mul_comm]
  rintro ⟨x, y⟩ hxy
  simp_rw [mem_image, mem_offDiag] at hxy
  obtain ⟨a, ⟨ha₁, ha₂, ha⟩, h⟩ := hxy
  replace h := Quotient.eq.1 h
  obtain ⟨hx, hy, hxy⟩ : x ∈ s ∧ y ∈ s ∧ x ≠ y := by
    cases h <;> refine' ⟨‹_›, ‹_›, _⟩ <;> [exact ha; exact ha.symm]
  have hxy' : y ≠ x := hxy.symm
  have : (s.offDiag.filter fun z => ⟦z⟧ = ⟦(x, y)⟧) = ({(x, y), (y, x)} : Finset _) := by
    ext ⟨x₁, y₁⟩
    rw [mem_filter, mem_insert, mem_singleton, Sym2.eq_iff, Prod.mk.inj_iff, Prod.mk.inj_iff,
      and_iff_right_iff_imp]
    -- `hxy'` is used in `exact`
    rintro (⟨rfl, rfl⟩ | ⟨rfl, rfl⟩) <;> rw [mem_offDiag] <;> exact ⟨‹_›, ‹_›, ‹_›⟩
  dsimp [Quotient.mk', Quotient.mk''_eq_mk] -- Porting note: Added `dsimp`
  rw [this, card_insert_of_not_mem, card_singleton]
  simp only [not_and, Prod.mk.inj_iff, mem_singleton]
  exact fun _ => hxy'
#align sym2.two_mul_card_image_off_diag Sym2.two_mul_card_image_offDiag

/-- The `offDiag` of `s : Finset α` is sent on a finset of `Sym2 α` of card `s.offDiag.card / 2`.
This is because every element `⟦(x, y)⟧` of `Sym2 α` not on the diagonal comes from exactly two
pairs: `(x, y)` and `(y, x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantea7c87df4f0674d93dccc285f56c6d202ebffbf0ae6c79744def13f3d3fd3866.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d02afefd6229fb86c37e083dd340a8211313fb0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
