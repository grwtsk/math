# add_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e588763-cbcc-8454-39d5-17809008e3d6",
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
  "slug": "add-point--91c4a1144fb3f8c2d03f63d0",
  "source": {
    "blob": "b6113d88eb9b6e6624402490680f712822dc8815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 285,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91c4a1144fb3f8c2d03f63d0ab63cde5ea9703da906c3a6d320ab1863ae2f5df",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e588763-cbcc-8454-39d5-17809008e3d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_point (f : α → E) {s : Set α} {x : α} (hx : x ∈ s) (u : ℕ → α) (hu : Monotone u)
    (us : ∀ i, u i ∈ s) (n : ℕ) :
    ∃ (v : ℕ → α) (m : ℕ), Monotone v ∧ (∀ i, v i ∈ s) ∧ x ∈ v '' Iio m ∧
      (∑ i ∈ Finset.range n, edist (f (u (i + 1))) (f (u i))) ≤
        ∑ j ∈ Finset.range m, edist (f (v (j + 1))) (f (v j)) := by
  rcases le_or_gt (u n) x with (h | h)
  · let v i := if i ≤ n then u i else x
    refine ⟨v, n + 2, by grind [Monotone], by grind, (mem_image _ _ _).2 ⟨n + 1, by grind⟩, ?_⟩
    calc
      (∑ i ∈ Finset.range n, edist (f (u (i + 1))) (f (u i))) =
          ∑ i ∈ Finset.range n, edist (f (v (i + 1))) (f (v i)) := by grind [Finset.sum_congr]
      _ ≤ ∑ j ∈ Finset.range (n + 2), edist (f (v (j + 1))) (f (v j)) := by
        gcongr
        apply Nat.le_add_right
  have exists_N : ∃ N, N ≤ n ∧ x < u N := ⟨n, le_rfl, h⟩
  let N := Nat.find exists_N
  have hN : N ≤ n ∧ x < u N := Nat.find_spec exists_N
  let w : ℕ → α := fun i => if i < N then u i else if i = N then x else u (i - 1)
  have hw : Monotone w := by
    apply monotone_nat_of_le_succ fun i => ?_
    rcases lt_trichotomy (i + 1) N with (hi | hi | hi)
    · grind [Monotone]
    · have A : i < N := hi ▸ i.lt_succ_self
      have := Nat.find_min exists_N A
      grind
    · grind [Monotone]
  refine ⟨w, n + 1, hw, by grind, (mem_image _ _ _).2 ⟨N, by grind⟩, ?_⟩
  rcases eq_zero_or_pos N with (Npos | Npos)
  · calc
      (∑ i ∈ Finset.range n, edist (f (u (i + 1))) (f (u i))) =
          ∑ i ∈ Finset.range n, edist (f (w (1 + i + 1))) (f (w (1 + i))) := by grind
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
        rw [Finset.sum_Ico_consecutive, Finset.sum_Ico_consecutive, Finset.range_eq_Ico] <;> grind
      _ = (∑ i ∈ Finset.Ico 0 (N - 1), edist (f (w (i + 1))) (f (w i))) +
              edist (f (u N)) (f (u (N - 1))) +
            ∑ i ∈ Finset.Ico N n, edist (f (w (1 + i + 1))) (f (w (1 + i))) := by
        congr 1
        · congr 1
          · grind [Finset.sum_congr]
          · have A : N - 1 + 1 = N := Nat.succ_pred_eq_of_pos Npos
            have : Finset.Ico (N - 1) N = {N - 1} := by rw [← Nat.Ico_succ_singleton, A]
            simp only [this, A, Finset.sum_singleton]
        · grind [Finset.sum_congr]
      _ = (∑ i ∈ Finset.Ico 0 (N - 1), edist (f (w (i + 1))) (f (w i))) +
              edist (f (w (N + 1))) (f (w (N - 1))) +
            ∑ i ∈ Finset.Ico (N + 1) (n + 1), edist (f (w (i + 1))) (f (w i)) := by
        congr 1
        · grind
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
        rw [Finset.sum_Ico_consecutive, Finset.sum_Ico_consecutive, Finset.range_eq_Ico] <;> grind

/-- The variation of a function on the union of two sets `s` and `t`, with `s` to the left of `t`,
bounds the sum of the variations along `s` and `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6113d88eb9b6e6624402490680f712822dc8815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
