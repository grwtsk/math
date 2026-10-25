# mk_bounded_subset_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e980f7daf72048a53f496a7a7028e4566d76fba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 810,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06a27132-2087-6f91-af30-9886d2284e23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5732a1d8-5b35-e484-85da-e29606a6012d",
  "kind": "theorem",
  "lexical_name": "mk_bounded_subset_le",
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
  "slug": "mk-bounded-subset-le--8008d44555a97643ad94dc07",
  "source": {
    "blob": "3e980f7daf72048a53f496a7a7028e4566d76fba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 827,
    "line": 810,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8008d44555a97643ad94dc0792a757f5e7b2f9b19484a45202dd5148dcf07596",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5732a1d8-5b35-e484-85da-e29606a6012d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 810–827.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_bounded_subset_le {α : Type u} (s : Set α) (c : Cardinal.{u}) :
    #{ t : Set α // t ⊆ s ∧ #t ≤ c } ≤ max #s ℵ₀ ^ c := by
  refine le_trans ?_ (mk_bounded_set_le s c)
  refine ⟨Embedding.codRestrict _ ?_ ?_⟩
  · use fun t => (↑) ⁻¹' t.1
    rintro ⟨t, ht1, ht2⟩ ⟨t', h1t', h2t'⟩ h
    apply Subtype.ext
    dsimp only at h ⊢
    refine (preimage_eq_preimage' ?_ ?_).1 h <;> rw [Subtype.range_coe] <;> assumption
  rintro ⟨t, _, h2t⟩; exact (mk_preimage_of_injective _ _ Subtype.val_injective).trans h2t

end computing

/-! ### Properties of `sdiff` -/
section sdiff
variable {α : Type*} {s t : Set α}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean#L810).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e980f7daf72048a53f496a7a7028e4566d76fba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
