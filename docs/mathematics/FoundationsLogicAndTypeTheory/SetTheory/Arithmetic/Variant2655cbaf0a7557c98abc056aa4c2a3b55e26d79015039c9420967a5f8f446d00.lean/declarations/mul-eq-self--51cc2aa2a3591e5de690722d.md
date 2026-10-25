# mul_eq_self

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
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d14b6bb-0084-7dea-c70e-c84fb8a592ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:beccce46-9b7a-4c08-df9b-f50151efa17a",
  "kind": "theorem",
  "lexical_name": "mul_eq_self",
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
  "slug": "mul-eq-self--51cc2aa2a3591e5de690722d",
  "source": {
    "blob": "3e980f7daf72048a53f496a7a7028e4566d76fba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51cc2aa2a3591e5de690722ddebd5e070aac379add9249ede20583ab38a659fa",
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

Occurrence: `result:beccce46-9b7a-4c08-df9b-f50151efa17a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_eq_self {c : Cardinal} (hc : ℵ₀ ≤ c) : c * c = c := by
  -- The only nontrivial part is `c * c ≤ c`. We prove it inductively.
  induction c using WellFoundedLT.induction with | ind c IH
  refine le_antisymm ?_ (by simpa using mul_le_mul_right (one_le_aleph0.trans hc) c)
  -- Consider the minimal well-order on `α` (a type with cardinality `c`).
  induction c using Cardinal.inductionOn with | mk α
  obtain ⟨_, _, hα⟩ := exists_ord_eq_type_lt α
  have : NoMaxOrder α := by
    rw [← isSuccPrelimit_type_lt_iff, ← hα]
    exact (isSuccLimit_ord hc).isSuccPrelimit
  -- Define an order `s` on `α × α`, comparing first by `max x.1 x.2`, then by `toLex (x.1, x.2)`.
  let g : α × α → α := uncurry max
  let f : α × α ↪ α ×ₗ (α ×ₗ α) := ⟨fun p ↦ toLex (g p, toLex p), fun p q ↦ congrArg Prod.snd⟩
  let s := f ⁻¹'o (· < ·)
  have : IsWellOrder _ s := (RelEmbedding.preimage ..).isWellOrder
  -- Every initial segment of `s` is contained in `β × β` for some `β` of cardinality `< c`.
  -- By the inductive hypothesis, this means `#(β × β) < c`. Thus, `α × α` must have
  -- cardinality `≤ c`.
  refine @card_le_card (type s) (typeLT α) <| le_of_forall_lt fun o h ↦ ?_
  obtain ⟨p, rfl⟩ := typein_surj s h
  obtain ⟨q, hq'⟩ := exists_gt (g p)
  rw [← hα, lt_ord]
  apply lt_of_le_of_lt (b := #(Iio q) * #(Iio q))
  · apply (Set.embeddingOfSubset { x | s x p } ..).cardinal_le.trans_eq (mk_setProd ..)
    simp [s, f, Prod.Lex.lt_iff, subset_def]
    grind
  rcases lt_or_ge #(Iio q) ℵ₀ with hq | hq
  · exact (mul_lt_aleph0 hq hq).trans_le hc
  · have := mk_Iio_lt q hα
    rwa [IH _ this hq]

/-- If `α` and `β` are infinite types, then the cardinality of `α × β` is the maximum
of the cardinalities of `α` and `β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant2655cbaf0a7557c98abc056aa4c2a3b55e26d79015039c9420967a5f8f446d00.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e980f7daf72048a53f496a7a7028e4566d76fba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
