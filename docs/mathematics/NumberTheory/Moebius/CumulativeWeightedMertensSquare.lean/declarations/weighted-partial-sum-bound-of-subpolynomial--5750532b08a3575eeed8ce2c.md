# weighted_partial_sum_bound_of_subpolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35c468d8-01ae-f31e-0dbe-70e2fce6971d",
  "kind": "theorem",
  "lexical_name": "weighted_partial_sum_bound_of_subpolynomial",
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
  "slug": "weighted-partial-sum-bound-of-subpolynomial--5750532b08a3575eeed8ce2c",
  "source": {
    "blob": "518bfbfb70521975d9fc6258637aa3e7286dfb91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 200,
    "path": "GRWTSK/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5750532b08a3575eeed8ce2cc83f0d4d2cd86b16183022a03732117e5e72ee1e",
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

Occurrence: `result:35c468d8-01ae-f31e-0dbe-70e2fce6971d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_partial_sum_bound_of_subpolynomial
    (hsub : SubpolynomialCumulativeWeightedMertensSquare)
    {ε : ℝ} (hε : 0 < ε) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ N : ℕ,
      (∑ n ∈ Finset.range N,
        weightedMertensBaseTerm n *
          ((n + 1 : ℕ) : ℝ) ^ (-ε)) ≤ K := by
  let δ : ℝ := ε / 2
  have hδ : 0 < δ := by dsimp [δ]; linarith
  obtain ⟨C, hC, hA⟩ := hsub δ hδ
  let p : ℕ → ℝ := fun n =>
    ((n + 1 : ℕ) : ℝ) ^ (δ - ε - 1)
  have hp : Summable p := by
    have hbase : Summable (fun n : ℕ =>
        (n : ℝ) ^ (δ - ε - 1)) :=
      Real.summable_nat_rpow.mpr (by dsimp [δ]; linarith)
    have hshift := (summable_nat_add_iff 1).2 hbase
    simpa only [p, Nat.cast_add, Nat.cast_one] using hshift
  let P : ℝ := ∑' n : ℕ, p n
  have hP : 0 ≤ P := by
    dsimp [P, p]
    exact tsum_nonneg fun n => Real.rpow_nonneg (by positivity) _
  let K : ℝ := C + (C * ε) * P
  have hK : 0 ≤ K := by
    dsimp [K]
    exact add_nonneg hC (mul_nonneg (mul_nonneg hC hε.le) hP)
  refine ⟨K, hK, ?_⟩
  intro M
  cases M with
  | zero => simpa only [Finset.range_zero, Finset.sum_empty] using hK
  | succ N =>
      rw [weightedMertens_partial_sum_abel ε N]
      have hterminal :
          weightedMertensCumulative (N + 1) *
              ((N + 1 : ℕ) : ℝ) ^ (-ε) ≤ C := by
        have hA' := hA (N + 1) (by omega)
        have hbase : (1 : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by
          exact_mod_cast (by omega : 1 ≤ N + 1)
        calc
          weightedMertensCumulative (N + 1) *
              ((N + 1 : ℕ) : ℝ) ^ (-ε) ≤
              (C * ((N + 1 : ℕ) : ℝ) ^ δ) *
                ((N + 1 : ℕ) : ℝ) ^ (-ε) :=
            mul_le_mul_of_nonneg_right hA'
              (Real.rpow_nonneg (by positivity) _)
          _ = C * ((N + 1 : ℕ) : ℝ) ^ (δ - ε) := by
            rw [mul_assoc, ← Real.rpow_add (by positivity)]
            congr 2
          _ ≤ C * 1 := by
            apply mul_le_mul_of_nonneg_left _ hC
            simpa only [Real.rpow_zero] using
              Real.rpow_le_rpow_of_exponent_le hbase
                (show δ - ε ≤ 0 by dsimp [δ]; linarith)
          _ = C := mul_one C
      have hsum :
          (∑ n ∈ Finset.range N,
            weightedMertensCumulative (n + 1) *
              (((n + 1 : ℕ) : ℝ) ^ (-ε) -
                ((n + 2 : ℕ) : ℝ) ^ (-ε))) ≤
            (C * ε) * P := by
        calc
          (∑ n ∈ Finset.range N,
            weightedMertensCumulative (n + 1) *
              (((n + 1 : ℕ) : ℝ) ^ (-ε) -
                ((n + 2 : ℕ) : ℝ) ^ (-ε))) ≤
              ∑ n ∈ Finset.range N, (C * ε) * p n := by
            apply Finset.sum_le_sum
            intro n hn
            let x : ℝ := (n + 1 : ℕ)
            have hx : 0 < x := by dsimp [x]; positivity
            have hA' := hA (n + 1) (by omega)
            have hdrop0 : 0 ≤
                x ^ (-ε) - (x + 1) ^ (-ε) := by
              apply sub_nonneg.mpr
              exact Real.rpow_le_rpow_of_nonpos hx
                (by linarith : x ≤ x + 1) (by linarith : -ε ≤ 0)
            have hdrop :
                x ^ (-ε) - (x + 1) ^ (-ε) ≤
                  ε * x ^ (-ε - 1) :=
              rpow_sub_rpow_add_one_le hx hε.le
            calc
              weightedMertensCumulative (n + 1) *
                  (((n + 1 : ℕ) : ℝ) ^ (-ε) -
                    ((n + 2 : ℕ) : ℝ) ^ (-ε)) =
                  weightedMertensCumulative (n + 1) *
                    (x ^ (-ε) - (x + 1) ^ (-ε)) := by
                dsimp [x]
                push_cast
                ring
              _ ≤ (C * x ^ δ) *
                    (x ^ (-ε) - (x + 1) ^ (-ε)) :=
                mul_le_mul_of_nonneg_right hA' hdrop0
              _ ≤ (C * x ^ δ) *
                    (ε * x ^ (-ε - 1)) :=
                mul_le_mul_of_nonneg_left hdrop
                  (mul_nonneg hC (Real.rpow_nonneg hx.le _))
              _ = (C * ε) * x ^ (δ - ε - 1) := by
                rw [show δ - ε - 1 = δ + (-ε - 1) by ring, Real.rpow_add hx]
                ring
              _ = (C * ε) * p n := by
                dsimp [p, x]
          _ ≤ ∑' n : ℕ, (C * ε) * p n := by
            exact (hp.mul_left (C * ε)).sum_le_tsum
              (Finset.range N) fun n _ =>
                mul_nonneg (mul_nonneg hC hε.le)
                  (Real.rpow_nonneg (by positivity) _)
          _ = (C * ε) * P := by
            simp [P, tsum_mul_left]
      calc
        weightedMertensCumulative (N + 1) *
              ((N + 1 : ℕ) : ℝ) ^ (-ε) +
            ∑ n ∈ Finset.range N,
              weightedMertensCumulative (n + 1) *
                (((n + 1 : ℕ) : ℝ) ^ (-ε) -
                  ((n + 2 : ℕ) : ℝ) ^ (-ε)) ≤
            C + (C * ε) * P := add_le_add hterminal hsum
        _ = K := rfl

/-- Subpolynomial cumulative growth pays every positive weighted series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CumulativeWeightedMertensSquare.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `518bfbfb70521975d9fc6258637aa3e7286dfb91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
