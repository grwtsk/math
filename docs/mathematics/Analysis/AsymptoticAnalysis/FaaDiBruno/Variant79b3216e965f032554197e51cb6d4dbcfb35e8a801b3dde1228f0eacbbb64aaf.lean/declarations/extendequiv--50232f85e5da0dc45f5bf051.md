# extendEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a54320ae1cddd044c7d0a987993b95e186ca3b98cc855888117b69077b3d5ca",
  "kind": "def",
  "lexical_name": "extendEquiv",
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
  "slug": "extendequiv--50232f85e5da0dc45f5bf051",
  "source": {
    "blob": "633c4dec60f69dbd0b32039b833bf205dd58a07f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 634,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50232f85e5da0dc45f5bf0518cbebc32b23b4be722cee039f26213a2cd4d9f2c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a54320ae1cddd044c7d0a987993b95e186ca3b98cc855888117b69077b3d5ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extendEquiv (n : ℕ) :
    ((c : OrderedFinpartition n) × Option (Fin c.length)) ≃ OrderedFinpartition (n + 1) where
  toFun c := c.1.extend c.2
  invFun c := if h : range (c.emb 0) = {0} then ⟨c.eraseLeft h, none⟩ else
    ⟨c.eraseMiddle h, some (c.index 0)⟩
  left_inv := by
    rintro ⟨c, o⟩
    match o with
    | none =>
      simp only [extend, range_extendLeft_zero, ↓reduceDIte, Sigma.mk.inj_iff, heq_eq_eq,
        and_true]
      rfl
    | some i =>
      simp only [extend, range_emb_extendMiddle_ne_singleton_zero, ↓reduceDIte,
        Sigma.mk.inj_iff, heq_eq_eq, and_true, eraseMiddle,
        index_extendMiddle_zero]
      ext
      · rfl
      · simp only [heq_eq_eq, index_extendMiddle_zero]
        ext j
        rcases eq_or_ne i j with rfl | hij
        · simp [extendMiddle]
        · simp [hij.symm, extendMiddle]
      · refine HEq.symm (hfunext rfl ?_)
        simp only [heq_eq_eq, forall_eq']
        intro a
        rcases eq_or_ne a i with rfl | hij
        · refine (Fin.heq_fun_iff ?_).mpr ?_
          · rw [index_extendMiddle_zero]
            simp [extendMiddle]
          · simp [extendMiddle]
        · refine (Fin.heq_fun_iff ?_).mpr ?_
          · rw [index_extendMiddle_zero]
            simp [extendMiddle]
          · simp [extendMiddle, hij]
  right_inv c := by
    by_cases h : range (c.emb 0) = {0}
    · have A : c.length - 1 + 1 = c.length := Nat.sub_add_cancel (c.length_pos (Nat.zero_lt_succ n))
      dsimp only
      rw [dite_eq_left h]
      simp only [extend, extendLeft, eraseLeft]
      ext
      · exact A
      · refine (Fin.heq_fun_iff A).mpr (fun i ↦ ?_)
        induction i using Fin.induction with
        | zero => change 1 = c.partSize 0; simp [c.partSize_eq_one_of_range_emb_eq_singleton h]
        | succ i => simp only [cons_succ, val_succ]; rfl
      · refine hfunext (congrArg Fin A) ?_
        simp only
        intro i i' h'
        have : i' = Fin.cast A i := eq_of_val_eq (by apply val_eq_val_of_heq h'.symm)
        subst this
        refine (Fin.heq_fun_iff ?_).mpr ?_
        · induction i using Fin.induction with
          | zero => simp [c.partSize_eq_one_of_range_emb_eq_singleton h]
          | succ i => simp
        · intro j
          induction i using Fin.induction with
          | zero =>
            simp only [cases_zero, cast_zero, val_eq_zero]
            exact (apply_eq_of_range_eq_singleton h _).symm
          | succ i => simp
    · dsimp only
      rw [dite_eq_right h]
      have B : c.partSize (c.index 0) - 1 + 1 = c.partSize (c.index 0) :=
        Nat.sub_add_cancel (c.partSize_pos (c.index 0))
      simp only [extend, extendMiddle, eraseMiddle, ↓reduceDIte]
      ext
      · rfl
      · simp only [update_self, update_idem, heq_eq_eq, update_eq_self_iff, B]
      · refine hfunext rfl ?_
        simp only [heq_eq_eq, forall_eq']
        intro i
        refine ((Fin.heq_fun_iff ?_).mpr ?_).symm
        · simp only [update_self, B, update_idem, update_eq_self]
        · intro j
          rcases eq_or_ne i (c.index 0) with rfl | hi
          · simp only [↓reduceDIte, comp_apply]
            rcases eq_or_ne j 0 with rfl | hj
            · simpa using c.emb_zero
            · let j' := Fin.pred (j.cast B.symm) (by simpa using hj)
              have : j = (succ j').cast B := by simp [j']
              simp only [this, val_cast, val_succ, cast_mk, cases_succ', comp_apply, succ_mk,
                succ_pred]
              rfl
          · simp [hi]

/-! ### Applying ordered finpartitions to multilinear maps -/

/-- Given a formal multilinear series `p`, an ordered partition `c` of `n` and the index `i` of a
block of `c`, we may define a function on `Fin n → E` by picking the variables in the `i`-th block
of `n`, and applying the corresponding coefficient of `p` to these variables. This function is
called `p.applyOrderedFinpartition c v i` for `v : Fin n → E` and `i : Fin c.k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633c4dec60f69dbd0b32039b833bf205dd58a07f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
