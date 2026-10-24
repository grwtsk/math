# D_subset_differentiable_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c092fc1-927d-c8f2-dcb7-c5ef36cab977",
  "kind": "theorem",
  "lexical_name": "D_subset_differentiable_set",
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
  "slug": "d-subset-differentiable-set--9369b01e0c4184b1f74a2e13",
  "source": {
    "blob": "ce9cb930538ae370bc57e7e93aada8057e5ba0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 222,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9369b01e0c4184b1f74a2e130dd8647607821a7c6f24dd16feebca57fbb38652",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c092fc1-927d-c8f2-dcb7-c5ef36cab977`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem D_subset_differentiable_set {K : Set (E →L[𝕜] F)} (hK : IsComplete K) :
    D f K ⊆ { x | DifferentiableAt 𝕜 f x ∧ fderiv 𝕜 f x ∈ K } := by
  have P : ∀ {n : ℕ}, (0 : ℝ) < (1 / 2) ^ n := fun {n} => pow_pos (by norm_num) n
  rcases NormedField.exists_one_lt_norm 𝕜 with ⟨c, hc⟩
  intro x hx
  have :
    ∀ e : ℕ, ∃ n : ℕ, ∀ p q, n ≤ p → n ≤ q →
      ∃ L ∈ K, x ∈ A f L ((1 / 2) ^ p) ((1 / 2) ^ e) ∩ A f L ((1 / 2) ^ q) ((1 / 2) ^ e) := by
    intro e
    have := mem_iInter.1 hx e
    rcases mem_iUnion.1 this with ⟨n, hn⟩
    refine ⟨n, fun p q hp hq => ?_⟩
    simp only [mem_iInter] at hn
    rcases mem_iUnion.1 (hn p hp q hq) with ⟨L, hL⟩
    exact ⟨L, exists_prop.mp <| mem_iUnion.1 hL⟩
  /- Recast the assumptions: for each `e`, there exist `n e` and linear maps `L e p q` in `K`
    such that, for `p, q ≥ n e`, then `f` is well approximated by `L e p q` at scale `2 ^ (-p)` and
    `2 ^ (-q)`, with an error `2 ^ (-e)`. -/
  choose! n L hn using this
  /- All the operators `L e p q` that show up are close to each other. To prove this, we argue
      that `L e p q` is close to `L e p r` (where `r` is large enough), as both approximate `f` at
      scale `2 ^(- p)`. And `L e p r` is close to `L e' p' r` as both approximate `f` at scale
      `2 ^ (- r)`. And `L e' p' r` is close to `L e' p' q'` as both approximate `f` at scale
      `2 ^ (- p')`. -/
  have M :
    ∀ e p q e' p' q',
      n e ≤ p →
        n e ≤ q →
          n e' ≤ p' → n e' ≤ q' → e ≤ e' → ‖L e p q - L e' p' q'‖ ≤ 12 * ‖c‖ * (1 / 2) ^ e := by
    intro e p q e' p' q' hp hq hp' hq' he'
    let r := max (n e) (n e')
    have I : ((1 : ℝ) / 2) ^ e' ≤ (1 / 2) ^ e :=
      pow_le_pow_of_le_one (by norm_num) (by norm_num) he'
    have J1 : ‖L e p q - L e p r‖ ≤ 4 * ‖c‖ * (1 / 2) ^ e := by
      have I1 : x ∈ A f (L e p q) ((1 / 2) ^ p) ((1 / 2) ^ e) := (hn e p q hp hq).2.1
      have I2 : x ∈ A f (L e p r) ((1 / 2) ^ p) ((1 / 2) ^ e) := (hn e p r hp (le_max_left _ _)).2.1
      exact norm_sub_le_of_mem_A hc P P I1 I2
    have J2 : ‖L e p r - L e' p' r‖ ≤ 4 * ‖c‖ * (1 / 2) ^ e := by
      have I1 : x ∈ A f (L e p r) ((1 / 2) ^ r) ((1 / 2) ^ e) := (hn e p r hp (le_max_left _ _)).2.2
      have I2 : x ∈ A f (L e' p' r) ((1 / 2) ^ r) ((1 / 2) ^ e') :=
        (hn e' p' r hp' (le_max_right _ _)).2.2
      exact norm_sub_le_of_mem_A hc P P I1 (A_mono _ _ I I2)
    have J3 : ‖L e' p' r - L e' p' q'‖ ≤ 4 * ‖c‖ * (1 / 2) ^ e := by
      have I1 : x ∈ A f (L e' p' r) ((1 / 2) ^ p') ((1 / 2) ^ e') :=
        (hn e' p' r hp' (le_max_right _ _)).2.1
      have I2 : x ∈ A f (L e' p' q') ((1 / 2) ^ p') ((1 / 2) ^ e') := (hn e' p' q' hp' hq').2.1
      exact norm_sub_le_of_mem_A hc P P (A_mono _ _ I I1) (A_mono _ _ I I2)
    calc
      ‖L e p q - L e' p' q'‖ =
          ‖L e p q - L e p r + (L e p r - L e' p' r) + (L e' p' r - L e' p' q')‖ := by
        congr 1; abel
      _ ≤ ‖L e p q - L e p r‖ + ‖L e p r - L e' p' r‖ + ‖L e' p' r - L e' p' q'‖ :=
        norm_add₃_le
      _ ≤ 4 * ‖c‖ * (1 / 2) ^ e + 4 * ‖c‖ * (1 / 2) ^ e + 4 * ‖c‖ * (1 / 2) ^ e := by gcongr
      _ = 12 * ‖c‖ * (1 / 2) ^ e := by ring
  /- For definiteness, use `L0 e = L e (n e) (n e)`, to have a single sequence. We claim that this
    is a Cauchy sequence. -/
  let L0 : ℕ → E →L[𝕜] F := fun e => L e (n e) (n e)
  have : CauchySeq L0 := by
    rw [Metric.cauchySeq_iff']
    intro ε εpos
    obtain ⟨e, he⟩ : ∃ e : ℕ, (1 / 2) ^ e < ε / (12 * ‖c‖) :=
      exists_pow_lt_of_lt_one (by positivity) (by norm_num)
    refine ⟨e, fun e' he' => ?_⟩
    rw [dist_comm, dist_eq_norm]
    calc
      ‖L0 e - L0 e'‖ ≤ 12 * ‖c‖ * (1 / 2) ^ e := M _ _ _ _ _ _ le_rfl le_rfl le_rfl le_rfl he'
      _ < 12 * ‖c‖ * (ε / (12 * ‖c‖)) := by gcongr
      _ = ε := by field
  -- As it is Cauchy, the sequence `L0` converges, to a limit `f'` in `K`.
  obtain ⟨f', f'K, hf'⟩ : ∃ f' ∈ K, Tendsto L0 atTop (𝓝 f') :=
    cauchySeq_tendsto_of_isComplete hK (fun e => (hn e (n e) (n e) le_rfl le_rfl).1) this
  have Lf' : ∀ e p, n e ≤ p → ‖L e (n e) p - f'‖ ≤ 12 * ‖c‖ * (1 / 2) ^ e := by
    intro e p hp
    apply le_of_tendsto (tendsto_const_nhds.sub hf').norm
    rw [eventually_atTop]
    exact ⟨e, fun e' he' => M _ _ _ _ _ _ le_rfl hp le_rfl le_rfl he'⟩
  -- Let us show that `f` has derivative `f'` at `x`.
  have : HasFDerivAt f f' x := by
    simp only [hasFDerivAt_iff_isLittleO_nhds_zero, isLittleO_iff]
    /- to get an approximation with a precision `ε`, we will replace `f` with `L e (n e) m` for
      some large enough `e` (yielding a small error by uniform approximation). As one can vary `m`,
      this makes it possible to cover all scales, and thus to obtain a good linear approximation in
      the whole ball of radius `(1/2)^(n e)`. -/
    intro ε εpos
    have pos : 0 < 4 + 12 * ‖c‖ := by positivity
    obtain ⟨e, he⟩ : ∃ e : ℕ, (1 / 2) ^ e < ε / (4 + 12 * ‖c‖) :=
      exists_pow_lt_of_lt_one (div_pos εpos pos) (by norm_num)
    rw [eventually_nhds_iff_ball]
    refine ⟨(1 / 2) ^ (n e + 1), P, fun y hy => ?_⟩
    -- We need to show that `f (x + y) - f x - f' y` is small. For this, we will work at scale
    -- `k` where `k` is chosen with `‖y‖ ∼ 2 ^ (-k)`.
    by_cases y_pos : y = 0
    · simp [y_pos]
    have yzero : 0 < ‖y‖ := norm_pos_iff.mpr y_pos
    have y_lt : ‖y‖ < (1 / 2) ^ (n e + 1) := by simpa using mem_ball_iff_norm.1 hy
    have yone : ‖y‖ ≤ 1 := le_trans y_lt.le (pow_le_one₀ (by norm_num) (by norm_num))
    -- define the scale `k`.
    obtain ⟨k, hk, h'k⟩ : ∃ k : ℕ, (1 / 2) ^ (k + 1) < ‖y‖ ∧ ‖y‖ ≤ (1 / 2) ^ k :=
      exists_nat_pow_near_of_lt_one yzero yone (by norm_num : (0 : ℝ) < 1 / 2)
        (by norm_num : (1 : ℝ) / 2 < 1)
    -- the scale is large enough (as `y` is small enough)
    have k_gt : n e < k := by
      have : ((1 : ℝ) / 2) ^ (k + 1) < (1 / 2) ^ (n e + 1) := lt_trans hk y_lt
      rw [pow_lt_pow_iff_right_of_lt_one₀ (by norm_num : (0 : ℝ) < 1 / 2) (by norm_num)] at this
      lia
    set m := k - 1
    have m_ge : n e ≤ m := Nat.le_sub_one_of_lt k_gt
    have km : k = m + 1 := (Nat.succ_pred_eq_of_pos k_gt.pos).symm
    rw [km] at hk h'k
    -- `f` is well approximated by `L e (n e) k` at the relevant scale
    -- (in fact, we use `m = k - 1` instead of `k` because of the precise definition of `A`).
    have J1 : ‖f (x + y) - f x - L e (n e) m (x + y - x)‖ ≤ (1 / 2) ^ e * (1 / 2) ^ m := by
      apply le_of_mem_A (hn e (n e) m le_rfl m_ge).2.2
      · simp only [mem_closedBall, dist_self]
        positivity
      · simpa only [dist_eq_norm, add_sub_cancel_left, mem_closedBall, pow_succ, mul_one_div] using
          h'k
    have J2 : ‖f (x + y) - f x - L e (n e) m y‖ ≤ 4 * (1 / 2) ^ e * ‖y‖ :=
      calc
        ‖f (x + y) - f x - L e (n e) m y‖ ≤ (1 / 2) ^ e * (1 / 2) ^ m := by
          simpa only [add_sub_cancel_left] using J1
        _ = 4 * (1 / 2) ^ e * (1 / 2) ^ (m + 2) := by ring
        _ ≤ 4 * (1 / 2) ^ e * ‖y‖ := by gcongr
    -- use the previous estimates to see that `f (x + y) - f x - f' y` is small.
    calc
      ‖f (x + y) - f x - f' y‖ = ‖f (x + y) - f x - L e (n e) m y + (L e (n e) m - f') y‖ :=
        congr_arg _ (by simp)
      _ ≤ 4 * (1 / 2) ^ e * ‖y‖ + 12 * ‖c‖ * (1 / 2) ^ e * ‖y‖ :=
        norm_add_le_of_le J2 <| (le_opNorm _ _).trans <| by gcongr; exact Lf' _ _ m_ge
      _ = (4 + 12 * ‖c‖) * ‖y‖ * (1 / 2) ^ e := by ring
      _ ≤ (4 + 12 * ‖c‖) * ‖y‖ * (ε / (4 + 12 * ‖c‖)) := by gcongr
      _ = ε * ‖y‖ := by field
  rw [← this.fderiv] at f'K
  exact ⟨this.differentiableAt, f'K⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantb9442669f62092386e22dfe1eb2488b92d8215f036b77113e1d1f47205f9e56b.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9cb930538ae370bc57e7e93aada8057e5ba0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
