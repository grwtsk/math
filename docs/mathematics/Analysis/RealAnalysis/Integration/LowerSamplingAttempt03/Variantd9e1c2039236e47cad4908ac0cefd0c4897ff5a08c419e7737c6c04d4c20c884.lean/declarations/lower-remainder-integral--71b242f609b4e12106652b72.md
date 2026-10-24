# lower_remainder_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f72683bb-ad3c-65d0-50e8-26d9ca8e7deb",
  "kind": "theorem",
  "lexical_name": "lower_remainder_integral",
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
  "slug": "lower-remainder-integral--71b242f609b4e12106652b72",
  "source": {
    "blob": "773997993b4b519db2f4f7f651d781191db8234a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LowerSamplingAttempt03/Variantd9e1c2039236e47cad4908ac0cefd0c4897ff5a08c419e7737c6c04d4c20c884.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71b242f609b4e12106652b72a2c9f34d0bba72fb3f29396ab42aaa16eff79ff1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LowerSamplingAttempt03/Variantd9e1c2039236e47cad4908ac0cefd0c4897ff5a08c419e7737c6c04d4c20c884.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f72683bb-ad3c-65d0-50e8-26d9ca8e7deb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lower_remainder_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..1, UpperSampling.actualRemainder A u) =
      criticalContinuousMoment A + 2 := by
  have hc := plainProfile_contDiff (by linarith : 0 < A) 1
  have hf := fract_deriv_intervalIntegrable (plainProfile A 1) hc 0 1
  have hw : IntervalIntegrable (coefficientWeight 0) volume (0 : ℝ) 1 := by
    apply (intervalIntegrable_iff_integrableOn_Ioc_of_le (by norm_num)).mpr
    exact (coefficientWeight_integrable 0).mono_set (fun _ hx => hx.1)
  have he : (fun u : ℝ => UpperSampling.actualRemainder A u) =
      fun u => Int.fract u * deriv (plainProfile A 1) u +
        (1/2 : ℝ)*coefficientWeight 0 u := by
    funext u
    rw [UpperSampling.actualRemainder, unit_model_derivative hA]
    simp only [coefficientWeight, pow_zero, mul_one]
    ring
  rw [he, intervalIntegral.integral_add hf (hw.const_mul _),
    intervalIntegral.integral_const_mul,
    ActualSamplingConstant.coefficientWeight_zero_unit_integral]
  have hq := unit_right_sampling_identity (plainProfile A 1) hc 0
  norm_num only [Nat.cast_zero, zero_add] at hq
  rw [unit_profile_at_one hA, lower_profile_integral hA] at hq
  linarith

#print axioms correlation_deriv_zero
#print axioms unit_profile_at_one
#print axioms unit_model_derivative
#print axioms upper_profile_integral
#print axioms lower_profile_integral
#print axioms lower_remainder_integral
end ContinuousResearch.LowerSampling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LowerSamplingAttempt03/Variantd9e1c2039236e47cad4908ac0cefd0c4897ff5a08c419e7737c6c04d4c20c884.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LowerSamplingAttempt03/Variantd9e1c2039236e47cad4908ac0cefd0c4897ff5a08c419e7737c6c04d4c20c884.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `773997993b4b519db2f4f7f651d781191db8234a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
