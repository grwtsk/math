# actualCriticalErrorCovariance_late_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56bf7760-f3de-adde-700c-29080a1ceed5",
  "kind": "theorem",
  "lexical_name": "actualCriticalErrorCovariance_late_lower_bound",
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
  "slug": "actualcriticalerrorcovariance-late-lower-bound--217a7274a7f4dc1678164cfa",
  "source": {
    "blob": "34e87ca6a38ffcfa60cd799403398b541c64b70c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 201,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantbacf8ea47099493d0b45cb09bf53b49d570df13bd721eeee0d0bb77ca8dbb1a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:217a7274a7f4dc1678164cfa55d10ddf5a030d540f39e20fdf7976a6bed84bf3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantbacf8ea47099493d0b45cb09bf53b49d570df13bd721eeee0d0bb77ca8dbb1a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56bf7760-f3de-adde-700c-29080a1ceed5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalErrorCovariance_late_lower_bound {A T eta : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) (hTA : T ≤ 2 * A) (heta : 0 ≤ eta)
    (hG : ∀ t, T ≤ t → |actualCenteredMangoldtLogError t| ≤ eta) :
    -(2 * eta * Real.exp A * (1 / 4 + 5 / A)) ≤
      ∫ t in T..2 * A, actualCriticalErrorDensity A t := by
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  let k : ℝ := eta * (1 / 4 + 5 / A)
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hb : IntervalIntegrable (fun t : ℝ => k * Real.exp (t / 2)) volume T (2 * A) :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc T (2 * A), ‖actualCriticalErrorDensity A t‖ ≤
      k * Real.exp (t / 2) := by
    intro t ht
    have ht0 : 0 ≤ t := by linarith [ht.1]
    unfold actualCriticalErrorDensity
    rw [Real.norm_eq_abs, abs_mul, abs_mul, Real.abs_exp]
    have hh := critical_kernel_abs_le hA ht0 ht.2
    calc
      _ ≤ (eta * Real.exp (t / 2)) * (1 / 4 + 5 / A) :=
        mul_le_mul (mul_le_mul_of_nonneg_right (hG t (le_of_lt ht.1)) (by positivity))
          hh (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le hTA (ae_of_all _ hp) hb
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hn
  have hm := mul_le_mul_of_nonneg_left (exponential_mass hTA) hk
  rw [show 2 * A / 2 = A by ring] at hm
  have : |∫ t in T..2 * A, actualCriticalErrorDensity A t| ≤
      2 * eta * Real.exp A * (1 / 4 + 5 / A) := by
    apply hn.trans
    convert hm using 1 <;> dsimp [k] <;> ring
  exact (neg_le_of_abs_le this)

/-- Genuine unconditional ordinary gamma centering supplies each actual amplitude threshold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantbacf8ea47099493d0b45cb09bf53b49d570df13bd721eeee0d0bb77ca8dbb1a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantbacf8ea47099493d0b45cb09bf53b49d570df13bd721eeee0d0bb77ca8dbb1a5.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e87ca6a38ffcfa60cd799403398b541c64b70c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
