# hasTemperateGrowth_one_add_norm_sq_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:052f8cb2-2c9f-2a89-0fc9-b2dfa3d3ef04",
  "kind": "theorem",
  "lexical_name": "hasTemperateGrowth_one_add_norm_sq_rpow",
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
  "slug": "hastemperategrowth-one-add-norm-sq-rpow--ac45b89b6f6d72f068565027",
  "source": {
    "blob": "5cb955c3f434875ffc3417088861e8076356182d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 337,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac45b89b6f6d72f068565027325ffad23d80525a886bfd639f1b77a26bd63bb7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:052f8cb2-2c9f-2a89-0fc9-b2dfa3d3ef04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasTemperateGrowth_one_add_norm_sq_rpow (r : ℝ) :
    (fun (x : H) ↦ (1 + ‖x‖ ^ 2) ^ r).HasTemperateGrowth := by
  /- We prove this using that the composition of temperate functions is temperate.
  Since `x ^ r` is not smooth at the origin, we have to use `HasTemperateGrowth.comp'`, with any
  open set `t` that is contains the complement of the unit ball and does not contain the origin. -/
  set t := {y : ℝ | 1 / 2 < y}
  have ht : Set.range (fun (x : H) ↦ (1 + ‖x‖ ^ 2)) ⊆ t := by
    rintro - ⟨y, rfl⟩
    simp only [Set.mem_ofPred_eq, t]
    exact lt_add_of_lt_add_left (c := 0) (by norm_num) (by positivity)
  have hdiff : ContDiffOn ℝ ∞ (fun x ↦ x ^ r) t :=
    contDiffOn_fun_id.rpow_const_of_ne fun x hx ↦ (lt_trans (by norm_num) hx).ne'
  have hunique : UniqueDiffOn ℝ t := (isOpen_lt' (1 / 2)).uniqueDiffOn
  apply HasTemperateGrowth.comp' ht hunique hdiff _ (by fun_prop)
  -- The remaining part of the proof is proving that `x ↦ x ^ r` has temperate growth on `t`.
  -- This could be generalized to `t := {y : ℝ | ε < y}` for any `0 < ε < 1` if necessary.
  intro N
  /- Since `x ^ r` for negative `r` blows up near the origin (and we can't take
  `t := {y : ℝ | 1 / 2 < y}`), we have to choose `k` later than `N - r` times some factor depending
  on `t`. -/
  obtain ⟨k, hk⟩ := exists_nat_ge (max r <| (N - r) * Real.log 2 / (Real.log (3 / 2)))
  have hk₁ : r ≤ k := le_sup_left.trans hk
  have hk₂ : Real.log 2 * (N - r) ≤ (Real.log (3 / 2)) * k := by
    have := le_sup_right.trans hk
    field_simp at this
    grind
  use k, ∑ k ∈ Finset.range (N + 1), ‖Polynomial.eval r (descPochhammer ℝ k)‖, by positivity
  intro n hn x hx
  have : ContDiffAt ℝ n (fun x ↦ x ^ r) x :=
    Real.contDiffAt_rpow_const <| Or.inl (lt_trans (by norm_num) hx).ne'
  -- We calculate the derivative of `x ^ r`.
  rw [norm_iteratedFDerivWithin_eq_norm_iteratedDerivWithin,
    iteratedDerivWithin_eq_iteratedDeriv hunique this hx, iteratedDeriv_eq_iterate,
    Real.iter_deriv_rpow_const, norm_mul]
  gcongr 1
  · have : n ∈ Finset.range (N + 1) := by grind
    apply Finset.single_le_sum (fun _ _ ↦ by positivity) this
  -- It remains to show that `‖x ^ (r - n)‖ ≤ (1 + ‖x‖) ^ k`:
  have hx' : 1 / 2 < x := by simpa [t] using hx
  have hx'' : 0 < x := lt_of_lt_of_le (by norm_num) hx'.le
  simp only [Real.norm_eq_abs]
  apply (Real.abs_rpow_le_abs_rpow _ _).trans
  -- We consider the two cases `n ≤ r` and `r < n`.
  by_cases! h : 0 ≤ r - n
  · have : r - n ≤ k := by simpa using hk₁.trans (by simp)
    rw [← Real.rpow_natCast]
    exact (Real.rpow_le_rpow (by positivity) (by simp) h).trans
      (Real.rpow_le_rpow_of_exponent_le (by simp) this)
  have h : 0 < n - r := by grind
  calc
    /- In the case `0 < n - r`, we need the factor `Real.log 2 / (Real.log (3 / 2))` to control
    the growth near `‖x‖ = 1/2`. -/
    _ = x ^ (-(n - r)) := by
      rw [neg_sub]
      congr
      simpa using hx''.le
    _ ≤ (2 : ℝ) ^ (n - r) := by
      simp only [one_div, Set.mem_ofPred_eq, t] at hx
      rw [Real.rpow_neg_eq_inv_rpow]
      gcongr
      exact ((inv_lt_comm₀ hx'' (by norm_num)).mpr hx).le
    _ = Real.exp (Real.log 2 * (n - r)) := by
      rw [Real.rpow_def_of_pos]
      norm_num
    _ ≤ Real.exp (Real.log (3 / 2) * k) := by
      gcongr 1
      apply le_trans _ hk₂
      gcongr
    _ ≤ (3 / 2) ^ k := by
      rw [← Real.rpow_natCast, Real.rpow_def_of_pos]
      norm_num
    _ ≤ _ := by
      gcongr
      grind

end Function

section Real

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Varianta3961bdbfbae43d4ddfb5e9d6c1d6323bea95398dd9228ad1bfb2731620d88dc.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb955c3f434875ffc3417088861e8076356182d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
