# length_filter_containsKey_le

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
      "line": 7464,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45a268a1-9cb8-96cb-0933-bbf764302f28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e271bed1-8e93-c405-dfdb-9eb3584f51ef",
  "kind": "theorem",
  "lexical_name": "length_filter_containsKey_le",
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
  "slug": "length-filter-containskey-le--8fe6b5f89ab2e88b96ce127f",
  "source": {
    "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7548,
    "line": 7464,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fe6b5f89ab2e88b96ce127f116c11e18f23de9ede7511b5223b3e34f0856fc3",
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

Occurrence: `result:e271bed1-8e93-c405-dfdb-9eb3584f51ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7464–7548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_filter_containsKey_le [BEq α] [EquivBEq α]
    {l₁ l₂ : List ((a : α) × β a)}
    (dl₁ : DistinctKeys l₂)
    (dl₂ : DistinctKeys l₁) :
    (l₁.filter fun p => containsKey p.fst l₂).length ≤ l₂.length := by
  induction l₁ generalizing l₂
  case nil => simp
  case cons h t ih =>
    by_cases heq : containsKey h.fst l₂
    case pos =>
      simp [← List.countP_eq_length_filter]
      simp only [heq, List.countP_cons_of_pos]
      have len_eq : l₂.length = (eraseKey h.fst l₂).length + 1 := by
        induction l₂
        case nil =>
          simp at heq
        case cons h' t' ih' =>
          simp only [List.length_cons, eraseKey, Nat.add_right_cancel_iff]
          by_cases heq2 : h'.fst == h.fst
          case pos =>
            simp [heq2]
          case neg =>
            simp only [Bool.not_eq_true] at heq2
            simp only [heq2, cond_false, List.length_cons]
            apply ih'
            . rw [List.distinctKeys_cons_iff] at dl₁
              exact dl₁.1
            . rw [containsKey_cons] at heq
              simp only [heq2, Bool.false_or] at heq
              exact heq
      rw [len_eq]
      simp only [Nat.add_le_add_iff_right, ge_iff_le]
      specialize @ih (eraseKey h.fst l₂) ?refine1 ?refine2
      case refine1 =>
        apply DistinctKeys.eraseKey dl₁
      case refine2 =>
        rw [List.distinctKeys_cons_iff] at dl₂
        exact dl₂.1
      rw [← List.countP_eq_length_filter] at ih
      apply Nat.le_trans ?refine3 ih
      case refine3 =>
        clear ih len_eq
        induction t
        case nil => simp
        case cons h' t' ih' =>
          by_cases heq2 : h.fst == h'.fst
          case pos =>
            rw [List.distinctKeys_cons_iff] at dl₂
            replace dl₂ := dl₂.2
            rw [containsKey_cons] at dl₂
            simp only [Bool.or_eq_false_iff] at dl₂
            replace dl₂ := dl₂.1
            rw [PartialEquivBEq.symm] at dl₂
            . contradiction
            . exact heq2
          case neg =>
            simp only [Bool.not_eq_true] at heq2
            simp only [List.countP_cons]
            split
            case isTrue contains =>
              rw [containsKey_eraseKey]
              simp only [heq2, Bool.not_false, contains, Bool.and_self, ↓reduceIte,
                Nat.add_le_add_iff_right]
              apply ih'
              . rw [List.distinctKeys_cons_iff, List.distinctKeys_cons_iff, containsKey_cons] at dl₂
                simp only [Bool.or_eq_false_iff] at dl₂
                apply DistinctKeys.cons
                all_goals simp only [dl₂]
              . exact dl₁
            case isFalse contains =>
              rw [containsKey_eraseKey]
              simp only [Nat.add_zero, heq2, Bool.not_false, contains, Bool.and_false,
                Bool.false_eq_true, ↓reduceIte]
              apply ih'
              . rw [List.distinctKeys_cons_iff, List.distinctKeys_cons_iff, containsKey_cons] at dl₂
                simp only [Bool.or_eq_false_iff] at dl₂
                apply DistinctKeys.cons
                all_goals simp only [dl₂]
              . exact dl₁
    case neg =>
      simp only [List.filter_cons, heq, Bool.false_eq_true, ↓reduceIte]
      apply ih dl₁
      rw [List.distinctKeys_cons_iff] at dl₂
      exact dl₂.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean#L7464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbbf8b921dbaa720483377d3c4810f060d70f676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
