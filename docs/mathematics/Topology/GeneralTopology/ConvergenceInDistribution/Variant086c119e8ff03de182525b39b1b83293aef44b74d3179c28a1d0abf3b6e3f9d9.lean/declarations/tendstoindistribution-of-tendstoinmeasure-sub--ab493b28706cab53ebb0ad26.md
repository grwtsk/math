# tendstoInDistribution_of_tendstoInMeasure_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:314bef1b-aea8-0a79-253e-f1cfed339d17",
  "kind": "lemma",
  "lexical_name": "tendstoInDistribution_of_tendstoInMeasure_sub",
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
  "slug": "tendstoindistribution-of-tendstoinmeasure-sub--ab493b28706cab53ebb0ad26",
  "source": {
    "blob": "a1d2e9c667e753dfbcc5ade3cb0276aa30808ded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 200,
    "path": "GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab493b28706cab53ebb0ad26b4c779f15d171889d8aeccda32767df8dbfef865",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:314bef1b-aea8-0a79-253e-f1cfed339d17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendstoInDistribution_of_tendstoInMeasure_sub {X : ι → Ω'' → E}
    [l.IsCountablyGenerated] (Y : ι → Ω'' → E) (Z : Ω' → E)
    (hXZ : TendstoInDistribution X l Z (fun _ ↦ μ'') μ') (hXY : TendstoInMeasure μ'' (Y - X) l 0)
    (hY : ∀ i, AEMeasurable (Y i) μ'') :
    TendstoInDistribution Y l Z (fun _ ↦ μ'') μ' := by
  have hZ : AEMeasurable Z μ' := hXZ.aemeasurable_limit
  have hX : ∀ i, AEMeasurable (X i) μ'' := hXZ.forall_aemeasurable
  rcases isEmpty_or_nonempty E with hE | hE
  · simp
  let x₀ : E := hE.some
  refine ⟨hY, hZ, ?_⟩
  -- We show convergence in distribution by verifying the convergence of integrals of any bounded
  -- Lipschitz function `F`
  suffices ∀ (F : E → ℝ) (hF_bounded : ∃ (C : ℝ), ∀ x y, dist (F x) (F y) ≤ C)
      (hF_lip : ∃ L, LipschitzWith L F),
      Tendsto (fun n ↦ ∫ ω, F ω ∂(μ''.map (Y n))) l (𝓝 (∫ ω, F ω ∂(μ'.map Z))) by
    rwa [tendsto_iff_forall_lipschitz_integral_tendsto]
  rintro F ⟨M, hF_bounded⟩ ⟨L, hF_lip⟩
  have hF_cont : Continuous F := hF_lip.continuous
  -- If `F` is 0-Lipschitz, then it is constant, and all integrals are equal to that constant
  obtain rfl | hL := eq_zero_or_pos L
  · simp only [LipschitzWith.zero_iff] at hF_lip
    specialize hF_lip x₀
    simp only [← hF_lip, integral_const, smul_eq_mul]
    simpa using! tendsto_const_nhds
  -- now `F` is `L`-Lipschitz with `L > 0`
  simp_rw [Metric.tendsto_nhds, Real.dist_eq]
  suffices ∀ ε > 0, ∀ᶠ n in l, |∫ ω, F ω ∂(μ''.map (Y n)) - ∫ ω, F ω ∂(μ'.map Z)| < L * ε by
    intro ε hε
    convert! this (ε / L) (by positivity)
    field_simp
  intro ε hε
  -- We cut the difference into three pieces, two of which are small by the convergence assumptions
  have h_le n : |∫ ω, F ω ∂(μ''.map (Y n)) - ∫ ω, F ω ∂(μ'.map Z)|
      ≤ L * (ε / 2) + M * μ''.real {ω | ε / 2 ≤ ‖Y n ω - X n ω‖}
        + |∫ ω, F ω ∂(μ''.map (X n)) - ∫ ω, F ω ∂(μ'.map Z)| := by
    refine (abs_sub_le (∫ ω, F ω ∂(μ''.map (Y n))) (∫ ω, F ω ∂(μ''.map (X n)))
      (∫ ω, F ω ∂(μ'.map Z))).trans ?_
    gcongr
    -- `⊢ |∫ ω, F ω ∂(μ.map (Y n)) - ∫ ω, F ω ∂(μ.map (X n))|`
    -- `    ≤ L * (ε / 2) + M * μ.real {ω | ε / 2 ≤ ‖Y n ω - X n ω‖}`
    -- We prove integrability of the functions involved to be able to manipulate the integrals.
    have h_int_Y : Integrable (fun x ↦ F (Y n x)) μ'' := by
      refine Integrable.of_bound (by fun_prop) (‖F x₀‖ + M) (ae_of_all _ fun a ↦ ?_)
      specialize hF_bounded (Y n a) x₀
      rw [← sub_le_iff_le_add']
      exact (abs_sub_abs_le_abs_sub (F (Y n a)) (F x₀)).trans hF_bounded
    have h_int_X : Integrable (fun x ↦ F (X n x)) μ'' := by
      refine Integrable.of_bound (by fun_prop) (‖F x₀‖ + M) (ae_of_all _ fun a ↦ ?_)
      specialize hF_bounded (X n a) x₀
      rw [← sub_le_iff_le_add']
      exact (abs_sub_abs_le_abs_sub (F (X n a)) (F x₀)).trans hF_bounded
    have h_int_sub : Integrable (fun a ↦ ‖F (Y n a) - F (X n a)‖) μ'' := by
      rw [integrable_norm_iff (by fun_prop)]
      exact h_int_Y.sub h_int_X
    -- Now we prove the inequality
    rw [integral_map (by fun_prop) (by fun_prop), integral_map (by fun_prop) (by fun_prop),
      ← integral_sub h_int_Y h_int_X, ← Real.norm_eq_abs]
    calc ‖∫ a, F (Y n a) - F (X n a) ∂μ''‖
    _ ≤ ∫ a, ‖F (Y n a) - F (X n a)‖ ∂μ'' := norm_integral_le_integral_norm _
    -- Either `‖Y n x - X n x‖` is smaller than `ε / 2`, or it is not
    _ = ∫ a in {x | ‖Y n x - X n x‖ < ε / 2}, ‖F (Y n a) - F (X n a)‖ ∂μ''
        + ∫ a in {x | ε / 2 ≤ ‖Y n x - X n x‖}, ‖F (Y n a) - F (X n a)‖ ∂μ'' := by
      symm
      simp_rw [← not_lt]
      refine integral_add_compl₀ ?_ h_int_sub
      exact nullMeasurableSet_lt (by fun_prop) (by fun_prop)
    -- If it is smaller, we use the Lipschitz property of `F`
    -- If not, we use the boundedness of `F`.
    _ ≤ ∫ a in {x | ‖Y n x - X n x‖ < ε / 2}, L * (ε / 2) ∂μ''
        + ∫ a in {x | ε / 2 ≤ ‖Y n x - X n x‖}, M ∂μ'' := by
      gcongr ?_ + ?_
      · refine setIntegral_mono_on₀ h_int_sub.integrableOn integrableOn_const ?_ ?_
        · exact nullMeasurableSet_lt (by fun_prop) (by fun_prop)
        · exact fun x hx ↦ hF_lip.norm_sub_le_of_le hx.le
      · refine setIntegral_mono h_int_sub.integrableOn integrableOn_const fun a ↦ ?_
        rw [← dist_eq_norm]
        convert!
          hF_bounded _
            _
              -- The goal is now a simple computation

    -- The goal is now a simple computation
    _ = L * (ε / 2) * μ''.real {x | ‖Y n x - X n x‖ < ε / 2}
        + M * μ''.real {ω | ε / 2 ≤ ‖Y n ω - X n ω‖} := by
      simp only [integral_const, MeasurableSet.univ, measureReal_restrict_apply, Set.univ_inter,
        smul_eq_mul]
      ring
    _ ≤ L * (ε / 2) + M * μ''.real {ω | ε / 2 ≤ ‖Y n ω - X n ω‖} := by
      rw [mul_assoc]
      gcongr
      grw [measureReal_le_one, mul_one]
  -- We finally show that the right-hand side tends to `L * ε / 2`, which is smaller than `L * ε`
  have h_tendsto :
      Tendsto (fun n ↦ L * (ε / 2) + M * μ''.real {ω | ε / 2 ≤ ‖Y n ω - X n ω‖}
        + |∫ ω, F ω ∂(μ''.map (X n)) - ∫ ω, F ω ∂(μ'.map Z)|) l (𝓝 (L * ε / 2)) := by
    suffices Tendsto (fun n ↦ L * (ε / 2) + M * μ''.real {ω | ε / 2 ≤ ‖Y n ω - X n ω‖}
        + |∫ ω, F ω ∂(μ''.map (X n)) - ∫ ω, F ω ∂(μ'.map Z)|) l (𝓝 (L * ε / 2 + M * 0 + 0)) by
      simpa
    refine (Tendsto.add ?_ (Tendsto.const_mul _ ?_)).add ?_
    · rw [mul_div_assoc]
      exact tendsto_const_nhds
    · simp only [tendstoInMeasure_iff_measureReal_norm, Pi.zero_apply, sub_zero] at hXY
      exact hXY (ε / 2) (by positivity)
    · replace hXZ := hXZ.tendsto
      simp_rw [tendsto_iff_forall_lipschitz_integral_tendsto] at hXZ
      simpa [tendsto_iff_dist_tendsto_zero] using! hXZ F ⟨M, hF_bounded⟩ ⟨L, hF_lip⟩
  have h_lt : L * ε / 2 < L * ε := half_lt_self (by positivity)
  filter_upwards [h_tendsto.eventually_lt_const h_lt] with n hn using (h_le n).trans_lt hn

/-- Convergence in probability (`TendstoInMeasure`) implies convergence in distribution
(`TendstoInDistribution`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1d2e9c667e753dfbcc5ade3cb0276aa30808ded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
