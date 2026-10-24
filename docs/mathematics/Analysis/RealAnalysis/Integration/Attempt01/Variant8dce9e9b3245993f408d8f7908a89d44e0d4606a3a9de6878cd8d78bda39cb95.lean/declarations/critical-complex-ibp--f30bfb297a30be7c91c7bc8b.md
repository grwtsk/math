# critical_complex_ibp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97d9ff7c-15b7-864f-7680-05fea617a632",
  "kind": "theorem",
  "lexical_name": "critical_complex_ibp",
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
  "slug": "critical-complex-ibp--f30bfb297a30be7c91c7bc8b",
  "source": {
    "blob": "5436f7e84dd9a781a2135757f711d7d4ddb6ecd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f30bfb297a30be7c91c7bc8b07be4b955bde32ec81fd7161639e52ef5bb89727",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97d9ff7c-15b7-864f-7680-05fea617a632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_complex_ibp {A : ℝ} (hA : 1 ≤ A) (lambda : ℂ) :
    (∫ t in -(2*A)..2*A, Complex.exp (lambda*(t : ℂ))*
      (deriv (criticalPrimeTest A) t : ℂ)) =
      -lambda * normalizedTransform A (lambda+1/2)^2 := by
  have hp : 0 < A := by linarith
  have hc := criticalPrimeTest_contDiff A hp
  have hu : Continuous (fun t : ℝ => Complex.exp (lambda*(t : ℂ))) := by fun_prop
  have hv : Continuous (fun t : ℝ => (criticalPrimeTest A t : ℂ)) := by fun_prop
  have hdu : Continuous (fun t : ℝ => lambda*Complex.exp (lambda*(t : ℂ))) := by fun_prop
  have hdv : Continuous (fun t : ℝ => (deriv (criticalPrimeTest A) t : ℂ)) := by
    fun_prop
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => Complex.exp (lambda*(t : ℂ)))
    (u' := fun t : ℝ => lambda*Complex.exp (lambda*(t : ℂ)))
    (v := fun t : ℝ => (criticalPrimeTest A t : ℂ))
    (v' := fun t : ℝ => (deriv (criticalPrimeTest A) t : ℂ))
    (a := -(2*A)) (b := 2*A)
    (fun t _ => by
      have h := (((hasDerivAt_id (t : ℂ)).const_mul lambda).comp_ofReal).cexp
      simpa only [mul_comm] using h)
    (fun t _ => (hc.differentiable (by norm_num) t).hasDerivAt.ofReal_comp)
    (hdu.intervalIntegrable _ _) (hdv.intervalIntegrable _ _)
  have hupp := criticalPrimeTest_at_upper A hp
  have hlow : criticalPrimeTest A (-(2*A)) = 0 := by
    rw [criticalPrimeTest,sourceCorrelation_eq_zero_of_two_mul_le_abs A (-(2*A)) hp]
    · simp
    · rw [abs_neg,abs_of_pos (by positivity : 0 < 2*A)]
  rw [hupp,hlow] at hibp
  simp only [Complex.ofReal_zero,mul_zero,sub_zero,zero_sub] at hibp
  rw [hibp,← intervalIntegral.integral_const_mul]
  have he (t : ℝ) : lambda*Complex.exp (lambda*(t : ℂ))*(criticalPrimeTest A t : ℂ) =
      lambda*((sourceCorrelation explicitSecondDerivative A t : ℂ)*
        Complex.exp ((lambda+1/2)*(t : ℂ))) := by
    unfold criticalPrimeTest
    push_cast
    rw [Complex.ofReal_exp,← Complex.exp_add]
    ring_nf
  simp_rw [he]
  rw [intervalIntegral.integral_const_mul,interval_complex_correlation_square hA]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5436f7e84dd9a781a2135757f711d7d4ddb6ecd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
