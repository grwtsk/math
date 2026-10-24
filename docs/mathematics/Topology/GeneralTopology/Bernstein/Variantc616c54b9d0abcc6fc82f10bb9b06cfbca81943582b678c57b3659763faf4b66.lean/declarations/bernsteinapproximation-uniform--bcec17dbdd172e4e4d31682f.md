# bernsteinApproximation_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21f92c1a-1633-9ddc-59bd-40a091b95fe5",
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
  "slug": "bernsteinapproximation-uniform--bcec17dbdd172e4e4d31682f",
  "source": {
    "blob": "c30244dc17291af4c94971f159a59acefacb0d06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 181,
    "path": "GRWTSK/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcec17dbdd172e4e4d31682f37ae210b1a3ebf645739428e376ce32f646b32f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21f92c1a-1633-9ddc-59bd-40a091b95fe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernsteinApproximation_uniform [LocallyConvexSpace ℝ E] (f : C(I, E)) :
    Tendsto (fun n : ℕ => bernsteinApproximation n f) atTop (𝓝 f) := by
  letI : UniformSpace E := IsTopologicalAddGroup.toUniformSpace E
  have : IsUniformAddGroup E := isUniformAddGroup_of_addCommGroup
  /- Topology on a locally convex TVS is given by a family of seminorms `‖x‖_U = gauge U x`,
  where the open symmetric convex sets `U` form a basis of neighborhoods in this topology,
  and are the open unit balls for the corresponding seminorms.
  For technical reasons, we neither assume `U`s to be open, nor symmetric. -/
  suffices ∀ U ∈ 𝓝 (0 : E), Convex ℝ U →
      ∀ᶠ n in atTop, ∀ x : I, gauge U (bernsteinApproximation n f x - f x) < 1 by
    rw [(LocallyConvexSpace.convex_basis_zero ℝ E).uniformity_of_nhds_zero_swapped
      |>.compactConvergenceUniformity_of_compact |> nhds_basis_uniformity |>.tendsto_right_iff]
    rintro U ⟨hU₀, hcU⟩
    filter_upwards [this U hU₀ hcU] with n hn x
    exact gauge_lt_one_subset_self hcU (mem_of_mem_nhds hU₀) (absorbent_nhds_zero hU₀) (hn x)
  intro U hU₀ hUc
  /- Choose a constant `C` such that `‖f x - f y‖_U ≤ C` for all `x`, `y`.
  For a normed space, this would be twice the norm of `f`. -/
  obtain ⟨C, hC⟩ : ∃ C, ∀ x y, gauge U (f x - f y) ≤ C := by
    have : Continuous fun (x, y) ↦ gauge U (f x - f y) := by fun_prop (disch := assumption)
    simpa only [BddAbove, Set.Nonempty, mem_upperBounds, Set.forall_mem_range, Prod.forall]
      using isCompact_range this |>.bddAbove
  have hC₀ : 0 ≤ C := le_trans (gauge_nonneg _) (hC 0 0)
  /- Use uniform continuity of `f` to hcoose `δ > 0` such that `‖f x - f y‖_U < 1 / 2`
  whenever `dist x y < δ`. -/
  obtain ⟨δ, hδ₀, hδ⟩ : ∃ δ > 0, ∀ x y : I, dist x y < δ → gauge U (f x - f y) < 1 / 2 := by
    have := CompactSpace.uniformContinuous_of_continuous (map_continuous f)
    rw [Metric.uniformity_basis_dist.uniformContinuous_iff
      (basis_sets _).uniformity_of_nhds_zero_swapped] at this
    exact this {z | gauge U z < 1 / 2} <| tendsto_gauge_nhds_zero hU₀
      |>.eventually_lt_const <| by positivity
  -- Take `n ≠ 0` such that `C / δ ^ 2 / n < 1 / 2`.
  have nhds_zero := tendsto_const_div_atTop_nhds_zero_nat (C / δ ^ 2)
  filter_upwards [nhds_zero.eventually_lt_const (half_pos one_pos), eventually_ne_atTop 0]
    with n nh hn₀ x
  -- The idea is to split up the sum over `k` into two sets,
  -- `S`, where `x - k/n < δ`, and its complement.
  set S : Finset (Fin (n + 1)) := {k : Fin (n + 1) | dist k/ₙ x < δ}
  calc
    gauge U (bernsteinApproximation n f x - f x)
      = gauge U (∑ k : Fin (n + 1), bernstein n k x • (f k/ₙ - f x)) := by
      simp [bernsteinApproximation.apply, smul_sub, ← Finset.sum_smul]
    _ ≤ ∑ k : Fin (n + 1), gauge U (bernstein n k x • (f k/ₙ - f x)) :=
      gauge_sum_le hUc (absorbent_nhds_zero hU₀) _ _
    _ = ∑ k : Fin (n + 1), bernstein n k x * gauge U (f k/ₙ - f x) := by
      simp only [gauge_smul_of_nonneg, bernstein_nonneg, smul_eq_mul]
    _ = (∑ k ∈ S, bernstein n k x * gauge U (f k/ₙ - f x)) +
          ∑ k ∈ Sᶜ, bernstein n k x * gauge U (f k/ₙ - f x) :=
      (S.sum_add_sum_compl _).symm
    -- We'll now deal with the terms in `S` and the terms in `Sᶜ` in separate calc blocks.
    _ < 1 / 2 + 1 / 2 := add_lt_add_of_le_of_lt ?_ ?_
    _ = 1 := add_halves 1
  · -- We now work on the terms in `S`: uniform continuity and `bernstein.probability`
    -- quickly give us a bound.
    calc
      ∑ k ∈ S, bernstein n k x * gauge U (f k/ₙ - f x) ≤ ∑ k ∈ S, bernstein n k x * (1 / 2) := by
        gcongr with k hk
        refine (hδ _ _ ?_).le
        simpa [S] using hk
      _ = 1 / 2 * ∑ k ∈ S, bernstein n k x := by rw [mul_comm, Finset.sum_mul]
      -- In this step we increase the sum over `S` back to a sum over all of `Fin (n+1)`,
      -- so that we can use `bernstein.probability`.
      _ ≤ 1 / 2 * ∑ k : Fin (n + 1), bernstein n k x := by gcongr; exact S.subset_univ
      _ = 1 / 2 := by rw [bernstein.probability, mul_one]
  · -- We now turn to working on `Sᶜ`: we control the difference term just using `C`,
    -- and then insert a `(x - k/n)^2 / δ^2` factor
    -- (which is at least one because we are not in `S`).
    calc
      ∑ k ∈ Sᶜ, bernstein n k x * gauge U (f k/ₙ - f x) ≤ ∑ k ∈ Sᶜ, C * bernstein n k x := by
        simp only [mul_comm (bernstein n _ x)]
        gcongr
        apply hC
      _ = C * ∑ k ∈ Sᶜ, bernstein n k x := by rw [Finset.mul_sum]
      _ ≤ C * ∑ k ∈ Sᶜ, ((x : ℝ) - k/ₙ) ^ 2 / δ ^ 2 * bernstein n k x := by
        gcongr with k hk
        conv_lhs => rw [← one_mul (bernstein _ _ _)]
        gcongr
        simpa [one_le_div₀, hδ₀, sq_le_sq, S, abs_of_pos, ← Real.dist_eq, dist_comm (x : ℝ)]
          using hk
      -- Again enlarging the sum from `Sᶜ` to all of `Fin (n+1)`
      _ ≤ C * ∑ k : Fin (n + 1), ((x : ℝ) - k/ₙ) ^ 2 / δ ^ 2 * bernstein n k x := by
        gcongr; exact Sᶜ.subset_univ
      _ = C * (∑ k : Fin (n + 1), ((x : ℝ) - k/ₙ) ^ 2 * bernstein n k x) / δ ^ 2 := by
        simp only [← mul_div_right_comm, ← mul_div_assoc, ← Finset.sum_div]
      -- `bernstein.variance` and `x ∈ [0,1]` gives the uniform bound
      _ = C / δ ^ 2 * x * (1 - x) / n := by rw [variance hn₀]; ring
      _ ≤ C / δ ^ 2 * 1 * 1 / n := by gcongr <;> unit_interval
      _ < 1 / 2 := by simpa only [mul_one]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c30244dc17291af4c94971f159a59acefacb0d06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
