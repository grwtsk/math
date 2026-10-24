# add_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81e7ea77-e437-a52f-7542-ea9b7d1830c9",
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
  "slug": "add-point--19eb538e2bcbd5b6392e4333",
  "source": {
    "blob": "99e798288c00fc3ecd4493a87e7c6eec9710aaad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 218,
    "path": "GRWTSK/Topology/MetricTopology/BoundedVariation/Variantf6a6916961ef9070cf375222db27a1634b17fb71f954a37907299397e5b88821.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19eb538e2bcbd5b6392e4333357ac520fa3b5a1f6d611cf94162bd62390202c5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BoundedVariation/Variantf6a6916961ef9070cf375222db27a1634b17fb71f954a37907299397e5b88821.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81e7ea77-e437-a52f-7542-ea9b7d1830c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_point (f : α → E) {s : Set α} {x : α} (hx : x ∈ s) (u : ℕ → α) (hu : Monotone u)
    (us : ∀ i, u i ∈ s) (n : ℕ) :
    ∃ (v : ℕ → α) (m : ℕ), Monotone v ∧ (∀ i, v i ∈ s) ∧ x ∈ v '' Iio m ∧
      (∑ i ∈ Finset.range n, edist (f (u (i + 1))) (f (u i))) ≤
        ∑ j ∈ Finset.range m, edist (f (v (j + 1))) (f (v j)) := by
  rcases le_or_lt (u n) x with (h | h)
  · let v i := if i ≤ n then u i else x
    have vs : ∀ i, v i ∈ s := fun i ↦ by
      simp only [v]
      split_ifs
      · exact us i
      · exact hx
    have hv : Monotone v := by
      refine monotone_nat_of_le_succ fun i => ?_
      simp only [v]
      rcases lt_trichotomy i n with (hi | rfl | hi)
      · have : i + 1 ≤ n := Nat.succ_le_of_lt hi
        simp only [hi.le, this, if_true]
        exact hu (Nat.le_succ i)
      · simp only [le_refl, if_true, add_le_iff_nonpos_right, Nat.le_zero, Nat.one_ne_zero,
          if_false, h]
      · have A : ¬i ≤ n := hi.not_le
        have B : ¬i + 1 ≤ n := fun h => A (i.le_succ.trans h)
        simp only [A, B, if_false, le_rfl]
    refine ⟨v, n + 2, hv, vs, (mem_image _ _ _).2 ⟨n + 1, ?_, ?_⟩, ?_⟩
    · rw [mem_Iio]; exact Nat.lt_succ_self (n + 1)
    · have : ¬n + 1 ≤ n := Nat.not_succ_le_self n
      simp only [v, this, ite_eq_right_iff, IsEmpty.forall_iff]
    · calc
        (∑ i ∈ Finset.range n, edist (f (u (i + 1))) (f (u i))) =
            ∑ i ∈ Finset.range n, edist (f (v (i + 1))) (f (v i)) := by
          apply Finset.sum_congr rfl fun i hi => ?_
          simp only [Finset.mem_range] at hi
          have : i + 1 ≤ n := Nat.succ_le_of_lt hi
          simp only [v, hi.le, this, if_true]
        _ ≤ ∑ j ∈ Finset.range (n + 2), edist (f (v (j + 1))) (f (v j)) := by
          gcongr
          apply Nat.le_add_right
  have exists_N : ∃ N, N ≤ n ∧ x < u N := ⟨n, le_rfl, h⟩
  let N := Nat.find exists_N
  have hN : N ≤ n ∧ x < u N := Nat.find_spec exists_N
  let w : ℕ → α := fun i => if i < N then u i else if i = N then x else u (i - 1)
  have ws : ∀ i, w i ∈ s := by
    dsimp only [w]
    intro i
    split_ifs
    exacts [us _, hx, us _]
  have hw : Monotone w := by
    apply monotone_nat_of_le_succ fun i => ?_
    dsimp only [w]
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
  refine ⟨w, n + 1, hw, ws, (mem_image _ _ _).2 ⟨N, hN.1.trans_lt (Nat.lt_succ_self n), ?_⟩, ?_⟩
  · dsimp only [w]; rw [if_neg (lt_irrefl N), if_pos rfl]
  rcases eq_or_lt_of_le (zero_le N) with (Npos | Npos)
  · calc
      (∑ i ∈ Finset.range n, edist (f (u (i + 1))) (f (u i))) =
          ∑ i ∈ Finset.range n, edist (f (w (1 + i + 1))) (f (w (1 + i))) := by
        apply Finset.sum_congr rfl fun i _hi => ?_
        dsimp only [w]
        simp only [← Npos, Nat.not_lt_zero, Nat.add_succ_sub_one, add_zero, if_false,
          add_eq_zero, Nat.one_ne_zero, false_and, Nat.succ_add_sub_one, zero_add]
        rw [add_comm 1 i]
      _ = ∑ i ∈ Finset.Ico 1 (n + 1), edist (f (w (i + 1))) (f (w i)) := by
        rw [Finset.range_eq_Ico]
        exact Finset.sum_Ico_add (fun i => edist (f (w (i + 1))) (f (w i))) 0 n 1
      _ ≤ ∑ j ∈ Finset.range (n + 1), edist (f (w (j + 1))) (f (w j)) := by
        rw [Finset.range_eq_Ico]
        gcongr
        exact zero_le_one
  · calc
      (∑ i ∈ Finset.range n, edist (f (u (i + 1))) (f (u i))) =
          ((∑ i ∈ Finset.Ico 0 (N - 1), edist (f (u (i + 1))) (f (u i))) +
              ∑ i ∈ Finset.Ico (N - 1) N, edist (f (u (i + 1))) (f (u i))) +
            ∑ i ∈ Finset.Ico N n, edist (f (u (i + 1))) (f (u i)) := by
        rw [Finset.sum_Ico_consecutive, Finset.sum_Ico_consecutive, Finset.range_eq_Ico]
        · exact zero_le _
        · exact hN.1
        · exact zero_le _
        · exact Nat.pred_le _
      _ = (∑ i ∈ Finset.Ico 0 (N - 1), edist (f (w (i + 1))) (f (w i))) +
              edist (f (u N)) (f (u (N - 1))) +
            ∑ i ∈ Finset.Ico N n, edist (f (w (1 + i + 1))) (f (w (1 + i))) := by
        congr 1
        · congr 1
          · apply Finset.sum_congr rfl fun i hi => ?_
            simp only [Finset.mem_Ico, zero_le', true_and] at hi
            dsimp only [w]
            have A : i + 1 < N := Nat.lt_pred_iff.1 hi
            have B : i < N := Nat.lt_of_succ_lt A
            rw [if_pos A, if_pos B]
          · have A : N - 1 + 1 = N := Nat.succ_pred_eq_of_pos Npos
            have : Finset.Ico (N - 1) N = {N - 1} := by rw [← Nat.Ico_succ_singleton, A]
            simp only [this, A, Finset.sum_singleton]
        · apply Finset.sum_congr rfl fun i hi => ?_
          rw [Finset.mem_Ico] at hi
          dsimp only [w]
          have A : ¬1 + i + 1 < N := by omega
          have B : ¬1 + i + 1 = N := by omega
          have C : ¬1 + i < N := by omega
          have D : ¬1 + i = N := by omega
          rw [if_neg A, if_neg B, if_neg C, if_neg D]
          congr 3 <;> · rw [add_comm, Nat.sub_one]; apply Nat.pred_succ
      _ = (∑ i ∈ Finset.Ico 0 (N - 1), edist (f (w (i + 1))) (f (w i))) +
              edist (f (w (N + 1))) (f (w (N - 1))) +
            ∑ i ∈ Finset.Ico (N + 1) (n + 1), edist (f (w (i + 1))) (f (w i)) := by
        congr 1
        · congr 1
          · dsimp only [w]
            have A : ¬N + 1 < N := Nat.not_succ_lt_self
            have B : N - 1 < N := Nat.pred_lt Npos.ne'
            simp only [A, not_and, not_lt, Nat.succ_ne_self, Nat.add_succ_sub_one, add_zero,
              if_false, B, if_true]
        · exact Finset.sum_Ico_add (fun i => edist (f (w (i + 1))) (f (w i))) N n 1
      _ ≤ ((∑ i ∈ Finset.Ico 0 (N - 1), edist (f (w (i + 1))) (f (w i))) +
              ∑ i ∈ Finset.Ico (N - 1) (N + 1), edist (f (w (i + 1))) (f (w i))) +
            ∑ i ∈ Finset.Ico (N + 1) (n + 1), edist (f (w (i + 1))) (f (w i)) := by
        refine add_le_add (add_le_add le_rfl ?_) le_rfl
        have A : N - 1 + 1 = N := Nat.succ_pred_eq_of_pos Npos
        have B : N - 1 + 1 < N + 1 := A.symm ▸ N.lt_succ_self
        have C : N - 1 < N + 1 := lt_of_le_of_lt N.pred_le N.lt_succ_self
        rw [Finset.sum_eq_sum_Ico_succ_bot C, Finset.sum_eq_sum_Ico_succ_bot B, A, Finset.Ico_self,
          Finset.sum_empty, add_zero, add_comm (edist _ _)]
        exact edist_triangle _ _ _
      _ = ∑ j ∈ Finset.range (n + 1), edist (f (w (j + 1))) (f (w j)) := by
        rw [Finset.sum_Ico_consecutive, Finset.sum_Ico_consecutive, Finset.range_eq_Ico]
        · exact zero_le _
        · exact Nat.succ_le_succ hN.left
        · exact zero_le _
        · exact N.pred_le.trans N.le_succ

/-- The variation of a function on the union of two sets `s` and `t`, with `s` to the left of `t`,
bounds the sum of the variations along `s` and `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BoundedVariation/Variantf6a6916961ef9070cf375222db27a1634b17fb71f954a37907299397e5b88821.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BoundedVariation/Variantf6a6916961ef9070cf375222db27a1634b17fb71f954a37907299397e5b88821.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99e798288c00fc3ecd4493a87e7c6eec9710aaad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
