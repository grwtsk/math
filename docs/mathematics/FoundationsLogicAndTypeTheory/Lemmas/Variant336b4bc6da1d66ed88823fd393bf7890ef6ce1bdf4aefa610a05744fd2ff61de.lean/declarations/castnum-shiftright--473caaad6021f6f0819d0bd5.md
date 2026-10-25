# castNum_shiftRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78cddb3e3ef233925fd162db5f3dc275ad6965e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 825,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2265b2b1-cef3-1ede-7e4a-1061d30ed24d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f1cd9c3-33e9-90ec-0785-409f0a39fe25",
  "kind": "theorem",
  "lexical_name": "castNum_shiftRight",
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
  "slug": "castnum-shiftright--473caaad6021f6f0819d0bd5",
  "source": {
    "blob": "78cddb3e3ef233925fd162db5f3dc275ad6965e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 850,
    "line": 825,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:473caaad6021f6f0819d0bd53628678e9b9d3bbb18b0b284c4848bf3adff09ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f1cd9c3-33e9-90ec-0785-409f0a39fe25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 825–850.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem castNum_shiftRight (m : Num) (n : Nat) : ↑(m >>> n) = (m : ℕ) >>> (n : ℕ) := by
  obtain - | m := m <;> dsimp only [← shiftr_eq_shiftRight, shiftr]
  · symm
    apply Nat.zero_shiftRight
  induction' n with n IH generalizing m
  · cases m <;> rfl
  have hdiv2 : ∀ m, Nat.div2 (m + m) = m := by intro; rw [Nat.div2_val]; omega
  obtain - | m | m := m <;> dsimp only [PosNum.shiftr, ← PosNum.shiftr_eq_shiftRight]
  · rw [Nat.shiftRight_eq_div_pow]
    symm
    apply Nat.div_eq_of_lt
    simp
  · trans
    · apply IH
    change Nat.shiftRight m n = Nat.shiftRight (m + m + 1) (n + 1)
    rw [add_comm n 1, @Nat.shiftRight_eq _ (1 + n), Nat.shiftRight_add]
    apply congr_arg fun x => Nat.shiftRight x n
    simp [-add_assoc, Nat.shiftRight_succ, Nat.shiftRight_zero, ← Nat.div2_val, hdiv2]
  · trans
    · apply IH
    change Nat.shiftRight m n = Nat.shiftRight (m + m) (n + 1)
    rw [add_comm n 1, @Nat.shiftRight_eq _ (1 + n), Nat.shiftRight_add]
    apply congr_arg fun x => Nat.shiftRight x n
    simp [-add_assoc, Nat.shiftRight_succ, Nat.shiftRight_zero, ← Nat.div2_val, hdiv2]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean#L825).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78cddb3e3ef233925fd162db5f3dc275ad6965e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
