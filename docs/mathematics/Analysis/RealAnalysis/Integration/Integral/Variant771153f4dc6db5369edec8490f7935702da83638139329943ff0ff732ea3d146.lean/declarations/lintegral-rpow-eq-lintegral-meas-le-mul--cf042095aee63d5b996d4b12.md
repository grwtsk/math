# lintegral_rpow_eq_lintegral_meas_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84ca6d6a-c560-807f-15fd-a5f7fa78f5c5",
  "kind": "theorem",
  "lexical_name": "lintegral_rpow_eq_lintegral_meas_le_mul",
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
  "slug": "lintegral-rpow-eq-lintegral-meas-le-mul--cf042095aee63d5b996d4b12",
  "source": {
    "blob": "81f0ac5bcdaf15651d2f5c58f4ff2c950ec8fd98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant771153f4dc6db5369edec8490f7935702da83638139329943ff0ff732ea3d146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf042095aee63d5b996d4b129ed47e3b3e6f37b56351be3e3ffb22fd90987271",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant771153f4dc6db5369edec8490f7935702da83638139329943ff0ff732ea3d146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84ca6d6a-c560-807f-15fd-a5f7fa78f5c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_rpow_eq_lintegral_meas_le_mul
    {f : α → ℝ} (f_nn : 0 ≤ᵐ[μ] f) (f_mble : AEMeasurable f μ) {p : ℝ} (p_pos : 0 < p) :
    ∫⁻ ω, ENNReal.ofReal (f ω ^ p) ∂μ =
      ENNReal.ofReal p * ∫⁻ t in Ioi 0, μ {a : α | t ≤ f a} * ENNReal.ofReal (t ^ (p - 1)) := by
  have one_lt_p : -1 < p - 1 := by linarith
  have obs : ∀ x : ℝ, ∫ t : ℝ in (0)..x, t ^ (p - 1) = x ^ p / p := by
    intro x
    rw [integral_rpow (Or.inl one_lt_p)]
    simp [Real.zero_rpow p_pos.ne.symm]
  set g := fun t : ℝ => t ^ (p - 1)
  have g_nn : ∀ᵐ t ∂volume.restrict (Ioi (0 : ℝ)), 0 ≤ g t := by
    filter_upwards [self_mem_ae_restrict (measurableSet_Ioi : MeasurableSet (Ioi (0 : ℝ)))]
    intro t t_pos
    exact Real.rpow_nonneg (mem_Ioi.mp t_pos).le (p - 1)
  have g_intble (t) (ht : 0 < t) : IntervalIntegrable g volume 0 t :=
    intervalIntegral.intervalIntegrable_rpow' one_lt_p
  have key := lintegral_comp_eq_lintegral_meas_le_mul μ f_nn f_mble g_intble g_nn
  rw [← key, ← lintegral_const_mul'' (ENNReal.ofReal p)] <;> simp_rw [obs]
  · congr with ω
    rw [← ENNReal.ofReal_mul p_pos.le, mul_div_cancel₀ (f ω ^ p) p_pos.ne.symm]
  · have aux := (measurable_const (a := p)).aemeasurable (μ := μ)
    exact measurable_id.ennreal_ofReal.comp_aemeasurable <| (f_mble.pow aux).div_const p

end Layercake

section LayercakeLT

/-- An application of the layer cake formula / Cavalieri's principle / tail probability formula:

For a nonnegative function `f` on a measure space, the Lebesgue integral of `f` can
be written (roughly speaking) as: `∫⁻ f^p ∂μ = p * ∫⁻ t in 0..∞, t^(p-1) * μ {ω | f(ω) > t}`.

See `MeasureTheory.lintegral_rpow_eq_lintegral_meas_le_mul` for a version with sets of the form
`{ω | f(ω) ≥ t}` instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant771153f4dc6db5369edec8490f7935702da83638139329943ff0ff732ea3d146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant771153f4dc6db5369edec8490f7935702da83638139329943ff0ff732ea3d146.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f0ac5bcdaf15651d2f5c58f4ff2c950ec8fd98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
