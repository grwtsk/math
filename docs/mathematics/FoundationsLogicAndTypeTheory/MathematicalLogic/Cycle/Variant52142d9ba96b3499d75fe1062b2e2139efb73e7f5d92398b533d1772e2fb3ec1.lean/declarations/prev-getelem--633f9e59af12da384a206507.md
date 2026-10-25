# prev_getElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91d09cc5c9ed8d46fc74c6e01f8c7334f3cb0a37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:884b1a5e-7f60-0381-2954-2261c2ae2ce6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:917a07d8-da6f-2bf7-e791-655b0573d416",
  "kind": "theorem",
  "lexical_name": "prev_getElem",
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
  "slug": "prev-getelem--633f9e59af12da384a206507",
  "source": {
    "blob": "91d09cc5c9ed8d46fc74c6e01f8c7334f3cb0a37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 281,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:633f9e59af12da384a20650707de02947417baa61d25bfd3046414bb333c8d38",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:917a07d8-da6f-2bf7-e791-655b0573d416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prev_getElem (l : List α) (h : Nodup l) (i : Nat) (hi : i < l.length) :
    prev l l[i] (get_mem _ _) =
      (l[(i + (l.length - 1)) % l.length]'(Nat.mod_lt _ (by omega))) :=
  match l with
  | [] => by simp at hi
  | x::l => by
    induction l generalizing i x with
    | nil => simp
    | cons y l hl =>
      rcases i with (_ | _ | i)
      · simp [getLast_eq_getElem]
      · simp only [mem_cons, nodup_cons] at h
        push_neg at h
        simp only [zero_add, getElem_cons_succ, getElem_cons_zero,
          List.prev_cons_cons_of_ne _ _ _ _ h.left.left.symm, length, add_comm,
          Nat.add_sub_cancel_left, Nat.mod_self]
      · rw [prev_ne_cons_cons]
        · convert hl i.succ y h.of_cons (Nat.le_of_succ_le_succ hi) using 1
          have : ∀ k hk, (y :: l)[k] = (x :: y :: l)[k + 1]'(Nat.succ_lt_succ hk) := by
            simp
          rw [this]
          congr
          simp only [Nat.add_succ_sub_one, add_zero, length]
          simp only [length, Nat.succ_lt_succ_iff] at hi
          set k := l.length
          rw [Nat.succ_add, ← Nat.add_succ, Nat.add_mod_right, Nat.succ_add, ← Nat.add_succ _ k,
            Nat.add_mod_right, Nat.mod_eq_of_lt, Nat.mod_eq_of_lt]
          · exact Nat.lt_succ_of_lt hi
          · exact Nat.succ_lt_succ (Nat.lt_succ_of_lt hi)
        · intro H
          suffices i.succ.succ = 0 by simpa
          suffices Fin.mk _ hi = ⟨0, by omega⟩ by rwa [Fin.mk.inj_iff] at this
          rw [nodup_iff_injective_get] at h
          apply h; rw [← H]; simp
        · intro H
          suffices i.succ.succ = 1 by simpa
          suffices Fin.mk _ hi = ⟨1, by omega⟩ by rwa [Fin.mk.inj_iff] at this
          rw [nodup_iff_injective_get] at h
          apply h; rw [← H]; simp

@[deprecated (since := "2025-02-15")] alias prev_get := prev_getElem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variant52142d9ba96b3499d75fe1062b2e2139efb73e7f5d92398b533d1772e2fb3ec1.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91d09cc5c9ed8d46fc74c6e01f8c7334f3cb0a37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
