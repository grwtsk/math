# prev_getElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd5f3eb4-f98e-208d-4407-08c4c69c6773",
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
  "slug": "prev-getelem--d737acfb099350d35944aad4",
  "source": {
    "blob": "ee8eee87bf42fb2c86029aad13c8ae21a84c0d3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 289,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante67c11c719334be17906131243bdbc00b0e974e28475bbcb05df7f99748ad876.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d737acfb099350d35944aad42ac0ccf316048d43e2cb4556e9cb8319e57767a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante67c11c719334be17906131243bdbc00b0e974e28475bbcb05df7f99748ad876.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd5f3eb4-f98e-208d-4407-08c4c69c6773`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–330.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante67c11c719334be17906131243bdbc00b0e974e28475bbcb05df7f99748ad876.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cycle/Variante67c11c719334be17906131243bdbc00b0e974e28475bbcb05df7f99748ad876.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8eee87bf42fb2c86029aad13c8ae21a84c0d3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
