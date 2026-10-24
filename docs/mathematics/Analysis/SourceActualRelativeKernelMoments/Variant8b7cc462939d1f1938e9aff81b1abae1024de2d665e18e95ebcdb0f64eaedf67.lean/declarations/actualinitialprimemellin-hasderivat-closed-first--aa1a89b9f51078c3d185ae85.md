# actualInitialPrimeMellin_hasDerivAt_closed_first

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50f3e004-dc13-d66f-c4ab-913325fce988",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeMellin_hasDerivAt_closed_first",
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
  "slug": "actualinitialprimemellin-hasderivat-closed-first--aa1a89b9f51078c3d185ae85",
  "source": {
    "blob": "7ebb30d7bf11271cbcfdf8319c80fc05b3f07f79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 41,
    "path": "GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant8b7cc462939d1f1938e9aff81b1abae1024de2d665e18e95ebcdb0f64eaedf67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa1a89b9f51078c3d185ae85b724766bde120c70baf5b0316c3f07b59e7f38c8",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualRelativeKernelMoments/Variant8b7cc462939d1f1938e9aff81b1abae1024de2d665e18e95ebcdb0f64eaedf67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50f3e004-dc13-d66f-c4ab-913325fce988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeMellin_hasDerivAt_closed_first {A : ℝ} (hA : 1 ≤ A) :
    HasDerivAt (actualInitialPrimeMellin A)
      (∫ t in Icc (-(2*A)) (2*A),
        (sourceCorrelation explicitSecondDerivative A t : ℂ) *
          Complex.exp ((t:ℂ)/2) * (t:ℂ)) 1 := by
  let μ := volume.restrict (Icc (-(2*A)) (2*A))
  let F : ℂ → ℝ → ℂ := fun s t =>
    (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp ((s-1/2)*(t:ℂ))
  let F' : ℂ → ℝ → ℂ := fun s t => F s t * (t:ℂ)
  have hc : Continuous (sourceCorrelation explicitSecondDerivative A) :=
    (sourceCorrelation_contDiff A (by linarith)).continuous
  have hfc (s : ℂ) : Continuous (F s) := by dsimp [F]; fun_prop
  have hpc (s : ℂ) : Continuous (F' s) := by dsimp [F', F]; fun_prop
  have hmeas : ∀ᶠ s in 𝓝 (1:ℂ), AEStronglyMeasurable (F s) μ :=
    Filter.Eventually.of_forall fun s => (hfc s).aestronglyMeasurable
  have hi : Integrable (F 1) μ := (hfc 1).integrableOn_Icc
  have hip : AEStronglyMeasurable (F' 1) μ := (hpc 1).aestronglyMeasurable
  have hib : Integrable (fun _ : ℝ => 2*A*Real.exp (3*A)) μ :=
    continuous_const.integrableOn_Icc
  have hb : ∀ᵐ t ∂μ, ∀ s ∈ Metric.ball (1:ℂ) 1,
      ‖F' s t‖ ≤ 2*A*Real.exp (3*A) := by
    filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht s hs
    have htabs : |t| ≤ 2*A := abs_le.mpr ht
    have hsabs : |s.re-1| ≤ 1 := by
      have hh := Complex.abs_re_le_norm (s-1)
      rw [Metric.mem_ball, dist_eq_norm] at hs
      simpa only [Complex.sub_re, Complex.one_re] using hh.trans hs.le
    have hsr : |s.re-1/2| ≤ (3/2:ℝ) := by
      apply abs_le.mpr
      have hh := abs_le.mp hsabs
      constructor <;> linarith
    have he : ((s-1/2)*(t:ℂ)).re ≤ 3*A := by
      have hmul : |(s.re-1/2)*t| ≤ (3/2:ℝ)*(2*A) := by
        rw [abs_mul]
        exact mul_le_mul hsr htabs (abs_nonneg _) (by norm_num)
      have hh := (le_abs_self ((s.re-1/2)*t)).trans hmul
      simp only [Complex.mul_re, Complex.sub_re, Complex.ofReal_re, Complex.ofReal_im,
        Complex.div_re, Complex.one_re, Complex.one_im, Complex.re_ofNat,
        Complex.im_ofNat, mul_zero, sub_zero] 
      norm_num at *
      linarith
    dsimp [F', F]
    simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp]
    calc
      _ ≤ (1:ℝ) * Real.exp (3*A) * (2*A) := by
        exact mul_le_mul
          (mul_le_mul (actual_correlation_abs_le_one A t hA)
            (Real.exp_le_exp.mpr he) (Real.exp_pos _).le (by norm_num))
          htabs (abs_nonneg _) (by positivity)
      _ = _ := by ring
  have hd : ∀ᵐ t ∂μ, ∀ s ∈ Metric.ball (1:ℂ) 1,
      HasDerivAt (fun s => F s t) (F' s t) s := by
    filter_upwards [] with t s _
    have hh := ((((hasDerivAt_id s).sub_const (1/2)).mul_const (t:ℂ)).cexp.const_mul
      (sourceCorrelation explicitSecondDerivative A t : ℂ))
    exact hh.congr_deriv (by dsimp [F', F]; ring)
  have hh := (hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (Metric.ball_mem_nhds (1:ℂ) (by norm_num : (0:ℝ)<1))
      hmeas hi hip hb hib hd).2
  have heq : (fun s => ∫ t, F s t ∂μ) = actualInitialPrimeMellin A :=
    funext fun s => (mellin_eq_closed A hA s).symm
  rw [heq] at hh
  apply hh.congr_deriv
  apply integral_congr_ae
  filter_upwards [] with t
  dsimp [F', F, μ]
  congr 2
  ring

/-- The ordinary squared source factor gives a zero full first moment at the pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceActualRelativeKernelMoments/Variant8b7cc462939d1f1938e9aff81b1abae1024de2d665e18e95ebcdb0f64eaedf67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant8b7cc462939d1f1938e9aff81b1abae1024de2d665e18e95ebcdb0f64eaedf67.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ebb30d7bf11271cbcfdf8319c80fc05b3f07f79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
