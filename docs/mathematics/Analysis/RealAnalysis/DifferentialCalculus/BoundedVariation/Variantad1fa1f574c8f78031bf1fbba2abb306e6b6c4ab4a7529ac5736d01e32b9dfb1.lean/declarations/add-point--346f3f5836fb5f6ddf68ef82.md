# add_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d43aae00-1394-dff6-3b97-cf9ccadb040a",
  "kind": "theorem",
  "lexical_name": "add_point",
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
  "slug": "add-point--346f3f5836fb5f6ddf68ef82",
  "source": {
    "blob": "c6a4ff24ac48d60f9044cce63959452716ad2429",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 250,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantad1fa1f574c8f78031bf1fbba2abb306e6b6c4ab4a7529ac5736d01e32b9dfb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:346f3f5836fb5f6ddf68ef82cd73e864469df9b7ba3e750e7279a734067ec543",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantad1fa1f574c8f78031bf1fbba2abb306e6b6c4ab4a7529ac5736d01e32b9dfb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d43aae00-1394-dff6-3b97-cf9ccadb040a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_point (f : α → E) {s : Set α} {x : α} (hx : x ∈ s) (u : ℕ → α) (hu : Monotone u)
    (us : ∀ i, u i ∈ s) (n : ℕ) :
    ∃ (v : ℕ → α) (m : ℕ), Monotone v ∧ (∀ i, v i ∈ s) ∧ x ∈ v '' Iio m ∧
      (∑ i in Finset.range n, edist (f (u (i + 1))) (f (u i))) ≤
        ∑ j in Finset.range m, edist (f (v (j + 1))) (f (v j)) := by
  rcases le_or_lt (u n) x with (h | h)
  · let v i := if i ≤ n then u i else x
    have vs : ∀ i, v i ∈ s := fun i ↦ by
      simp only
      split_ifs
      · exact us i
      · exact hx
    have hv : Monotone v := by
      refine monotone_nat_of_le_succ fun i => ?_
      simp only
      rcases lt_trichotomy i n with (hi | rfl | hi)
      · have : i + 1 ≤ n := Nat.succ_le_of_lt hi
        simp only [hi.le, this, if_true]
        exact hu (Nat.le_succ i)
      · simp only [le_refl, if_true, add_le_iff_nonpos_right, le_zero_iff, Nat.one_ne_zero,
          if_false, h]
      · have A : ¬i ≤ n := hi.not_le
        have B : ¬i + 1 ≤ n := fun h => A (i.le_succ.trans h)
        simp only [A, B, if_false, le_rfl]
    refine' ⟨v, n + 2, hv, vs, (mem_image _ _ _).2 ⟨n + 1, _, _⟩, _⟩
    · rw [mem_Iio]; exact Nat.lt_succ_self (n + 1)
    · have : ¬n + 1 ≤ n := Nat.not_succ_le_self n
      simp only [this, ite_eq_right_iff, IsEmpty.forall_iff]
    · calc
        (∑ i in Finset.range n, edist (f (u (i + 1))) (f (u i))) =
            ∑ i in Finset.range n, edist (f (v (i + 1))) (f (v i)) := by
          apply Finset.sum_congr rfl fun i hi => ?_
          simp only [Finset.mem_range] at hi
          have : i + 1 ≤ n := Nat.succ_le_of_lt hi
          simp only [hi.le, this, if_true]
        _ ≤ ∑ j in Finset.range (n + 2), edist (f (v (j + 1))) (f (v j)) :=
          Finset.sum_le_sum_of_subset (Finset.range_mono (Nat.le_add_right n 2))
  have exists_N : ∃ N, N ≤ n ∧ x < u N := ⟨n, le_rfl, h⟩
  let N := Nat.find exists_N
  have hN : N ≤ n ∧ x < u N := Nat.find_spec exists_N
  let w : ℕ → α := fun i => if i < N then u i else if i = N then x else u (i - 1)
  have ws : ∀ i, w i ∈ s := by
    dsimp only
    intro i
    split_ifs
    exacts [us _, hx, us _]
  have hw : Monotone w := by
    apply monotone_nat_of_le_succ fun i => ?_
    dsimp only
    rcases lt_trichotomy (i + 1) N with (hi | hi | hi)
    · have : i < N := Nat.lt_of_le_of_lt (Nat.le_succ i) hi
      simp only [hi, this, if_true]
      exact hu (Nat.le_succ _)
    · have A : i < N := hi ▸ i.lt_succ_self
      have B : ¬i + 1 < N := by rw [← hi]; exact fun h => h.ne rfl
      rw [if_pos A, if_neg B, if_pos hi]
      have T := Nat.find_min exists_N A
      push_neg at T
      exact T (A.le.trans hN.1)
    · have A : ¬i < N := (Nat.lt_succ_iff.mp hi).not_lt
      have B : ¬i + 1 < N := hi.not_lt
      have C : ¬i + 1 = N := hi.ne.symm
      have D : i + 1 - 1 = i := Nat.pred_succ i
      rw [if_neg A, if_neg B, if_neg C, D]
      split_ifs
      · exact hN.2.le.trans (hu (le_of_not_lt A))
      · exact hu (Nat.pred_le _)
  refine' ⟨w, n + 1, hw, ws, (mem_image _ _ _).2 ⟨N, hN.1.trans_lt (Nat.lt_succ_self n), _⟩, _⟩
  · dsimp only; rw [if_neg (lt_irrefl N), if_pos rfl]
  rcases eq_or_lt_of_le (zero_le N) with (Npos | Npos)
  · calc
      (∑ i in Finset.range n, edist (f (u (i + 1))) (f (u i))) =
          ∑ i in Finset.range n, edist (f (w (1 + i + 1))) (f (w (1 + i))) := by
        apply Finset.sum_congr rfl fun i _hi => ?_
        dsimp only
        simp only [← Npos, Nat.not_lt_zero, Nat.add_succ_sub_one, add_zero, if_false,
          add_eq_zero_iff, Nat.one_ne_zero, false_and_iff, Nat.succ_add_sub_one, zero_add]
        rw [add_comm 1 i]
      _ = ∑ i in Finset.Ico 1 (n + 1), edist (f (w (i + 1))) (f (w i)) := by
        rw [Finset.range_eq_Ico]
        exact Finset.sum_Ico_add (fun i => edist (f (w (i + 1))) (f (w i))) 0 n 1
      _ ≤ ∑ j in Finset.range (n + 1), edist (f (w (j + 1))) (f (w j)) := by
        apply Finset.sum_le_sum_of_subset _
        rw [Finset.range_eq_Ico]
        exact Finset.Ico_subset_Ico zero_le_one le_rfl
  · calc
      (∑ i in Finset.range n, edist (f (u (i + 1))) (f (u i))) =
          ((∑ i in Finset.Ico 0 (N - 1), edist (f (u (i + 1))) (f (u i))) +
              ∑ i in Finset.Ico (N - 1) N, edist (f (u (i + 1))) (f (u i))) +
            ∑ i in Finset.Ico N n, edist (f (u (i + 1))) (f (u i)) := by
        rw [Finset.sum_Ico_consecutive, Finset.sum_Ico_consecutive, Finset.range_eq_Ico]
        · exact zero_le _
        · exact hN.1
        · exact zero_le _
        · exact Nat.pred_le _
      _ = (∑ i in Finset.Ico 0 (N - 1), edist (f (w (i + 1))) (f (w i))) +
              edist (f (u N)) (f (u (N - 1))) +
            ∑ i in Finset.Ico N n, edist (f (w (1 + i + 1))) (f (w (1 + i))) := by
        congr 1; congr 1
        · apply Finset.sum_congr rfl fun i hi => ?_
          simp only [Finset.mem_Ico, zero_le', true_and_iff] at hi
          dsimp only
          have A : i + 1 < N := Nat.lt_pred_iff.1 hi
          have B : i < N := Nat.lt_of_succ_lt A
          rw [if_pos A, if_pos B]
        · have A : N - 1 + 1 = N := Nat.succ_pred_eq_of_pos Npos
          have : Finset.Ico (N - 1) N = {N - 1} := by rw [← Nat.Ico_succ_singleton, A]
          simp only [this, A, Finset.sum_singleton]
        · apply Finset.sum_congr rfl fun i hi => ?_
          rw [Finset.mem_Ico] at hi
          dsimp only
          have A : ¬1 + i + 1 < N := fun h => by
            rw [add_assoc, add_comm] at h
            exact hi.left.not_lt (i.lt_succ_self.trans (i.succ.lt_succ_self.trans h))
          have B : ¬1 + i + 1 = N := fun h => by
            rw [← h, add_assoc, add_comm] at hi
            exact Nat.not_succ_le_self i (i.succ.le_succ.trans hi.left)
          have C : ¬1 + i < N := fun h => by
            rw [add_comm] at h
            exact hi.left.not_lt (i.lt_succ_self.trans h)
          have D : ¬1 + i = N := fun h => by
            rw [← h, add_comm, Nat.succ_le_iff] at hi
            exact hi.left.ne rfl
          rw [if_neg A, if_neg B, if_neg C, if_neg D]
          congr 3 <;> · rw [add_comm, Nat.sub_one]; apply Nat.pred_succ
      _ = (∑ i in Finset.Ico 0 (N - 1), edist (f (w (i + 1))) (f (w i))) +
              edist (f (w (N + 1))) (f (w (N - 1))) +
            ∑ i in Finset.Ico (N + 1) (n + 1), edist (f (w (i + 1))) (f (w i)) := by
        congr 1; congr 1
        · dsimp only
          have A : ¬N + 1 < N := Nat.not_succ_lt_self
          have B : N - 1 < N := Nat.pred_lt Npos.ne'
          simp only [A, not_and, not_lt, Nat.succ_ne_self, Nat.add_succ_sub_one, add_zero, if_false,
            B, if_true]
        · exact Finset.sum_Ico_add (fun i => edist (f (w (i + 1))) (f (w i))) N n 1
      _ ≤ ((∑ i in Finset.Ico 0 (N - 1), edist (f (w (i + 1))) (f (w i))) +
              ∑ i in Finset.Ico (N - 1) (N + 1), edist (f (w (i + 1))) (f (w i))) +
            ∑ i in Finset.Ico (N + 1) (n + 1), edist (f (w (i + 1))) (f (w i)) := by
        refine' add_le_add (add_le_add le_rfl _) le_rfl
        have A : N - 1 + 1 = N := Nat.succ_pred_eq_of_pos Npos
        have B : N - 1 + 1 < N + 1 := A.symm ▸ N.lt_succ_self
        have C : N - 1 < N + 1 := lt_of_le_of_lt N.pred_le N.lt_succ_self
        rw [Finset.sum_eq_sum_Ico_succ_bot C, Finset.sum_eq_sum_Ico_succ_bot B, A, Finset.Ico_self,
          Finset.sum_empty, add_zero, add_comm (edist _ _)]
        exact edist_triangle _ _ _
      _ = ∑ j in Finset.range (n + 1), edist (f (w (j + 1))) (f (w j)) := by
        rw [Finset.sum_Ico_consecutive, Finset.sum_Ico_consecutive, Finset.range_eq_Ico]
        · exact zero_le _
        · exact Nat.succ_le_succ hN.left
        · exact zero_le _
        · exact N.pred_le.trans N.le_succ
#align evariation_on.add_point eVariationOn.add_point

/-- The variation of a function on the union of two sets `s` and `t`, with `s` to the left of `t`,
bounds the sum of the variations along `s` and `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantad1fa1f574c8f78031bf1fbba2abb306e6b6c4ab4a7529ac5736d01e32b9dfb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantad1fa1f574c8f78031bf1fbba2abb306e6b6c4ab4a7529ac5736d01e32b9dfb1.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6a4ff24ac48d60f9044cce63959452716ad2429` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
