# finFunctionFinEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:332fcca8de9c349d383e89df88ad99ab9a59d81676c6fc7b1f30f36d2875d78e",
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
  "slug": "finfunctionfinequiv--54ab59796e4ed83b025772e9",
  "source": {
    "blob": "6bedabbd10d9554b6a3aae71fca725ad06c06531",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 319,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54ab59796e4ed83b025772e9355aef4283c80c2f612257546100d63c61e0eece",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:332fcca8de9c349d383e89df88ad99ab9a59d81676c6fc7b1f30f36d2875d78e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–354.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bedabbd10d9554b6a3aae71fca725ad06c06531` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
