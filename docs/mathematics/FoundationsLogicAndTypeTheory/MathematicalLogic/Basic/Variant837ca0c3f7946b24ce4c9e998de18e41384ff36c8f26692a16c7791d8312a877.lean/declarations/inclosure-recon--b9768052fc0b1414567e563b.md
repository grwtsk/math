# InClosure.recOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0117ed1c96374a40383c8d1c40ee90b11ef0fb20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1012,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b8d11ba-a5cc-7685-a24c-6a5bce991911",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:339b2852-7411-0cb4-911b-0a3db84d2a56",
  "kind": "theorem",
  "lexical_name": "InClosure.recOn",
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
  "slug": "inclosure-recon--b9768052fc0b1414567e563b",
  "source": {
    "blob": "0117ed1c96374a40383c8d1c40ee90b11ef0fb20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1081,
    "line": 1012,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9768052fc0b1414567e563b721edc8ecfd48b1a828144fdf60976434bb679f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:339b2852-7411-0cb4-911b-0a3db84d2a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1012–1081.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem InClosure.recOn {R} [Ring R] {s : Set R}
    {C : R → Prop} {x : R} (hx : x ∈ closure s) (h1 : C 1)
    (hneg1 : C (-1)) (hs : ∀ z ∈ s, ∀ n, C n → C (z * n)) (ha : ∀ {x y}, C x → C y → C (x + y)) :
    C x := by
  have h0 : C 0 := add_neg_cancel (1 : R) ▸ ha h1 hneg1
  rcases exists_list_of_mem_closure hx with ⟨L, HL, rfl⟩
  clear hx
  induction L with
  | nil => exact h0
  | cons hd tl ih => ?_
  rw [List.forall_mem_cons] at HL
  suffices C (List.prod hd) by
    rw [List.map_cons, List.sum_cons]
    exact ha this (ih HL.2)
  replace HL := HL.1
  clear ih tl
  rsuffices ⟨L, HL', HP | HP⟩ :
    ∃ L : List R, (∀ x ∈ L, x ∈ s) ∧ (List.prod hd = List.prod L ∨ List.prod hd = -List.prod L)
  · rw [HP]
    clear HP HL hd
    induction L with
    | nil => exact h1
    | cons hd tl ih =>
      rw [List.forall_mem_cons] at HL'
      rw [List.prod_cons]
      exact hs _ HL'.1 _ (ih HL'.2)
  · rw [HP]
    clear HP HL hd
    induction L with
    | nil => exact hneg1
    | cons hd tl ih =>
      rw [List.prod_cons, neg_mul_eq_mul_neg]
      rw [List.forall_mem_cons] at HL'
      exact hs _ HL'.1 _ (ih HL'.2)
  induction hd with
  | nil => exact ⟨[], List.forall_mem_nil _, Or.inl rfl⟩
  | cons hd tl ih => ?_
  rw [List.forall_mem_cons] at HL
  rcases ih HL.2 with ⟨L, HL', HP | HP⟩ <;> rcases HL.1 with hhd | hhd
  · exact
      ⟨hd::L, List.forall_mem_cons.2 ⟨hhd, HL'⟩,
        Or.inl <| by rw [List.prod_cons, List.prod_cons, HP]⟩
  · exact ⟨L, HL', Or.inr <| by rw [List.prod_cons, hhd, neg_one_mul, HP]⟩
  · exact
      ⟨hd::L, List.forall_mem_cons.2 ⟨hhd, HL'⟩,
        Or.inr <| by rw [List.prod_cons, List.prod_cons, HP, neg_mul_eq_mul_neg]⟩
  · exact ⟨L, HL', Or.inl <| by rw [List.prod_cons, hhd, HP, neg_one_mul, neg_neg]⟩

@[deprecated (since := "2026-09-10")] alias closure_preimage_le := RingHom.closure_preimage_le

end Subring

/-! ## Actions by `Subring`s

These are just copies of the definitions about `Subsemiring` starting from
`Subsemiring.MulAction`.

When `R` is commutative, `Algebra.ofSubring` provides a stronger result than those found in
this file, which uses the same scalar action.
-/


section Actions

namespace Subring

variable {α β : Type*}


/-- The action by a subring is the action by the underlying ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean#L1012).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0117ed1c96374a40383c8d1c40ee90b11ef0fb20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
