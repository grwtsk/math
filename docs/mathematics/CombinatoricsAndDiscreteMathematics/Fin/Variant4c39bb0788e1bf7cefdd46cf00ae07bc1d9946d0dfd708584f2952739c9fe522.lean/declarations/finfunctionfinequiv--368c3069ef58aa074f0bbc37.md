# finFunctionFinEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a6ed84949dfd8511dbab392ac8315d6011f5d61e1177023772bdc9d40efbef0",
  "kind": "def",
  "lexical_name": "finFunctionFinEquiv",
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
  "slug": "finfunctionfinequiv--368c3069ef58aa074f0bbc37",
  "source": {
    "blob": "c109e5c7d8409792940ee655dcf237289833d90a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 311,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:368c3069ef58aa074f0bbc37531a448ebdd4beab4b0c129f31cf12c678f021e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a6ed84949dfd8511dbab392ac8315d6011f5d61e1177023772bdc9d40efbef0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finFunctionFinEquiv {m n : ℕ} : (Fin n → Fin m) ≃ Fin (m ^ n) :=
  Equiv.ofRightInverseOfCardLE (le_of_eq <| by simp_rw [Fintype.card_fun, Fintype.card_fin])
    (fun f => ⟨∑ i, f i * m ^ (i : ℕ), by
      induction' n with n ih
      · simp
      cases m
      · dsimp only [Nat.zero_eq] at f -- porting note: added, wrong zero
        exact isEmptyElim (f <| Fin.last _)
      simp_rw [Fin.sum_univ_castSucc, Fin.coe_castSucc, Fin.val_last]
      refine' (add_lt_add_of_lt_of_le (ih _) <| mul_le_mul_right' (Fin.is_le _) _).trans_eq _
      rw [← one_add_mul (_ : ℕ), add_comm, pow_succ]
      -- porting note: added, wrong `succ`
      rfl⟩)
    (fun a b => ⟨a / m ^ (b : ℕ) % m, by
      cases' n with n
      · exact b.elim0
      cases' m with m
      · dsimp only [Nat.zero_eq] at a -- porting note: added, wrong zero
        rw [zero_pow n.succ_pos] at a
        exact a.elim0
      · exact Nat.mod_lt _ m.succ_pos⟩)
    fun a => by
      dsimp
      induction' n with n ih
      · haveI : Subsingleton (Fin (m ^ 0)) := (Fin.castIso <| pow_zero _).toEquiv.subsingleton
        exact Subsingleton.elim _ _
      simp_rw [Fin.forall_iff, Fin.ext_iff] at ih
      ext
      simp_rw [Fin.sum_univ_succ, Fin.val_zero, Fin.val_succ, pow_zero, Nat.div_one,
        mul_one, pow_succ, ← Nat.div_div_eq_div_mul, mul_left_comm _ m, ← mul_sum]
      rw [ih _ (Nat.div_lt_of_lt_mul ?_), Nat.mod_add_div]
      -- porting note: replaces `a.is_lt` in the wildcard above. Caused by a refactor of the `npow`
      -- instance for `Fin`.
      exact a.is_lt.trans_eq (pow_succ _ _)
#align fin_function_fin_equiv finFunctionFinEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c109e5c7d8409792940ee655dcf237289833d90a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
