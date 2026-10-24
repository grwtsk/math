# RSSum_diff_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0695fd7b-9a46-f043-09cf-a107f90b4fa5",
  "kind": "lemma",
  "lexical_name": "RSSum_diff_bound",
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
  "slug": "rssum-diff-bound--7f8fce0eaeeb78cfcf9cebb3",
  "source": {
    "blob": "3b06a0570821a48a2e65208640ff2e5af25d4cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1082,
    "line": 1037,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f8fce0eaeeb78cfcf9cebb33704efa4bb2a59c1e9ae08bfa7bdaedf65e2df97",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0695fd7b-9a46-f043-09cf-a107f90b4fa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1037–1082.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RSSum_diff_bound {f g : ℝ → ℝ} {a b : ℝ}
    (P R : TaggedPartition a b)
    (k : Fin (P.n + 1) → Fin (R.n + 1)) (hk : Monotone k) (hk_eq : ∀ i, R.x (k i) = P.x i) (hk_0 : k 0 = 0)
    (ε : ℝ) (hε : 0 ≤ ε)
    (h_osc : ∀ i : Fin P.n, ∀ x ∈ Set.Icc (P.x i.castSucc) (P.x i.succ), |f (P.xi i) - f x| ≤ ε)
    (hg : BoundedVariationOn g (Set.Icc a b)) :
    |RSSum f g P - RSSum f g R| ≤ ε * (eVariationOn g (Set.Icc a b)).toReal := by
      -- Applying the triangle inequality and the bounds from `inner_sum_bound`, we get:
      have h_triangle : abs (RSSum f g P - RSSum f g R) ≤ ∑ i : Fin P.n, ε * ∑ j ∈ Finset.Ico (k i.castSucc).val (k i.succ).val, abs (IPart.term g R.toIPartition j) := by
        convert Finset.abs_sum_le_sum_abs _ _ |> le_trans <| Finset.sum_le_sum fun i _ => ?_ using 2;
        any_goals try infer_instance;
        rw [ RSSum_P_rewrite f g P R k hk hk_eq, RSSum_R_rewrite f g P R k hk hk_0 hk_eq ];
        rw [ ← Finset.sum_sub_distrib ];
        rw [ Finset.mul_sum _ _ _ ];
        convert Finset.abs_sum_le_sum_abs _ _ |> le_trans <| Finset.sum_le_sum fun j hj => ?_ using 2;
        rw [ ← Finset.sum_sub_distrib ];
        · infer_instance;
        · infer_instance;
        · unfold term_f_g;
          split_ifs <;> simp_all +decide [ abs_mul ];
          · rw [ ← sub_mul ];
            rw [ abs_mul ];
            gcongr;
            apply h_osc i (R.xi ⟨j, by linarith⟩);
            · have := R.h_xi ⟨ j, by linarith ⟩;
              exact le_trans ( hk_eq _ ▸ R.monotone ( Nat.le_trans ( Nat.le_of_lt_succ ( by aesop ) ) hj.1 ) ) this.1;
            · have := R.h_xi ⟨ j, by linarith ⟩;
              exact this.2.trans ( hk_eq ( Fin.succ i ) ▸ R.monotone ( Nat.le_of_lt_succ ( by aesop ) ) );
          · linarith [ Fin.is_lt ( k i.castSucc ), Fin.is_lt ( k i.succ ) ];
      -- Summing over $i$, we get:
      have h_sum : ∑ i : Fin P.n, ε * ∑ j ∈ Finset.Ico (k i.castSucc).val (k i.succ).val, abs (IPart.term g R.toIPartition j) ≤ ε * ∑ j ∈ Finset.Ico 0 (k (Fin.last P.n)).val, abs (IPart.term g R.toIPartition j) := by
        have h_sum : ∑ i : Fin P.n, ∑ j ∈ Finset.Ico (k i.castSucc).val (k i.succ).val, abs (IPart.term g R.toIPartition j) = ∑ j ∈ Finset.Ico 0 (k (Fin.last P.n)).val, abs (IPart.term g R.toIPartition j) := by
          convert IPart.sum_partition_blocks P.n ( fun i => ( k i : ℕ ) ) ( fun i j hij => hk hij ) ( fun j => |IPart.term g R.toIPartition j| ) using 1;
          aesop;
        rw [ ← h_sum, Finset.mul_sum _ _ _ ];
      -- Since $k (Fin.last P.n) \leq R.n$, we have:
      have h_last : ∑ j ∈ Finset.Ico 0 (k (Fin.last P.n)).val, abs (IPart.term g R.toIPartition j) ≤ ∑ j ∈ Finset.range R.n, abs (IPart.term g R.toIPartition j) := by
        exact Finset.sum_le_sum_of_subset_of_nonneg ( fun x hx => Finset.mem_range.mpr ( by linarith [ Finset.mem_Ico.mp hx, Fin.is_lt ( k ( Fin.last P.n ) ) ] ) ) fun _ _ _ => abs_nonneg _;
      refine le_trans h_triangle <| h_sum.trans <| mul_le_mul_of_nonneg_left ( h_last.trans ?_ ) hε;
      convert sum_abs_diff_le_variation R.toIPartition hg using 1;
      simp +decide [ Finset.sum_range, IPart.term ];
      rfl

/-
If the mesh of a partition is small enough such that any two points within distance mesh satisfy the uniform continuity condition, then the oscillation of f on each subinterval is bounded.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean#L1037).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b06a0570821a48a2e65208640ff2e5af25d4cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
