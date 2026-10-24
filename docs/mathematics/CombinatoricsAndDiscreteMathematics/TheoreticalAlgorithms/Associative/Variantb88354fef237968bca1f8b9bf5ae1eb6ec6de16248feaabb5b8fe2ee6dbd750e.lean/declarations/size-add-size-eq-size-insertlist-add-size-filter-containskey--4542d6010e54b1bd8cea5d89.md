# size_add_size_eq_size_insertList_add_size_filter_containsKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98ba2987-b1f5-6273-3d80-da44c559723f",
  "kind": "theorem",
  "lexical_name": "size_add_size_eq_size_insertList_add_size_filter_containsKey",
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
  "slug": "size-add-size-eq-size-insertlist-add-size-filter-containskey--4542d6010e54b1bd8cea5d89",
  "source": {
    "blob": "ddcb189e0bb3710a43ea511e7a5fcd0941f0a100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7471,
    "line": 7426,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4542d6010e54b1bd8cea5d89d09899e43d095b388b4fd75a13cc41aee6c6e0b1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98ba2987-b1f5-6273-3d80-da44c559723f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7426–7471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem size_add_size_eq_size_insertList_add_size_filter_containsKey [BEq α] [EquivBEq α]
    {l₁ l₂ : List ((a : α) × β a)} (hl₁ : DistinctKeys l₁) (hl₂ : DistinctKeys l₂) :
    l₁.length + l₂.length =
    (insertList l₁ l₂).length +
    (List.filter (fun p => containsKey p.fst l₂) l₁).length := by
  rw [← Perm.length_eq (insertListIfNew_perm_insertList hl₂ hl₁)]
  induction l₁ generalizing l₂
  case nil => simp [insertListIfNew]
  case cons h t ih =>
    simp [insertListIfNew, List.filter_cons]
    split
    case isTrue hyp =>
      simp only [insertEntryIfNew, hyp, cond_true, List.length_cons]
      specialize ih (by rw [List.distinctKeys_cons_iff] at hl₁; exact hl₁.1) hl₂
      omega
    case isFalse hyp =>
      rw [Bool.not_eq_true] at hyp
      simp [insertEntryIfNew, hyp]
      specialize @ih (⟨h.fst, h.snd⟩ :: l₂) (by rw [List.distinctKeys_cons_iff] at hl₁; exact hl₁.1)
      rw [List.distinctKeys_cons_iff] at ih
      specialize ih ⟨hl₂, hyp⟩
      simp at ih
      suffices (List.filter (fun p => h.fst == p.fst || containsKey p.fst l₂) t).length = (List.filter (fun p => containsKey p.fst l₂) t).length by omega
      clear ih hl₂
      induction t
      case nil => simp
      case cons h' t' ih' =>
        simp  [List.filter_cons, Bool.or_eq_true]
        by_cases hyp2 : containsKey h'.fst l₂
        case pos =>
          simp [hyp2]
          apply ih'
          rw [List.distinctKeys_cons_iff]
          rw [List.distinctKeys_cons_iff, List.distinctKeys_cons_iff, List.containsKey_cons] at hl₁
          simp only [Bool.or_eq_false_iff] at hl₁
          exact ⟨hl₁.1.1, hl₁.2.2⟩
        case neg =>
          simp [hyp2]
          simp at hyp2
          rw [List.distinctKeys_cons_iff, containsKey_cons] at hl₁
          simp at hl₁
          simp [BEq.symm_false hl₁.2.1]
          apply ih'
          rw [List.distinctKeys_cons_iff] at hl₁ |-
          exact ⟨hl₁.1.1, hl₁.2.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean#L7426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcb189e0bb3710a43ea511e7a5fcd0941f0a100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
