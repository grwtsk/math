# unit_interval_sample_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bd43aef-2dad-ed49-fe19-2d913fb38105",
  "kind": "theorem",
  "lexical_name": "unit_interval_sample_error",
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
  "slug": "unit-interval-sample-error--bf5c9de367d83fdef8edae69",
  "source": {
    "blob": "c85094a7d7d1ca252f45bbfbbf19a816c763b229",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 24,
    "path": "GRWTSK/Analysis/Integration/FiniteUnitSumVariation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf5c9de367d83fdef8edae69b274683cce6e5beb205b609fae7be10899c65c0d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiniteUnitSumVariation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bd43aef-2dad-ed49-fe19-2d913fb38105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_interval_sample_error {f : ℝ → ℝ} (regular : ContDiff ℝ 1 f) (a : ℝ) :
    |f a - ∫ x in a..a + 1, f x| ≤ ∫ x in a..a + 1, |deriv f x| := by
  have derivativeContinuous := regular.continuous_deriv_one.abs
  have pointwise : ∀ x ∈ Icc a (a + 1), |f a - f x| ≤
      ∫ y in a..a + 1, |deriv f y| := by
    intro x retained
    have displacement := _root_.norm_sub_le_integral_of_norm_deriv_le_of_le
      retained.1 regular.continuous.continuousOn
      (regular.differentiable one_ne_zero).differentiableOn
      (Eventually.of_forall (fun _ _ ↦ by simp only [Real.norm_eq_abs, le_refl]))
      (derivativeContinuous.intervalIntegrable a x)
    have enlarged := intervalIntegral.integral_mono_interval (μ := volume)
      le_rfl retained.1 retained.2
      (Eventually.of_forall (fun y ↦ abs_nonneg (deriv f y)))
      (derivativeContinuous.intervalIntegrable a (a + 1))
    have small : |f a - f x| ≤ ∫ y in a..x, |deriv f y| := by
      simpa only [Real.norm_eq_abs, abs_sub_comm] using displacement
    exact small.trans enlarged
  have representation : f a - (∫ x in a..a + 1, f x) =
      ∫ x in a..a + 1, f a - f x := by
    rw [intervalIntegral.integral_sub intervalIntegrable_const
      (regular.continuous.intervalIntegrable a (a + 1)), intervalIntegral.integral_const]
    simp
  calc
    |f a - (∫ x in a..a + 1, f x)| = |∫ x in a..a + 1, f a - f x| := by
      rw [representation]
    _ ≤ ∫ x in a..a + 1, |f a - f x| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ _ in a..a + 1, (∫ y in a..a + 1, |deriv f y|) :=
      intervalIntegral.integral_mono_on (by linarith)
        ((continuous_const.sub regular.continuous).abs.intervalIntegrable a (a + 1))
        intervalIntegrable_const pointwise
    _ = ∫ y in a..a + 1, |deriv f y| := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/FiniteUnitSumVariation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/FiniteUnitSumVariation.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c85094a7d7d1ca252f45bbfbbf19a816c763b229` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
