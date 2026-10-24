# muq_deriv_bound_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fafd80e4-298f-351e-b8ec-2b259f39f2f7",
  "kind": "theorem",
  "lexical_name": "muq_deriv_bound_const",
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
  "slug": "muq-deriv-bound-const--b28ac173f0a194067e8808d1",
  "source": {
    "blob": "cf1486081a4e59a90670d111b5eeb029cba4094f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 243,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b28ac173f0a194067e8808d1ea188fb45a52e0705b1eeca2179e2e0045b3dfe6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fafd80e4-298f-351e-b8ec-2b259f39f2f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem muq_deriv_bound_const (hκ : κ ≤ 1) (τ : ℝ) (hτ : 1 ≤ |τ|) :
    |deriv (muq κ q) τ| ≤ (24 / Real.pi) / |τ| := by
  have hτ0 : (0 : ℝ) < |τ| := by linarith
  set zA : ℂ := ((absc κ : ℝ) : ℂ) + (Complex.I / 2) * (τ : ℂ) with hzA
  have hzA_eq : zA = ((absc κ : ℝ) : ℂ) + Complex.I * ((τ / 2 : ℝ) : ℂ) := by
    rw [hzA]
    push_cast
    ring
  have hmem : zA ∈ Complex.integerComplement := by
    rw [hzA_eq]
    exact arg_mem hκ (τ / 2)
  have hψd : DifferentiableAt ℂ Complex.digamma zA :=
    Zeta23.Stirling.differentiableAt_digamma hmem
  -- chain rule: μ has derivative (1/2π)·Re(ψ′(zA)·(I/2)) at τ
  have hginner : HasDerivAt (fun x : ℝ => ((absc κ : ℝ) : ℂ) + (Complex.I / 2) * (x : ℂ))
      (Complex.I / 2) τ := by
    have h1 : HasDerivAt (fun x : ℝ => ((x : ℝ) : ℂ)) 1 τ := Complex.ofRealCLM.hasDerivAt
    have h2 := (h1.const_mul (Complex.I / 2)).const_add (((absc κ : ℝ) : ℂ))
    simpa using h2
  have hcompd : HasDerivAt
      (fun x : ℝ => Complex.digamma (((absc κ : ℝ) : ℂ) + (Complex.I / 2) * (x : ℂ)))
      ((Complex.I / 2) • deriv Complex.digamma zA) τ := by
    have h3 := HasDerivAt.scomp τ hψd.hasDerivAt hginner
    exact h3
  have hre : HasDerivAt
      (fun x : ℝ => (Complex.digamma (((absc κ : ℝ) : ℂ) + (Complex.I / 2) * (x : ℂ))).re)
      (((Complex.I / 2) • deriv Complex.digamma zA).re) τ :=
    (Complex.reCLM.hasFDerivAt.comp_hasDerivAt τ hcompd)
  have hmuD : HasDerivAt (muq κ q)
      (1 / (2 * Real.pi) * (((Complex.I / 2) • deriv Complex.digamma zA).re)) τ := by
    have h4 := (hre.const_mul (1 / (2 * Real.pi))).add_const ((1 / (2 * Real.pi)) * Real.log (q / Real.pi))
    have h5 : muq κ q = fun x : ℝ =>
        1 / (2 * Real.pi) * (Complex.digamma (((absc κ : ℝ) : ℂ) + (Complex.I / 2) * (x : ℂ))).re
          + (1 / (2 * Real.pi)) * Real.log (q / Real.pi) := by
      funext x
      rw [muq_eq]
      congr 3
      push_cast; ring
    rw [h5]
    exact h4
  rw [hmuD.deriv]
  -- bound the derivative value by the trigamma tail
  have htri := Zeta23.Stirling.hasSum_trigamma hmem
  have hnorm_term : ∀ n : ℕ, ‖(1 : ℂ) / (zA + n) ^ 2‖
      = (((absc κ : ℝ) + n) ^ 2 + (τ / 2) ^ 2)⁻¹ := by
    intro n
    have hre2 : (zA + n).re = (absc κ : ℝ) + n := by
      rw [hzA_eq]
      simp
    have him2 : (zA + n).im = τ / 2 := by
      rw [hzA_eq]
      simp
    rw [norm_div, norm_one, norm_pow, one_div]
    congr 1
    rw [show ‖zA + (n : ℂ)‖ ^ 2 = Complex.normSq (zA + n) from Complex.sq_norm _,
      Complex.normSq_apply, hre2, him2]
    ring
  -- comparison with the quarter line: (a+n)² ≥ (1/4+n)²
  have hcmp : ∀ n : ℕ, (((absc κ : ℝ) + n) ^ 2 + (τ / 2) ^ 2)⁻¹
      ≤ (((1 / 4 : ℝ) + n) ^ 2 + (τ / 2) ^ 2)⁻¹ := by
    intro n
    have ha := quarter_le_absc κ
    rw [← one_div, ← one_div]
    apply one_div_le_one_div_of_le (by positivity)
    nlinarith [Nat.cast_nonneg (α := ℝ) n]
  have hsummable_a : Summable (fun n : ℕ => (((absc κ : ℝ) + n) ^ 2 + (τ / 2) ^ 2)⁻¹) :=
    Summable.of_nonneg_of_le (fun n => by positivity) hcmp (MuFields.summable_quarter_line (τ / 2))
  have hsummable_norm : Summable (fun n : ℕ => ‖(1 : ℂ) / (zA + n) ^ 2‖) := by
    refine hsummable_a.congr fun n => ?_
    exact (hnorm_term n).symm
  have hψ'bound : ‖deriv Complex.digamma zA‖ ≤ 24 / |τ| := by
    have h6 : deriv Complex.digamma zA = ∑' n : ℕ, (1 : ℂ) / (zA + n) ^ 2 := htri.tsum_eq.symm
    rw [h6]
    calc ‖∑' n : ℕ, (1 : ℂ) / (zA + n) ^ 2‖ ≤ ∑' n : ℕ, ‖(1 : ℂ) / (zA + n) ^ 2‖ :=
          norm_tsum_le_tsum_norm hsummable_norm
      _ = ∑' n : ℕ, (((absc κ : ℝ) + n) ^ 2 + (τ / 2) ^ 2)⁻¹ := by
          congr 1
          funext n
          exact hnorm_term n
      _ ≤ ∑' n : ℕ, (((1 / 4 : ℝ) + n) ^ 2 + (τ / 2) ^ 2)⁻¹ :=
          Summable.tsum_le_tsum hcmp hsummable_a (MuFields.summable_quarter_line (τ / 2))
      _ ≤ 12 / |τ / 2| := MuFields.trigamma_tail_le (by
          rw [abs_div]
          rw [show |(2 : ℝ)| = 2 by norm_num]
          linarith)
      _ = 24 / |τ| := by
          rw [abs_div, show |(2 : ℝ)| = 2 by norm_num]
          field_simp
          norm_num
  -- |Re((I/2)•ψ′)| ≤ ‖ψ′‖/2
  have hval : |(((Complex.I / 2) • deriv Complex.digamma zA).re)|
      ≤ ‖deriv Complex.digamma zA‖ / 2 := by
    calc |(((Complex.I / 2) • deriv Complex.digamma zA).re)|
        ≤ ‖(Complex.I / 2) • deriv Complex.digamma zA‖ := Complex.abs_re_le_norm _
      _ = ‖Complex.I / 2‖ * ‖deriv Complex.digamma zA‖ := norm_smul _ _
      _ = ‖deriv Complex.digamma zA‖ / 2 := by
          rw [norm_div, Complex.norm_I]
          rw [show ‖(2 : ℂ)‖ = 2 from by
            rw [show (2 : ℂ) = ((2 : ℝ) : ℂ) by norm_num, Complex.norm_real,
              Real.norm_eq_abs, abs_of_pos (by norm_num)]]
          ring
  have hπ : (0 : ℝ) < Real.pi := Real.pi_pos
  rw [abs_mul, abs_of_nonneg (by positivity : (0 : ℝ) ≤ 1 / (2 * Real.pi))]
  calc 1 / (2 * Real.pi) * |(((Complex.I / 2) • deriv Complex.digamma zA).re)|
      ≤ 1 / (2 * Real.pi) * (‖deriv Complex.digamma zA‖ / 2) := by
        gcongr
    _ ≤ 1 / (2 * Real.pi) * ((24 / |τ|) / 2) := by
        gcongr
    _ ≤ (24 / Real.pi) / |τ| := by
        rw [div_div, div_mul_eq_mul_div, one_mul]
        rw [div_le_div_iff₀ (by positivity) (by positivity)]
        ring_nf
        have e1 : Real.pi * Real.pi⁻¹ = 1 := mul_inv_cancel₀ hπ.ne'
        have e2 : |τ| * |τ|⁻¹ = 1 := mul_inv_cancel₀ hτ0.ne'
        nlinarith [e1, e2]


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaFactsChiProof/Variant171aacd4dd9e84404d03fd6405d409ad51830b7975bec1b457e75c71cdf93253.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1486081a4e59a90670d111b5eeb029cba4094f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
