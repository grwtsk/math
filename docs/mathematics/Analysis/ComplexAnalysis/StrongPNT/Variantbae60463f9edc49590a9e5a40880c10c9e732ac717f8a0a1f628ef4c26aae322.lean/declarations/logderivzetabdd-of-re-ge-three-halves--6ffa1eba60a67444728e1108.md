# LogDerivZetaBdd_of_Re_ge_three_halves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15faf1a5-b13d-c0a7-29ae-301b1907d604",
  "kind": "lemma",
  "lexical_name": "LogDerivZetaBdd_of_Re_ge_three_halves",
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
  "slug": "logderivzetabdd-of-re-ge-three-halves--6ffa1eba60a67444728e1108",
  "source": {
    "blob": "febb261e8c76e0d4aec8c8de1ca02559ac821fcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1755,
    "line": 1673,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ffa1eba60a67444728e11089409451a3bc3f196424fc63100cc63067190bca3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15faf1a5-b13d-c0a7-29ae-301b1907d604`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1673–1755.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LogDerivZetaBdd_of_Re_ge_three_halves :
    ∃ C, ∀ (s : ℂ), 3/2 ≤ s.re → ‖deriv riemannZeta s / riemannZeta s‖ ≤ C := by
  have h_sum_converges : Summable (fun n : ℕ ↦ vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ)) := by
    have h_summable : Summable (fun n : ℕ ↦ (Real.log n : ℝ) / (n : ℝ) ^ (3 / 2 : ℝ)) := by
      obtain ⟨C, hC_pos, hC⟩ : ∃ C > 0, ∀ n : ℕ, n ≥ 2 → Real.log n ≤ C * (n : ℝ) ^ (1/4 : ℝ) := by
        use 4, by grind, fun n hn ↦ by
          have := Real.log_le_sub_one_of_pos (by positivity : 0 < (n : ℝ) ^ (1/4 : ℝ))
          rw [Real.log_rpow (by positivity)] at this
          nlinarith [Real.rpow_pos_of_pos (by positivity : 0 < (n : ℝ)) (1/4 : ℝ)]
      have hBound : ∀ n : ℕ, n ≥ 2 →
          (Real.log n : ℝ) / (n : ℝ) ^ (3 / 2 : ℝ) ≤ C / (n : ℝ) ^ (5 / 4 : ℝ) := fun n hn ↦ by
        rw [div_le_div_iff₀ (by positivity) (by positivity)]
        convert mul_le_mul_of_nonneg_right (hC n hn)
          (by positivity : 0 ≤ (n : ℝ) ^ (5 / 4 : ℝ)) using 1
        rw [mul_assoc, ← Real.rpow_add (by positivity)]
        grind
      rw [← summable_nat_add_iff 2]
      exact Summable.of_nonneg_of_le
        (fun n ↦ div_nonneg (Real.log_nonneg (by grind))
          (Real.rpow_nonneg (Nat.cast_nonneg _) _))
        (fun n ↦ hBound _ (by grind))
        (Summable.mul_left _ <| by simpa using summable_nat_add_iff 2 |>.2 <|
          Real.summable_one_div_nat_rpow.2 <| by grind)
    refine .of_nonneg_of_le (fun n ↦ ?_) (fun n ↦ ?_) h_summable
    · exact div_nonneg (by exact_mod_cast ArithmeticFunction.vonMangoldt_nonneg)
        (by positivity)
    · rcases eq_or_ne n 0 with (rfl | hn) <;>
        simp_all [ArithmeticFunction.vonMangoldt]
      field_simp
      split_ifs
      · exact Real.log_le_log (Nat.cast_pos.mpr (Nat.minFac_pos _))
          (Nat.cast_le.mpr (Nat.minFac_le (Nat.pos_of_ne_zero hn)))
      · exact Real.log_nonneg (Nat.one_le_cast.mpr (Nat.pos_of_ne_zero hn))
  have h_log_deriv_sum : ∀ s : ℂ, 3 / 2 ≤ s.re →
      deriv riemannZeta s / riemannZeta s = -∑' n : ℕ, (vonMangoldt n : ℂ) / (n : ℂ) ^ s := by
    intro s hs; have h := LogDerivativeDirichlet s (by grind); linear_combination -h
  have h_triangle : ∀ s : ℂ,
      ‖∑' n : ℕ, (vonMangoldt n : ℂ) / (n : ℂ) ^ s‖ ≤
        ∑' n : ℕ, ‖(vonMangoldt n : ℂ) / (n : ℂ) ^ s‖ := fun s ↦ by
    by_cases h : Summable fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ) / (n : ℂ) ^ s
    · exact norm_tsum_le_tsum_norm h.norm
    · simp only [tsum_eq_zero_of_not_summable h, norm_zero]
      exact tsum_nonneg fun _ ↦ by positivity
  have h_norm_summand : ∀ s : ℂ, 3 / 2 ≤ s.re → ∀ n : ℕ,
      ‖(vonMangoldt n : ℂ) / (n : ℂ) ^ s‖ ≤ (vonMangoldt n : ℝ) / (n : ℝ) ^ (3 / 2 : ℝ) := by
    intro s hs n
    by_cases hn : n = 0 <;> simp_all [Complex.norm_cpow_of_ne_zero]
    ring_nf; norm_num
    rw [abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
    exact mul_le_mul_of_nonneg_left (inv_anti₀ (by positivity)
      (Real.rpow_le_rpow_of_exponent_le (mod_cast Nat.one_le_iff_ne_zero.mpr hn) hs))
      ArithmeticFunction.vonMangoldt_nonneg
  refine ⟨∑' n : ℕ, (ArithmeticFunction.vonMangoldt n : ℝ) / (n : ℝ) ^ (3 / 2 : ℝ),
    fun s hs ↦ ?_⟩
  have hSum : Summable fun n ↦ ‖(vonMangoldt n : ℂ) / (n : ℂ) ^ s‖ :=
    Summable.of_nonneg_of_le (fun n ↦ by positivity)
      (fun n ↦ h_norm_summand s hs n) h_sum_converges
  simpa [neg_div, h_log_deriv_sum s hs] using (h_triangle s).trans
    (hSum.tsum_le_tsum (fun n ↦ h_norm_summand s hs n) h_sum_converges)

@[blueprint
  (title := "LogDerivZetaUniformLogSquaredBound")
  (statement := /--
    There exists a constant $F\in(0,1/2)$ such that for all $t\in\mathbb{R}$ with $|t|\geq 3$ one has
    $$1-\frac{F}{\log|t|}\leq\sigma\implies\left|\frac{\zeta'}{\zeta}(\sigma+it)\right|\ll\log^2|t|$$
    where the implied constant is uniform in $\sigma$.
  -/)
  (proof := /--
    Note that
    $$\left|\frac{\zeta'}{\zeta}(\sigma+it)\right|
      =\sum_{1\leq n}\frac{\Lambda(n)}{|n^{\sigma+it}|}=\sum_{1\leq n}\frac{\Lambda(n)}{n^\sigma}
      =-\frac{\zeta'}{\zeta}(\sigma)\leq\left|\frac{\zeta'}{\zeta}(\sigma)\right|.$$
    From Theorem \ref{riemannZetaLogDerivResidue}, and applying the triangle inequality we know that
    $$\left|\frac{\zeta'}{\zeta}(s)\right|\leq\frac{1}{|s-1|}+C.$$
    where $C>0$ is some constant. Thus, for $\sigma\geq 3/2$ we have that
    $$\left|\frac{\zeta'}{\zeta}(\sigma+it)\right|
      \leq\left|\frac{\zeta'}{\zeta}(\sigma)\right|
      \leq\frac{1}{\sigma-1}+C\leq 2+C\ll 1\ll\log^2|t|.$$
    Putting this together with Lemma \ref{LogDerivZetaUniformLogSquaredBoundStrip}
    completes the proof.
  -/)
  (proofUses := ["riemannZetaLogDerivResidue", "LogDerivZetaUniformLogSquaredBoundStrip"])
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean#L1673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `febb261e8c76e0d4aec8c8de1ca02559ac821fcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
