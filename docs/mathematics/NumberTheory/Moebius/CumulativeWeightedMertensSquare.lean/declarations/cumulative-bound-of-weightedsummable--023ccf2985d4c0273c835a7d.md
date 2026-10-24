# cumulative_bound_of_weightedSummable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c6a1789-20ea-4087-6c5b-d93b71b2f5c7",
  "kind": "theorem",
  "lexical_name": "cumulative_bound_of_weightedSummable",
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
  "slug": "cumulative-bound-of-weightedsummable--023ccf2985d4c0273c835a7d",
  "source": {
    "blob": "518bfbfb70521975d9fc6258637aa3e7286dfb91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 136,
    "path": "GRWTSK/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:023ccf2985d4c0273c835a7d54af510b84b1d1454ba5fa09a2ec37dc711cd3df",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c6a1789-20ea-4087-6c5b-d93b71b2f5c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cumulative_bound_of_weightedSummable
    {δ : ℝ} (hδ : 0 < δ)
    (hs : Summable (fun n : ℕ =>
      weightedMertensBaseTerm n *
        ((n + 1 : ℕ) : ℝ) ^ (-δ))) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ, 1 ≤ N →
      weightedMertensCumulative N ≤ C * (N : ℝ) ^ δ := by
  let C : ℝ := ∑' n : ℕ,
    weightedMertensBaseTerm n *
      ((n + 1 : ℕ) : ℝ) ^ (-δ)
  have hC : 0 ≤ C := by
    dsimp [C]
    exact tsum_nonneg fun n =>
      mul_nonneg (weightedMertensBaseTerm_nonneg n)
        (Real.rpow_nonneg (by positivity) _)
  refine ⟨C, hC, ?_⟩
  intro N hN
  have hNpos : (0 : ℝ) < (N : ℝ) := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  unfold weightedMertensCumulative
  calc
    (∑ n ∈ Finset.range N, weightedMertensBaseTerm n) =
        ∑ n ∈ Finset.range N,
          (weightedMertensBaseTerm n *
            ((n + 1 : ℕ) : ℝ) ^ (-δ)) *
              ((n + 1 : ℕ) : ℝ) ^ δ := by
      apply Finset.sum_congr rfl
      intro n hn
      have hnp : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
      rw [mul_assoc, ← Real.rpow_add hnp]
      norm_num
    _ ≤ ∑ n ∈ Finset.range N,
          (weightedMertensBaseTerm n *
            ((n + 1 : ℕ) : ℝ) ^ (-δ)) *
              (N : ℝ) ^ δ := by
      apply Finset.sum_le_sum
      intro n hn
      have hnN : ((n + 1 : ℕ) : ℝ) ≤ (N : ℝ) := by
        exact_mod_cast Nat.succ_le_of_lt (Finset.mem_range.mp hn)
      have hp := Real.rpow_le_rpow (Nat.cast_nonneg _) hnN hδ.le
      exact mul_le_mul_of_nonneg_left hp
        (mul_nonneg (weightedMertensBaseTerm_nonneg n)
          (Real.rpow_nonneg (by positivity) _))
    _ = (∑ n ∈ Finset.range N,
          weightedMertensBaseTerm n *
            ((n + 1 : ℕ) : ℝ) ^ (-δ)) *
          (N : ℝ) ^ δ := by rw [Finset.sum_mul]
    _ ≤ C * (N : ℝ) ^ δ := by
      apply mul_le_mul_of_nonneg_right
        (hs.sum_le_tsum (Finset.range N) fun n _ =>
          mul_nonneg (weightedMertensBaseTerm_nonneg n)
            (Real.rpow_nonneg (by positivity) _))
      positivity

/-- The all-positive family therefore supplies the finite subpolynomial
criterion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `518bfbfb70521975d9fc6258637aa3e7286dfb91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
