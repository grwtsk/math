# hasFTaylorSeriesUpTo_fourierIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3206408e-a7d9-2500-91d3-2561ae10618d",
  "kind": "lemma",
  "lexical_name": "hasFTaylorSeriesUpTo_fourierIntegral",
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
  "slug": "hasftaylorseriesupto-fourierintegral--49bd76e2f4491f7eef96fafc",
  "source": {
    "blob": "9aaf9246a748d42ddbf7989048cd3267580295bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 455,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49bd76e2f4491f7eef96fafca33a2e3c480bca9a6c24c024a95c46ce858c77d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3206408e-a7d9-2500-91d3-2561ae10618d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasFTaylorSeriesUpTo_fourierIntegral {N : ℕ∞ω}
    (hf : ∀ (n : ℕ), n ≤ N → Integrable (fun v ↦ ‖v‖ ^ n * ‖f v‖) μ)
    (h'f : AEStronglyMeasurable f μ) :
    HasFTaylorSeriesUpTo N (fourierIntegral 𝐞 μ L.toLinearMap₁₂ f)
      (fun w n ↦ fourierIntegral 𝐞 μ L.toLinearMap₁₂ (fun v ↦ fourierPowSMulRight L f v n) w) := by
  constructor
  · intro w
    rw [curry0_apply, Matrix.zero_empty, fourierIntegral_continuousMultilinearMap_apply'
      (integrable_fourierPowSMulRight L (hf 0 bot_le) h'f)]
    simp only [fourierPowSMulRight_apply, pow_zero, Finset.univ_eq_empty, Finset.prod_empty,
      one_smul]
  · intro n hn w
    have I₁ : Integrable (fun v ↦ fourierPowSMulRight L f v n) μ :=
      integrable_fourierPowSMulRight L (hf n hn.le) h'f
    have I₂ : Integrable (fun v ↦ ‖v‖ * ‖fourierPowSMulRight L f v n‖) μ := by
      apply ((hf (n + 1) (ENat.add_one_natCast_le_withTop_of_lt hn)).const_mul
          ((2 * π * ‖L‖) ^ n)).mono'
        (continuous_norm.aestronglyMeasurable.mul (h'f.fourierPowSMulRight L n).norm)
      filter_upwards with v
      simp only [Pi.mul_apply, norm_mul, norm_norm]
      calc
      ‖v‖ * ‖fourierPowSMulRight L f v n‖
        ≤ ‖v‖ * ((2 * π * ‖L‖) ^ n * ‖v‖ ^ n * ‖f v‖) := by
          gcongr; apply norm_fourierPowSMulRight_le
      _ = (2 * π * ‖L‖) ^ n * (‖v‖ ^ (n + 1) * ‖f v‖) := by rw [pow_succ]; ring
    have I₃ : Integrable (fun v ↦ fourierPowSMulRight L f v (n + 1)) μ :=
      integrable_fourierPowSMulRight L (hf (n + 1) (ENat.add_one_natCast_le_withTop_of_lt hn)) h'f
    have I₄ : Integrable
        (fun v ↦ fourierSMulRight L (fun v ↦ fourierPowSMulRight L f v n) v) μ := by
      apply (I₂.const_mul ((2 * π * ‖L‖))).mono' (h'f.fourierPowSMulRight L n).fourierSMulRight
      filter_upwards with v
      exact (norm_fourierSMulRight_le _ _ _).trans (le_of_eq (by ring))
    have E : curryLeft
          (fourierIntegral 𝐞 μ L.toLinearMap₁₂ (fun v ↦ fourierPowSMulRight L f v (n + 1)) w) =
        fourierIntegral 𝐞 μ L.toLinearMap₁₂
          (fourierSMulRight L fun v ↦ fourierPowSMulRight L f v n) w := by
      ext w' m
      rw [curryLeft_apply, fourierIntegral_continuousMultilinearMap_apply' I₃,
        fourierIntegral_continuousLinearMap_apply' I₄,
        fourierIntegral_continuousMultilinearMap_apply' (I₄.apply_continuousLinearMap _)]
      congr with v
      simp only [fourierPowSMulRight_apply, mul_comm, pow_succ, neg_mul, Fin.prod_univ_succ,
        Fin.cons_zero, Fin.cons_succ, neg_smul, fourierSMulRight_apply,
        neg_apply, smul_apply, smul_comm (M := ℝ) (N := ℂ) (α := E), smul_smul]
    exact E ▸ hasFDerivAt_fourierIntegral L I₁ I₂ w
  · intro n hn
    apply fourierIntegral_continuous Real.continuous_fourierChar (by apply L.continuous₂)
    exact integrable_fourierPowSMulRight L (hf n hn) h'f

/-- Variant of `hasFTaylorSeriesUpTo_fourierIntegral` in which the smoothness index is restricted
to `ℕ∞` (and so are the inequalities in the assumption `hf`). Avoids normcasting in some
applications. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantdfeeaf9e72c1e3b417201766fa02f3dc65118a3f8ad98972ec5b4dece19674af.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aaf9246a748d42ddbf7989048cd3267580295bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
