# reflected_cubic_derivative_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85e0b195-4850-0960-f70f-def8410df314",
  "kind": "theorem",
  "lexical_name": "reflected_cubic_derivative_integral",
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
  "slug": "reflected-cubic-derivative-integral--4f718218dcf01a8cbe5774d4",
  "source": {
    "blob": "85a24a13dd9621f276084af7aa86983a570d4c90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 213,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic05/Varianteec63a63afbfd487280171ab0a837c07b6f4b5378f3ae69f312d42c901905924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f718218dcf01a8cbe5774d4d990cba3ed63444b733874a5fae18ae76b8d9467",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cubic05/Varianteec63a63afbfd487280171ab0a837c07b6f4b5378f3ae69f312d42c901905924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85e0b195-4850-0960-f70f-def8410df314`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflected_cubic_derivative_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ t : ℝ, (2*A-t)^3*deriv (criticalPrimeTest A) t) =
      6*primitivePoleMoment A^2 := by
  have hg := criticalPrimeTest_contDiff A (show 0 < A by linarith)
  have hs : HasCompactSupport (criticalPrimeTest A) :=
    (sourceCorrelation_hasCompactSupport A (by linarith)).mul_left
  have hi0 := hg.continuous.integrable_of_hasCompactSupport (μ := volume) hs
  have hi1 := (continuous_id.mul hg.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have hi2 := ((continuous_id.pow 2).mul hg.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have hip := ((show Continuous (fun t : ℝ => (2*A-t)^3) by fun_prop).mul hg.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have hid := ((show Continuous (fun t : ℝ => (2*A-t)^3) by fun_prop).mul hg.continuous_deriv_one).integrable_of_hasCompactSupport (μ := volume) hs.deriv.mul_left
  have him := ((show Continuous (fun t : ℝ => -3*(2*A-t)^2) by fun_prop).mul hg.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have h := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun t : ℝ => (2*A-t)^3) (u' := fun t : ℝ => -3*(2*A-t)^2)
    (v := criticalPrimeTest A) (v' := deriv (criticalPrimeTest A))
    (fun t _ => by
      have hh := ((hasDerivAt_const t (2*A)).sub (hasDerivAt_id t)).pow 3
      exact hh.congr_deriv (by dsimp; norm_num))
    (fun t _ => (hg.differentiable (by norm_num) t).hasDerivAt) hid him hip
  have he (t : ℝ) : -3*(2*A-t)^2*criticalPrimeTest A t =
      (-12*A^2)*criticalPrimeTest A t+(12*A)*(t*criticalPrimeTest A t)-
        3*(t^2*criticalPrimeTest A t) := by ring
  have hzero : (∫ t : ℝ, criticalPrimeTest A t)=0 := by
    simpa only [criticalPrimeTest,show ∀ t : ℝ, (1/2 : ℝ)*t=t/2 by intro t; ring]
      using full_correlation_moment_zero A hA
  have hone : (∫ t : ℝ, t*criticalPrimeTest A t)=0 := by
    simpa only [criticalPrimeTest,mul_assoc] using actual_first_pole_moment_zero hA
  simp only [he] at h
  have ha := integral_sub ((hi0.const_mul (-12*A^2)).add (hi1.const_mul (12*A))) (hi2.const_mul 3)
  have hb := integral_add (hi0.const_mul (-12*A^2)) (hi1.const_mul (12*A))
  simp only [Pi.add_apply,Pi.mul_apply,Pi.pow_apply,id_eq] at ha hb
  rw [ha,hb,integral_const_mul,
    integral_const_mul,integral_const_mul,hzero,hone,actual_second_correlation_pole_moment hA] at h
  simpa using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cubic05/Varianteec63a63afbfd487280171ab0a837c07b6f4b5378f3ae69f312d42c901905924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cubic05/Varianteec63a63afbfd487280171ab0a837c07b6f4b5378f3ae69f312d42c901905924.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85a24a13dd9621f276084af7aa86983a570d4c90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
