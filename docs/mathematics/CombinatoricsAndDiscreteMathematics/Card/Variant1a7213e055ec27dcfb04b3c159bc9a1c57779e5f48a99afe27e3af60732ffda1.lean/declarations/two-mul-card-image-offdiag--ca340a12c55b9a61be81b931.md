# two_mul_card_image_offDiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "983e299b3eb549e7ae600e231e98a258df7e4390",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca4141b8-aa96-a089-93c4-c7c552e2a83b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edbd8472-a077-588f-42be-59a8c50077f6",
  "kind": "lemma",
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
  "slug": "two-mul-card-image-offdiag--ca340a12c55b9a61be81b931",
  "source": {
    "blob": "983e299b3eb549e7ae600e231e98a258df7e4390",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca340a12c55b9a61be81b93185076160a3615cf1d6e725143683a2304b5ca36b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edbd8472-a077-588f-42be-59a8c50077f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_mul_card_image_offDiag (s : Finset α) : 2 * #(s.offDiag.image Sym2.mk) = #s.offDiag := by
  rw [card_eq_sum_card_image (Sym2.mk : α × α → _), sum_const_nat (Sym2.ind _), mul_comm]
  rintro x y hxy
  simp_rw [mem_image, mem_offDiag] at hxy
  obtain ⟨a, ⟨ha₁, ha₂, ha⟩, h⟩ := hxy
  replace h := Sym2.eq.1 h
  obtain ⟨hx, hy, hxy⟩ : x ∈ s ∧ y ∈ s ∧ x ≠ y := by
    cases h <;> refine ⟨‹_›, ‹_›, ?_⟩ <;> [exact ha; exact ha.symm]
  have hxy' : y ≠ x := hxy.symm
  have : {z ∈ s.offDiag | Sym2.mk z = s(x, y)} = {(x, y), (y, x)} := by
    ext ⟨x₁, y₁⟩
    rw [mem_filter, mem_insert, mem_singleton, Sym2.eq_iff, Prod.mk_inj, Prod.mk_inj,
      and_iff_right_iff_imp]
    -- `hxy'` is used in `exact`
    rintro (⟨rfl, rfl⟩ | ⟨rfl, rfl⟩) <;> rw [mem_offDiag] <;> exact ⟨‹_›, ‹_›, ‹_›⟩
  rw [this, card_insert_of_notMem, card_singleton]
  simp only [not_and, Prod.mk_inj, mem_singleton]
  exact fun _ => hxy'

/-- The `offDiag` of `s : Finset α` is sent on a finset of `Sym2 α` of card `#s.offDiag / 2`.
This is because every element `s(x, y)` of `Sym2 α` not on the diagonal comes from exactly two
pairs: `(x, y)` and `(y, x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant1a7213e055ec27dcfb04b3c159bc9a1c57779e5f48a99afe27e3af60732ffda1.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `983e299b3eb549e7ae600e231e98a258df7e4390` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
