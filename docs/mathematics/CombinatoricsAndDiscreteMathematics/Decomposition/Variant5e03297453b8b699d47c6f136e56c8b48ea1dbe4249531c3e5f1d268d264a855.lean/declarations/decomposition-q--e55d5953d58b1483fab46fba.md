# decomposition_Q

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41e344a5-a0d4-3f89-ee11-db377ae7832c",
  "kind": "theorem",
  "lexical_name": "decomposition_Q",
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
  "slug": "decomposition-q--e55d5953d58b1483fab46fba",
  "source": {
    "blob": "bd6f1d5d75cff1766843339f9cc9be2636fe8f2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Decomposition/Variant5e03297453b8b699d47c6f136e56c8b48ea1dbe4249531c3e5f1d268d264a855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e55d5953d58b1483fab46fba8040b9d098afe87c79f15ae7a3745ac42df5ca9d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Decomposition/Variant5e03297453b8b699d47c6f136e56c8b48ea1dbe4249531c3e5f1d268d264a855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41e344a5-a0d4-3f89-ee11-db377ae7832c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decomposition_Q (n q : ℕ) :
    ((Q q).f (n + 1) : X _[n + 1] ⟶ X _[n + 1]) =
      ∑ i : Fin (n + 1) in Finset.filter (fun i : Fin (n + 1) => (i : ℕ) < q) Finset.univ,
        (P i).f (n + 1) ≫ X.δ i.revPerm.succ ≫ X.σ (Fin.revPerm i) := by
  induction' q with q hq
  · simp only [Nat.zero_eq, Q_zero, HomologicalComplex.zero_f_apply, Nat.not_lt_zero,
      Finset.filter_False, Finset.sum_empty]
  · by_cases hqn : q + 1 ≤ n + 1
    swap
    · rw [Q_is_eventually_constant (show n + 1 ≤ q by linarith), hq]
      congr 1
      ext ⟨x, hx⟩
      simp only [Nat.succ_eq_add_one, Finset.mem_filter, Finset.mem_univ, true_and]
      constructor <;> intro <;> linarith
    · cases' Nat.le.dest (Nat.succ_le_succ_iff.mp hqn) with a ha
      rw [Q_succ, HomologicalComplex.sub_f_apply, HomologicalComplex.comp_f, hq]
      symm
      conv_rhs => rw [sub_eq_add_neg, add_comm]
      let q' : Fin (n + 1) := ⟨q, Nat.succ_le_iff.mp hqn⟩
      rw [← @Finset.add_sum_erase _ _ _ _ _ _ q' (by simp)]
      congr
      · have hnaq' : n = a + q := by linarith
        simp only [Fin.val_mk, (HigherFacesVanish.of_P q n).comp_Hσ_eq hnaq',
          q'.revPerm_eq hnaq', neg_neg]
        rfl
      · ext ⟨i, hi⟩
        simp only [Nat.succ_eq_add_one, Nat.lt_succ_iff_lt_or_eq, Finset.mem_univ,
          forall_true_left, Finset.mem_filter, lt_self_iff_false, or_true, and_self, not_true,
          Finset.mem_erase, ne_eq, Fin.mk.injEq, true_and]
        aesop
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.decomposition_Q AlgebraicTopology.DoldKan.decomposition_Q

variable (X)

-- porting note: removed @[nolint has_nonempty_instance]
/-- The structure `MorphComponents` is an ad hoc structure that is used in
the proof that `N₁ : SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ))`
reflects isomorphisms. The fields are the data that are needed in order to
construct a morphism `X _[n+1] ⟶ Z` (see `φ`) using the decomposition of the
identity given by `decomposition_Q n (n+1)`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Decomposition/Variant5e03297453b8b699d47c6f136e56c8b48ea1dbe4249531c3e5f1d268d264a855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Decomposition/Variant5e03297453b8b699d47c6f136e56c8b48ea1dbe4249531c3e5f1d268d264a855.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd6f1d5d75cff1766843339f9cc9be2636fe8f2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
