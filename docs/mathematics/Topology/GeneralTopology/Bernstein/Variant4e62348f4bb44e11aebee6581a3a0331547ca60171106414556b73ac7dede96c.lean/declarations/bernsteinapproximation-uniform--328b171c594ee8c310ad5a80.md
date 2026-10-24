# bernsteinApproximation_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12b43fc4d1e3762baf04577bda87bf117deb0d50",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dedb7f19-ca33-d7e4-3972-1f3958a9611c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9881f0a7-d0b4-3f6d-2f06-1c4eae8b0c46",
  "kind": "theorem",
  "lexical_name": "bernsteinApproximation_uniform",
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
  "slug": "bernsteinapproximation-uniform--328b171c594ee8c310ad5a80",
  "source": {
    "blob": "12b43fc4d1e3762baf04577bda87bf117deb0d50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 227,
    "path": "GRWTSK/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:328b171c594ee8c310ad5a802d51720d9f3583ebd2173bee08d241e6882cae75",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9881f0a7-d0b4-3f6d-2f06-1c4eae8b0c46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernsteinApproximation_uniform (f : C(I, ℝ)) :
    Tendsto (fun n : ℕ => bernsteinApproximation n f) atTop (𝓝 f) := by
  simp only [Metric.nhds_basis_ball.tendsto_right_iff, Metric.mem_ball, dist_eq_norm]
  intro ε h
  let δ := δ f ε h
  have nhds_zero := tendsto_const_div_atTop_nhds_0_nat (2 * ‖f‖ * δ ^ (-2 : ℤ))
  filter_upwards [nhds_zero.eventually (gt_mem_nhds (half_pos h)), eventually_gt_atTop 0] with n nh
    npos'
  have npos : 0 < (n : ℝ) := by positivity
  have w₂ : 0 ≤ δ ^ (-2:ℤ) := zpow_neg_two_nonneg _ -- TODO: need a positivity extension for `zpow`
  -- As `[0,1]` is compact, it suffices to check the inequality pointwise.
  rw [ContinuousMap.norm_lt_iff _ h]
  intro x
  -- The idea is to split up the sum over `k` into two sets,
  -- `S`, where `x - k/n < δ`, and its complement.
  let S := S f ε h n x
  calc
    |(bernsteinApproximation n f - f) x| = |bernsteinApproximation n f x - f x| := rfl
    _ = |bernsteinApproximation n f x - f x * 1| := by rw [mul_one]
    _ = |bernsteinApproximation n f x - f x * ∑ k : Fin (n + 1), bernstein n k x| := by
      rw [bernstein.probability]
    _ = |∑ k : Fin (n + 1), (f k/ₙ - f x) * bernstein n k x| := by
      simp [bernsteinApproximation, Finset.mul_sum, sub_mul]
    _ ≤ ∑ k : Fin (n + 1), |(f k/ₙ - f x) * bernstein n k x| := (Finset.abs_sum_le_sum_abs _ _)
    _ = ∑ k : Fin (n + 1), |f k/ₙ - f x| * bernstein n k x := by
      simp_rw [abs_mul, abs_eq_self.mpr bernstein_nonneg]
    _ = (∑ k in S, |f k/ₙ - f x| * bernstein n k x) + ∑ k in Sᶜ, |f k/ₙ - f x| * bernstein n k x :=
      (S.sum_add_sum_compl _).symm
    -- We'll now deal with the terms in `S` and the terms in `Sᶜ` in separate calc blocks.
    _ < ε / 2 + ε / 2 :=
      (add_lt_add_of_le_of_lt ?_ ?_)
    _ = ε := add_halves ε
  · -- We now work on the terms in `S`: uniform continuity and `bernstein.probability`
    -- quickly give us a bound.
    calc
      ∑ k in S, |f k/ₙ - f x| * bernstein n k x ≤ ∑ k in S, ε / 2 * bernstein n k x := by
        gcongr with _ m
        exact le_of_lt (lt_of_mem_S m)
      _ = ε / 2 * ∑ k in S, bernstein n k x := by rw [Finset.mul_sum]
      -- In this step we increase the sum over `S` back to a sum over all of `Fin (n+1)`,
      -- so that we can use `bernstein.probability`.
      _ ≤ ε / 2 * ∑ k : Fin (n + 1), bernstein n k x := by
        gcongr
        exact Finset.sum_le_univ_sum_of_nonneg fun k => bernstein_nonneg
      _ = ε / 2 := by rw [bernstein.probability, mul_one]
  · -- We now turn to working on `Sᶜ`: we control the difference term just using `‖f‖`,
    -- and then insert a `δ^(-2) * (x - k/n)^2` factor
    -- (which is at least one because we are not in `S`).
    calc
      ∑ k in Sᶜ, |f k/ₙ - f x| * bernstein n k x ≤ ∑ k in Sᶜ, 2 * ‖f‖ * bernstein n k x := by
        gcongr
        apply f.dist_le_two_norm
      _ = 2 * ‖f‖ * ∑ k in Sᶜ, bernstein n k x := by rw [Finset.mul_sum]
      _ ≤ 2 * ‖f‖ * ∑ k in Sᶜ, δ ^ (-2 : ℤ) * ((x : ℝ) - k/ₙ) ^ 2 * bernstein n k x := by
        gcongr with _ m
        conv_lhs => rw [← one_mul (bernstein _ _ _)]
        gcongr
        exact le_of_mem_S_compl m
      -- Again enlarging the sum from `Sᶜ` to all of `Fin (n+1)`
      _ ≤ 2 * ‖f‖ * ∑ k : Fin (n + 1), δ ^ (-2 : ℤ) * ((x : ℝ) - k/ₙ) ^ 2 * bernstein n k x := by
        gcongr
        refine Finset.sum_le_univ_sum_of_nonneg <| fun k => ?_
        positivity
      _ = 2 * ‖f‖ * δ ^ (-2 : ℤ) * ∑ k : Fin (n + 1), ((x : ℝ) - k/ₙ) ^ 2 * bernstein n k x := by
        conv_rhs =>
          rw [mul_assoc, Finset.mul_sum]
          simp only [← mul_assoc]
      -- `bernstein.variance` and `x ∈ [0,1]` gives the uniform bound
      _ = 2 * ‖f‖ * δ ^ (-2 : ℤ) * x * (1 - x) / n := by rw [variance npos]; ring
      _ ≤ 2 * ‖f‖ * δ ^ (-2 : ℤ) * 1 * 1 / n := by gcongr <;> unit_interval
      _ < ε / 2 := by simp only [mul_one]; exact nh
#align bernstein_approximation_uniform bernsteinApproximation_uniform
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bernstein/Variant4e62348f4bb44e11aebee6581a3a0331547ca60171106414556b73ac7dede96c.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b43fc4d1e3762baf04577bda87bf117deb0d50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
