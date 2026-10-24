# actualLaplace_differentiableAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f023e061-1b23-b353-84b9-10851ef240fb",
  "kind": "theorem",
  "lexical_name": "actualLaplace_differentiableAt",
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
  "slug": "actuallaplace-differentiableat--5066bc86ce4b07e3ff81dd20",
  "source": {
    "blob": "5eca0fbd3b582fc115cf671631babc05f2f860dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 397,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialAudit/Variant5054f02c786f40ee0fc2a63d20718d937bf043cc493af4b43fb63a6492d2c138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5066bc86ce4b07e3ff81dd204e94a1bc57e71fdb8d88bddf87c97ea4d3ae81a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialAudit/Variant5054f02c786f40ee0fc2a63d20718d937bf043cc493af4b43fb63a6492d2c138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f023e061-1b23-b353-84b9-10851ef240fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLaplace_differentiableAt (z : ℂ) (hz : 0 < z.re) :
    DifferentiableAt ℂ actualLaplace z := by
  let a : ℝ := z.re / 2
  have ha : 0 < a := by dsimp [a]; linarith
  let F : ℂ → ℝ → ℂ := fun w t ↦
    (fixedKernel t : ℂ) * Complex.exp ((-w) * (t : ℂ))
  let F' : ℂ → ℝ → ℂ := fun w t ↦
    (fixedKernel t : ℂ) * (Complex.exp ((-w) * (t : ℂ)) * (-(t : ℂ)))
  have hmeas (w : ℂ) : AEStronglyMeasurable (F w) (volume.restrict (Ioi 0)) := by
    exact (fixedKernel_measurable.complex_ofReal.aestronglyMeasurable).mul
      (by fun_prop)
  have hdmeas : AEStronglyMeasurable (F' z) (volume.restrict (Ioi 0)) := by
    exact (fixedKernel_measurable.complex_ofReal.aestronglyMeasurable).mul
      (by fun_prop)
  have hbound : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ w ∈ {w : ℂ | a < w.re}, ‖F' w t‖ ≤ |fixedKernel t| / a := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    intro w hw
    have hexp : Real.exp (-w.re * t) ≤ Real.exp (-a * t) := by
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonneg_right (neg_le_neg hw.le) ht.le
    have hh : t * Real.exp (-w.re * t) ≤ 1 / a :=
      (mul_le_mul_of_nonneg_left hexp ht.le).trans (decay_derivative_bound a t ha)
    dsimp [F']
    rw [norm_mul, norm_mul, norm_neg, Complex.norm_real, Complex.norm_real,
      Real.norm_eq_abs, Real.norm_eq_abs, Complex.norm_exp]
    rw [show |t| = t from abs_of_pos ht]
    simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re,
      Complex.neg_im, Complex.ofReal_im, mul_zero, sub_zero]
    calc
      |fixedKernel t| * (Real.exp (-w.re * t) * t) =
          |fixedKernel t| * (t * Real.exp (-w.re * t)) := by ring
      _ ≤ |fixedKernel t| * (1 / a) := mul_le_mul_of_nonneg_left hh (abs_nonneg _)
      _ = _ := by ring
  have hbint : Integrable (fun t : ℝ ↦ |fixedKernel t| / a)
      (volume.restrict (Ioi 0)) :=
    FixedKernelAdmission.fixedKernel_integrableOn_Ioi.abs.div_const a
  have hdiff : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ w ∈ {w : ℂ | a < w.re}, HasDerivAt (F · t) (F' w t) w := by
    filter_upwards [] with t
    intro w _
    have h := (((hasDerivAt_id w).neg.mul_const (t : ℂ)).cexp).const_mul
      (fixedKernel t : ℂ)
    simpa only [Pi.neg_apply, id_eq, neg_mul, one_mul, F, F'] using h
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    ((isOpen_lt continuous_const Complex.continuous_re).mem_nhds
      (show a < z.re by dsimp [a]; linarith))
    (Eventually.of_forall hmeas) (fixedKernel_laplace_integrable z hz.le)
    hdmeas hbound hbint hdiff
  exact h.2.differentiableAt

/-- The exact source formula supplies differentiability away from its formula guard. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialAudit/Variant5054f02c786f40ee0fc2a63d20718d937bf043cc493af4b43fb63a6492d2c138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponentialAudit/Variant5054f02c786f40ee0fc2a63d20718d937bf043cc493af4b43fb63a6492d2c138.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eca0fbd3b582fc115cf671631babc05f2f860dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
