# aeval_sumIDeriv_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cad066e2-c391-dd91-4fec-c79bca8ed8ec",
  "kind": "theorem",
  "lexical_name": "aeval_sumIDeriv_of_pos",
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
  "slug": "aeval-sumideriv-of-pos--86bb950bee27d39c4d2f70f7",
  "source": {
    "blob": "ea817198fbbbb914ef2cfec46b638171b10c00db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 204,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86bb950bee27d39c4d2f70f7cfeb673b2dea14f73fb5847bc533e9d8b00a7990",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cad066e2-c391-dd91-4fec-c79bca8ed8ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_sumIDeriv_of_pos [Nontrivial A] [NoZeroDivisors A] (p : R[X]) {q : ℕ} (hq : 0 < q)
    (inj_amap : Function.Injective (algebraMap R A)) :
    ∃ gp : R[X], gp.natDegree ≤ p.natDegree - q ∧
      ∀ (r : A) {p' : A[X]},
        p.map (algebraMap R A) = (X - C r) ^ (q - 1) * p' →
        aeval r (sumIDeriv p) = (q - 1)! • p'.eval r + q ! • aeval r gp := by
  rcases eq_or_ne p 0 with (rfl | p0)
  · use 0
    rw [natDegree_zero]
    use Nat.zero_le _
    intro r p' hp
    rw [map_zero, map_zero, smul_zero, add_zero]
    rw [Polynomial.map_zero] at hp
    replace hp := (mul_eq_zero.mp hp.symm).resolve_left ?_
    · rw [hp, eval_zero, smul_zero]
    exact fun h => X_sub_C_ne_zero r (eq_zero_of_pow_eq_zero h)
  let c k := if hk : q ≤ k then (aeval_iterate_derivative_of_ge A p q hk).choose else 0
  have c_le (k) : (c k).natDegree ≤ p.natDegree - k := by
    dsimp only [c]
    split_ifs with h
    · exact (aeval_iterate_derivative_of_ge A p q h).choose_spec.1
    · rw [natDegree_zero]; exact Nat.zero_le _
  have hc (k) (hk : q ≤ k) : ∀ (r : A), aeval r (derivative^[k] p) = q ! • aeval r (c k) := by
    simp_rw [c, dite_eq_left hk]
    exact (aeval_iterate_derivative_of_ge A p q hk).choose_spec.2
  refine ⟨∑ x ∈ Ico q (p.natDegree + 1), c x, ?_, ?_⟩
  · refine (natDegree_sum_le _ _).trans ?_
    rw [fold_max_le]
    exact ⟨Nat.zero_le _, fun i hi => (c_le i).trans (tsub_le_tsub_left (mem_Ico.mp hi).1 _)⟩
  intro r p' hp
  have : range (p.natDegree + 1) = range q ∪ Ico q (p.natDegree + 1) := by
    rw [range_eq_Ico, range_eq_Ico, Ico_union_Ico_eq_Ico hq.le]
    rw [← tsub_le_iff_right]
    calc
      q - 1 ≤ q - 1 + p'.natDegree := le_self_add
      _ = (p.map <| algebraMap R A).natDegree := by
        rw [hp, natDegree_mul, natDegree_pow, natDegree_X_sub_C, mul_one,
          ← Nat.sub_add_comm (Nat.one_le_of_lt hq)]
        · exact pow_ne_zero _ (X_sub_C_ne_zero r)
        · rintro rfl
          rw [mul_zero, Polynomial.map_eq_zero_iff inj_amap] at hp
          exact p0 hp
      _ ≤ p.natDegree := natDegree_map_le
  rw [← zero_add ((q - 1)! • p'.eval r)]
  rw [sumIDeriv_apply, map_sum, map_sum, this]
  have : range q = range (q - 1 + 1) := by rw [tsub_add_cancel_of_le (Nat.one_le_of_lt hq)]
  rw [sum_union, this, sum_range_succ]
  · congr 2
    · apply sum_eq_zero
      exact fun x hx => aeval_iterate_derivative_of_lt p _ r hp (mem_range.mp hx)
    · rw [← aeval_iterate_derivative_self _ _ _ hp]
    · rw [smul_sum, sum_congr rfl]
      intro k hk
      exact hc k (mem_Ico.mp hk).1 r
  · rw [range_eq_Ico, disjoint_iff_inter_eq_empty, eq_empty_iff_forall_notMem]
    intro x hx
    rw [mem_inter, mem_Ico, mem_Ico] at hx
    exact hx.1.2.not_ge hx.2.1

end CommSemiring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea817198fbbbb914ef2cfec46b638171b10c00db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
