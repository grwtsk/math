# Polynomial.isPeriodicPt_eval_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9abc3b8b-5e13-57c0-2245-b75668a1dea0",
  "kind": "theorem",
  "lexical_name": "Polynomial.isPeriodicPt_eval_two",
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
  "slug": "polynomial-isperiodicpt-eval-two--7735ecb393066a9ead42fa18",
  "source": {
    "blob": "2594616772decb41301a816d22732a9be3ec70f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 74,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variant38544d381b297c8e8357f2a6d0ee46d38843989a38c1916a584e9c7b774d26a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7735ecb393066a9ead42fa18fc56d96af00b89b01e79c8f5d91d6a5ceeba6748",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variant38544d381b297c8e8357f2a6d0ee46d38843989a38c1916a584e9c7b774d26a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9abc3b8b-5e13-57c0-2245-b75668a1dea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Polynomial.isPeriodicPt_eval_two {P : Polynomial ℤ} {t : ℤ}
    (ht : t ∈ periodicPts fun x => P.eval x) : IsPeriodicPt (fun x => P.eval x) 2 t := by
  -- The cycle [P(t) - t, P(P(t)) - P(t), ...]
  let C : Cycle ℤ := (periodicOrbit (fun x => P.eval x) t).map fun x => P.eval x - x
  have HC : ∀ {n : ℕ}, (fun x => P.eval x)^[n + 1] t - (fun x => P.eval x)^[n] t ∈ C := by
    intro n
    rw [Cycle.mem_map, Function.iterate_succ_apply']
    exact ⟨_, iterate_mem_periodicOrbit ht n, rfl⟩
  -- Elements in C are all divisible by one another.
  have Hdvd : C.Chain (· ∣ ·) := by
    rw [Cycle.chain_map, periodicOrbit_chain' _ ht]
    intro n
    convert! sub_dvd_eval_sub ((fun x => P.eval x)^[n + 1] t) ((fun x => P.eval x)^[n] t) P <;>
      rw [Function.iterate_succ_apply']
  -- Any two entries in C have the same absolute value.
  have Habs :
    ∀ m n : ℕ,
      ((fun x => P.eval x)^[m + 1] t - (fun x => P.eval x)^[m] t).natAbs =
        ((fun x => P.eval x)^[n + 1] t - (fun x => P.eval x)^[n] t).natAbs :=
    fun m n => Int.natAbs_eq_of_chain_dvd Hdvd HC HC
  -- We case on whether the elements on C are pairwise equal.
  by_cases HC' : C.Chain (· = ·)
  · -- Any two entries in C are equal.
    have Heq :
      ∀ m n : ℕ,
        (fun x => P.eval x)^[m + 1] t - (fun x => P.eval x)^[m] t =
          (fun x => P.eval x)^[n + 1] t - (fun x => P.eval x)^[n] t :=
      fun m n => Cycle.chain_iff_pairwise.1 HC' _ HC _ HC
    -- The sign of P^n(t) - t is the same as P(t) - t for positive n. Proven by induction on n.
    have IH (n : ℕ) : ((fun x => P.eval x)^[n + 1] t - t).sign = (P.eval t - t).sign := by
      induction n with
      | zero => rfl
      | succ n IH =>
        apply Eq.trans _ (Int.sign_add_eq_of_sign_eq IH)
        have H := Heq n.succ 0
        dsimp at H ⊢
        rw [← H, sub_add_sub_cancel']
    -- This implies that the sign of P(t) - t is the same as the sign of P^k(t) - t, which is 0.
    -- Hence P(t) = t and P(P(t)) = P(t).
    rcases ht with ⟨_ | k, hk, hk'⟩
    · exact (irrefl 0 hk).elim
    · have H := IH k
      rw [hk'.isFixedPt.eq, sub_self, Int.sign_zero, eq_comm, Int.sign_eq_zero_iff_zero,
        sub_eq_zero] at H
      simp [IsPeriodicPt, IsFixedPt, H]
  · -- We take two nonequal consecutive entries.
    rw [Cycle.chain_map, periodicOrbit_chain' _ ht] at HC'
    push Not at HC'
    obtain ⟨n, hn⟩ := HC'
    -- They must have opposite sign, so that P^{k + 1}(t) - P^k(t) = P^{k + 2}(t) - P^{k + 1}(t).
    rcases Int.natAbs_eq_natAbs_iff.1 (Habs n n.succ) with hn' | hn'
    · apply (hn _).elim
      convert! hn' <;> simp only [Function.iterate_succ_apply']
    -- We deduce P^{k + 2}(t) = P^k(t) and hence P(P(t)) = t.
    · rw [neg_sub, sub_right_inj] at hn'
      simp only [Function.iterate_succ_apply'] at hn'
      exact isPeriodicPt_of_mem_periodicPts_of_isPeriodicPt_iterate ht hn'.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variant38544d381b297c8e8357f2a6d0ee46d38843989a38c1916a584e9c7b774d26a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variant38544d381b297c8e8357f2a6d0ee46d38843989a38c1916a584e9c7b774d26a1.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2594616772decb41301a816d22732a9be3ec70f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
