# actual_normalized_source_weak_second_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e35352ed909741291983e19799c81f2852c4d6f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aeadac2d-74d1-46dc-3f48-d7c91f3cbf0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f91eee94-b605-9f43-ad94-781f3e59147f",
  "kind": "theorem",
  "lexical_name": "actual_normalized_source_weak_second_derivative",
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
  "slug": "actual-normalized-source-weak-second-derivative--8696937d47872aa59d7d4a72",
  "source": {
    "blob": "e35352ed909741291983e19799c81f2852c4d6f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/C8d78a12fdde293cb956ActualSourceWeakSecondDerivative/Variantc8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8696937d47872aa59d7d4a72cd5db581621f0a7f02b5a74ef07e552491edd37f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/C8d78a12fdde293cb956ActualSourceWeakSecondDerivative/Variantc8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f91eee94-b605-9f43-ad94-781f3e59147f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_normalized_source_weak_second_derivative (A : ℝ) (hA : 0 < A) :
    IsWeakSecondDerivative (normalizedTest explicitSecondDerivative A) (actualSecondProfile A) := by
  have hab : -A ≤ A := by linarith
  have hp : Continuous (normalizedInterior A) := by
    unfold normalizedInterior secondInterior bumpInterior
    fun_prop
  have hqi : Integrable (normalizedTest explicitSecondDerivative A) := by
    rw [normalizedTest_eq_indicator A hA]
    exact integrable_zeroExtension _ hp (-A) A
  refine ⟨hqi.locallyIntegrable, (actualSecondProfile_integrable A hA).locallyIntegrable, ?_⟩
  intro eta heta _
  have heta1 : ContDiff ℝ ∞ (deriv eta) := (contDiff_infty_iff_deriv.mp heta).2
  have heta2 : ContDiff ℝ ∞ (deriv (deriv eta)) := (contDiff_infty_iff_deriv.mp heta1).2
  have hwi : Integrable (fun x => actualSecondProfile A x * eta x) := by
    rw [actualSecondProfile_eq_indicator A hA]
    simpa only [← Set.indicator_mul_left] using
      integrable_zeroExtension (fun x => normalizedInteriorSecond A x * eta x)
        ((normalizedInteriorSecond_continuous A).mul heta.continuous) (-A) A
  have hpi : Integrable (fun x => normalizedTest explicitSecondDerivative A x *
      deriv (deriv eta) x) := by
    rw [normalizedTest_eq_indicator A hA]
    simpa only [← Set.indicator_mul_left] using
      integrable_zeroExtension (fun x => normalizedInterior A x * deriv (deriv eta) x)
        (hp.mul heta2.continuous) (-A) A
  refine ⟨hwi, hpi, ?_⟩
  have ibp1 := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A) hp.continuousOn heta1.continuous.continuousOn
    (fun x _ => normalizedInterior_hasDerivAt A x)
    (fun x _ => ((contDiff_infty_iff_deriv.mp heta1).1 x).hasDerivAt)
    ((normalizedInteriorDerivative_continuous A).intervalIntegrable (-A) A)
    (heta2.continuous.intervalIntegrable (-A) A)
  have ibp2 := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A)
    (normalizedInteriorDerivative_continuous A).continuousOn heta.continuous.continuousOn
    (fun x _ => normalizedInteriorDerivative_hasDerivAt_second A x)
    (fun x _ => ((contDiff_infty_iff_deriv.mp heta).1 x).hasDerivAt)
    ((normalizedInteriorSecond_continuous A).intervalIntegrable (-A) A)
    (heta1.continuous.intervalIntegrable (-A) A)
  have hleft := normalizedInterior_frontier A hA (-A) (by
    rw [frontier_Icc hab]
    simp)
  have hright := normalizedInterior_frontier A hA A (by
    rw [frontier_Icc hab]
    simp)
  rw [hleft.1, hright.1] at ibp1
  rw [hleft.2, hright.2] at ibp2
  simp only [zero_mul, sub_zero, zero_sub] at ibp1 ibp2
  rw [actualSecondProfile_eq_indicator A hA, normalizedTest_eq_indicator A hA]
  simp_rw [← Set.indicator_mul_left]
  rw [zeroExtension_integral _ (-A) A hab, zeroExtension_integral _ (-A) A hab]
  linarith

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/C8d78a12fdde293cb956ActualSourceWeakSecondDerivative/Variantc8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/C8d78a12fdde293cb956ActualSourceWeakSecondDerivative/Variantc8d78a12fdde293cb9563baeafc014ba481882863f75a44d0bbd8f35c8fc616b.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e35352ed909741291983e19799c81f2852c4d6f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
