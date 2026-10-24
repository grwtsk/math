# length_filter_containsKey_of_length_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 7306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8299d8a-9887-d37a-47c8-79cc4c185c74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5c69783-361b-f0d9-1421-839aca769fa5",
  "kind": "theorem",
  "lexical_name": "length_filter_containsKey_of_length_right",
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
  "slug": "length-filter-containskey-of-length-right--2c4d1da8dd51599fb9f9675a",
  "source": {
    "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7417,
    "line": 7306,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c4d1da8dd51599fb9f9675a9db29072b94804af9b0c58da42374c42ecff54e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5c69783-361b-f0d9-1421-839aca769fa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7306–7417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_filter_containsKey_of_length_right [BEq α] [EquivBEq α]
    {l₁ l₂ : List ((a : α) × β a)} (hl₁ : DistinctKeys l₁) (hl₂ : DistinctKeys l₂)
    (w : ∀ (a : α), containsKey a l₂ → containsKey a l₁) :
    (l₁.filter fun p => containsKey p.fst l₂).length = l₂.length := by
  rw [← List.countP_eq_length_filter]
  induction l₁ generalizing l₂
  case nil =>
    simp only [List.countP_nil]
    by_cases heq : l₂ = []
    case pos =>
      simp only [heq, List.length_nil]
    case neg =>
      have ⟨⟨ek, ev⟩, emem⟩ := @List.exists_mem_of_ne_nil _ l₂ (by simp [heq])
      specialize w ek
      rw [List.containsKey_eq_true_iff_exists_mem] at w
      specialize w ?_
      . refine ⟨⟨ek,ev⟩, emem, ?_⟩
        simp only [BEq.rfl]
      . simp at w
  case cons h t ih =>
    by_cases heq : containsKey h.fst l₂
    case pos =>
      have len_eq : l₂.length = (eraseKey h.fst l₂).length + 1 := by
        induction l₂
        case nil => simp at heq
        case cons h' t' ih' =>
          simp only [List.length_cons, eraseKey, Nat.add_right_cancel_iff]
          by_cases heq2 : h'.fst == h.fst
          case pos =>
            simp [heq2]
          case neg =>
            simp only [Bool.not_eq_true] at heq2
            simp only [heq2, cond_false, List.length_cons]
            apply ih'
            . rw [List.distinctKeys_cons_iff] at hl₂
              exact hl₂.1
            . intro a mem
              specialize w a
              apply w
              rw [containsKey_cons]
              simp only [mem, Bool.or_true]
            . rw [containsKey_cons] at heq
              simp only [heq2, Bool.false_or] at heq
              exact heq
      rw [len_eq]
      rw [List.countP_cons]
      simp only [heq, ↓reduceIte, Nat.add_right_cancel_iff]
      suffices List.countP (fun p => containsKey p.fst l₂) t = List.countP (fun p =>  containsKey p.fst (eraseKey h.fst l₂)) t by
        rw [this]
        apply ih
        . rw [List.distinctKeys_cons_iff] at hl₁
          exact hl₁.1
        . apply DistinctKeys.eraseKey hl₂
        . intro a
          rw [containsKey_eraseKey]
          simp
          intro neq contains
          specialize w a contains
          rw [containsKey_cons] at w
          . simp only [neq, Bool.false_or] at w
            exact w
          . exact hl₂
      clear ih w
      induction t
      case nil => simp
      case cons h' t' ih' =>
        simp only [List.countP_cons]
        split
        case isTrue heq2 =>
          rw [containsKey_eraseKey]
          . simp only [heq2, Bool.and_true, Bool.not_eq_eq_eq_not, Bool.not_true]
            suffices (h.fst == h'.fst) = false by
              simp [this]
              apply ih'
              . rw [List.distinctKeys_cons_iff, List.distinctKeys_cons_iff, containsKey_cons] at hl₁
                simp only [Bool.or_eq_false_iff] at hl₁
                apply DistinctKeys.cons
                all_goals simp only [hl₁]
            . rw [List.distinctKeys_cons_iff, containsKey_cons] at hl₁
              apply BEq.symm_false
              simp only [Bool.or_eq_false_iff] at hl₁
              exact hl₁.2.1
          . exact hl₂
        case isFalse heq2 =>
          simp only [Bool.not_eq_true] at heq2
          rw [containsKey_eraseKey]
          simp only [Nat.add_zero, heq2, Bool.and_false, Bool.false_eq_true, ↓reduceIte]
          apply ih'
          . rw [List.distinctKeys_cons_iff, List.distinctKeys_cons_iff, containsKey_cons] at hl₁
            simp only [Bool.or_eq_false_iff] at hl₁
            apply DistinctKeys.cons
            all_goals simp only [hl₁]
          . exact hl₂
    case neg =>
      simp only [Bool.not_eq_true] at heq
      simp only [heq, Bool.false_eq_true, not_false_eq_true, List.countP_cons_of_neg]
      apply ih
      . rw [List.distinctKeys_cons_iff] at hl₁
        exact hl₁.1
      . exact hl₂
      . intro a mem
        specialize w a mem
        rw [containsKey_cons] at w
        simp at w
        rcases w with inl | inr
        case w.inl =>
          rw [containsKey_congr inl] at heq
          rw [mem] at heq
          contradiction
        case w.inr =>
          exact inr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean#L7306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbbf8b921dbaa720483377d3c4810f060d70f676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
