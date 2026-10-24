# sumAbsDiff_mono_of_refinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3443867a-99dc-1ab6-a707-8e5aba1274a6",
  "kind": "lemma",
  "lexical_name": "sumAbsDiff_mono_of_refinement",
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
  "slug": "sumabsdiff-mono-of-refinement--d3693aafcba7c1a847d829fb",
  "source": {
    "blob": "2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 658,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3693aafcba7c1a847d829fb099f265a4128089f3db25020fb5a5771a1234443",
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

Occurrence: `result:3443867a-99dc-1ab6-a707-8e5aba1274a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 658–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sumAbsDiff_mono_of_refinement
  {a b : ℝ} {g : ℝ → ℝ} {P R : IPart.IPartition a b}
  (hPR : IPart.IsRefinement R P) :
  sumAbsDiff g P ≤ sumAbsDiff g R := by
    -- Use `refinement_index_map` to get `k`.
    obtain ⟨k, _, hk_eq⟩ : ∃ k : Fin (P.n + 1) → Fin (R.n + 1), Monotone k ∧ ∀ i, R.x (k i) = P.x i := by
      exact IPart.refinement_index_map P R hPR;
    -- Apply `sumAbsDiff_block_le` to bound the sum over `P` by the double sum over blocks of `R`.
    have h_sum_le_double_sum : ∑ i : Fin P.n, |g (P.x i.succ) - g (P.x i.castSucc)| ≤ ∑ i : Fin P.n, ∑ j ∈ Finset.Ico (k i.castSucc).val (k i.succ).val, |IPart.term g R j| := by
      exact Finset.sum_le_sum fun i _ => sumAbsDiff_block_le k ‹_› ‹_› i;
    -- Use `sum_partition_blocks` to collapse the double sum into a single sum over `Ico (k 0) (k P.n)`.
    have h_double_sum_to_single_sum : ∑ i : Fin P.n, ∑ j ∈ Finset.Ico (k i.castSucc).val (k i.succ).val, |IPart.term g R j| = ∑ j ∈ Finset.Ico (k 0).val (k (Fin.last P.n)).val, |IPart.term g R j| := by
      have h_double_sum_to_single_sum : ∀ (n : ℕ) (k : Fin (n + 1) → ℕ) (hk : Monotone k), ∑ i : Fin n, ∑ j ∈ Finset.Ico (k i.castSucc) (k i.succ), |IPart.term g R j| = ∑ j ∈ Finset.Ico (k 0) (k (Fin.last n)), |IPart.term g R j| := by
        exact fun n k hk ↦ IPart.sum_partition_blocks n k hk fun j ↦ |IPart.term g R j|;
      convert h_double_sum_to_single_sum P.n ( fun i => ( k i : ℕ ) ) ( fun i j hij => by simpa using ‹Monotone k› hij ) using 1;
    -- Bound this sum by the sum over `range R.n` (since terms are non-negative and the interval is a subset).
    have h_single_sum_le_range : ∑ j ∈ Finset.Ico (k 0).val (k (Fin.last P.n)).val, |IPart.term g R j| ≤ ∑ j ∈ Finset.Ico 0 R.n, |IPart.term g R j| := by
      refine' Finset.sum_le_sum_of_subset_of_nonneg _ fun _ _ _ => abs_nonneg _;
      refine' Finset.Ico_subset_Ico _ _ <;> norm_num;
      exact Nat.le_of_lt_succ ( Fin.is_lt _ );
    convert h_sum_le_double_sum.trans ( h_double_sum_to_single_sum.le.trans h_single_sum_le_range ) using 1;
    simp +decide [ sumAbsDiff, Finset.sum_range, Fin.cast_val_eq_self ];
    refine' Finset.sum_congr rfl fun i hi => _ ; unfold IPart.term ; aesop

/-
`sumAbsDiff` is monotonic with respect to partition refinement.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean#L658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
