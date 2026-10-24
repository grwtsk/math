# actual_quadratic_derivative_background_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93c34f6a-0be0-4a17-d215-e1ea215fca8d",
  "kind": "theorem",
  "lexical_name": "actual_quadratic_derivative_background_zero",
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
  "slug": "actual-quadratic-derivative-background-zero--863a5ee0355237ce58d7da8c",
  "source": {
    "blob": "20cd0fb6a9cbcb5385757995f36ef86f587e0095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:863a5ee0355237ce58d7da8c23b1be455d19b3582e8ff2bb243da2e4181b9bd5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93c34f6a-0be0-4a17-d215-e1ea215fca8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_quadratic_derivative_background_zero {A : ℝ} (hA : 1 ≤ A)
    (a b c : ℝ) :
    (∫ t : ℝ, (a+b*t+c*t^2) * deriv (criticalPrimeTest A) t) = 0 := by
  have hp : 0 < A := by linarith
  have hf := criticalPrimeTest_contDiff A hp
  have hs : HasCompactSupport (criticalPrimeTest A) :=
    (sourceCorrelation_hasCompactSupport A hp).mul_left
  have hpcont : Continuous (fun t : ℝ => a+b*t+c*t^2) := by fun_prop
  have hdcont : Continuous (fun t : ℝ => b+2*c*t) := by fun_prop
  have hleft : Integrable (fun t : ℝ => (a+b*t+c*t^2)*deriv (criticalPrimeTest A) t) :=
    (hpcont.mul hf.continuous_deriv_one).integrable_of_hasCompactSupport hs.deriv.mul_left
  have hright : Integrable (fun t : ℝ => (b+2*c*t)*criticalPrimeTest A t) :=
    (hdcont.mul hf.continuous).integrable_of_hasCompactSupport hs.mul_left
  have hprod : Integrable (fun t : ℝ => (a+b*t+c*t^2)*criticalPrimeTest A t) :=
    (hpcont.mul hf.continuous).integrable_of_hasCompactSupport hs.mul_left
  have hibp := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun t : ℝ => a+b*t+c*t^2) (u' := fun t : ℝ => b+2*c*t)
    (v := criticalPrimeTest A) (v' := deriv (criticalPrimeTest A))
    (fun t _ => by
      have hd := ((hasDerivAt_const t a).add ((hasDerivAt_id t).const_mul b)).add
        (((hasDerivAt_id t).pow 2).const_mul c)
      change HasDerivAt (fun x : ℝ => a+b*x+c*x^2)
        (0+b*1+c*((2 : ℝ)*t^(2-1)*1)) t at hd
      exact hd.congr_deriv (by
        simp only [Nat.reduceSub, pow_one, zero_add, mul_one]
        ring))
    (fun t _ => (hf.differentiable (by norm_num) t).hasDerivAt)
    hleft hright hprod
  have hzero : (∫ t : ℝ, criticalPrimeTest A t) = 0 := by
    have hz := full_correlation_moment_zero A hA
    have he (t : ℝ) : (1/2 : ℝ)*t=t/2 := by ring
    simpa only [criticalPrimeTest, he] using hz
  have hone : (∫ t : ℝ, t*criticalPrimeTest A t) = 0 := by
    simpa only [criticalPrimeTest, mul_assoc] using actual_first_pole_moment_zero hA
  have hi0 : Integrable (criticalPrimeTest A) :=
    hf.continuous.integrable_of_hasCompactSupport hs
  have hi1 : Integrable (fun t : ℝ => t*criticalPrimeTest A t) :=
    (continuous_id.mul hf.continuous).integrable_of_hasCompactSupport hs.mul_left
  have hr : (∫ t : ℝ, (b+2*c*t)*criticalPrimeTest A t) = 0 := by
    have he (t : ℝ) : (b+2*c*t)*criticalPrimeTest A t =
        b*criticalPrimeTest A t+(2*c)*(t*criticalPrimeTest A t) := by ring
    simp_rw [he]
    rw [integral_add (hi0.const_mul b) (hi1.const_mul (2*c)),
      integral_const_mul, integral_const_mul, hzero, hone]
    ring
  simpa only [Pi.mul_apply, hr, neg_zero] using hibp

/-- The actual boundary derivative with its original normalization and reflected lag. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20cd0fb6a9cbcb5385757995f36ef86f587e0095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
