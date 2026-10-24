# sum_le_sumAbsDiff_of_points_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:025c8b5d-b2f6-53a8-5c79-19f3abfecc74",
  "kind": "lemma",
  "lexical_name": "sum_le_sumAbsDiff_of_points_subset",
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
  "slug": "sum-le-sumabsdiff-of-points-subset--40715810aa008c50e44ebcfc",
  "source": {
    "blob": "2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 694,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40715810aa008c50e44ebcfcc3101bb4cbb0caf202ea963a407c02807a848c92",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:025c8b5d-b2f6-53a8-5c79-19f3abfecc74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_le_sumAbsDiff_of_points_subset {a b : ℝ} (g : ℝ → ℝ) (P : RS.IPart.IPartition a b)
    (p : ℕ) (x : Fin (p + 1) → ℝ) (hx : Monotone x)
    (h_subset : ∀ i, x i ∈ P.points) :
    ∑ i : Fin p, |g (x i.succ) - g (x i.castSucc)| ≤ RS.SumDiff.sumAbsDiff g P := by
      -- By definition of $P.points$, there exists a monotone map $k : Fin (p + 1) → Fin (P.n + 1)$ such that $P.x (k i) = x i$ for all $i$.
      obtain ⟨k, hk⟩ : ∃ k : Fin (p + 1) → Fin (P.n + 1), Monotone k ∧ ∀ i : Fin (p + 1), P.x (k i) = x i := by
        -- By definition of $P.points$, there exists a monotone map $k : Fin (p + 1) → Fin (P.n + 1)$ such that $P.x (k i) = x i$ for all $i$ by the properties of the points of $P$.
        have h_k_exists : ∀ y ∈ P.points, ∃ i : Fin (P.n + 1), P.x i = y := by
          exact fun y hy => by rw [ IPart.IPartition.points ] at hy; aesop;
        choose k hk using h_k_exists;
        use fun i => k ( x i ) ( h_subset i );
        have h_k_mono : ∀ i j : Fin (p + 1), x i ≤ x j → k (x i) (h_subset i) ≤ k (x j) (h_subset j) := by
          intros i j hij
          have h_k_mono : P.x (k (x i) (h_subset i)) ≤ P.x (k (x j) (h_subset j)) := by
            aesop;
          contrapose! h_k_mono;
          apply_rules [ P.monotone, lt_of_le_of_ne ];
          · exact le_of_lt h_k_mono;
          · grind;
        exact ⟨ fun i j hij => h_k_mono i j <| hx hij, fun i => hk _ _ ⟩;
      -- Apply the lemma `sum_telescope_abs_le` to each term in the sum.
      have h_telescope : ∀ i : Fin p, |g (x (i.succ)) - g (x (i.castSucc))| ≤ ∑ j ∈ Finset.Ico (k (i.castSucc)).val (k (i.succ)).val, |RS.IPart.term g P j| := by
        intros i
        have h_telescope : |g (P.x (k (i.succ))) - g (P.x (k (i.castSucc)))| ≤ ∑ j ∈ Finset.Ico (k (i.castSucc)).val (k (i.succ)).val, |RS.IPart.term g P j| := by
          convert IPart.sum_telescope_abs_le g P ( k ( Fin.castSucc i ) ) ( k ( Fin.succ i ) ) _ using 1;
          exact hk.1 ( Nat.le_succ _ );
        aesop;
      -- Apply the lemma `sum_partition_blocks` to combine the sums over the intervals `[k i, k (i+1))`.
      have h_sum_partition_blocks : ∑ i : Fin p, ∑ j ∈ Finset.Ico (k (i.castSucc)).val (k (i.succ)).val, |RS.IPart.term g P j| ≤ ∑ j ∈ Finset.Ico (k 0).val (k (Fin.last p)).val, |RS.IPart.term g P j| := by
        have h_sum_partition_blocks : ∑ i : Fin p, ∑ j ∈ Finset.Ico (k (i.castSucc)).val (k (i.succ)).val, |RS.IPart.term g P j| = ∑ j ∈ Finset.Ico (k 0).val (k (Fin.last p)).val, |RS.IPart.term g P j| := by
          convert RS.IPart.sum_partition_blocks p ( fun i => ( k i : ℕ ) ) hk.1 _ using 1;
        grind;
      refine le_trans ( Finset.sum_le_sum fun i _ => h_telescope i ) ( h_sum_partition_blocks.trans ?_ );
      refine' le_trans ( Finset.sum_le_sum_of_subset_of_nonneg ( Finset.subset_iff.mpr _ ) fun _ _ _ => abs_nonneg _ ) _;
      exact Finset.range P.n;
      · simp +zetaDelta at *;
        intro i hi₁ hi₂; exact lt_of_lt_of_le hi₂ ( Nat.le_of_lt_succ <| by simp [ Fin.is_lt ] ) ;
      · simp +decide [ Finset.sum_range, IPart.term ];
        rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
