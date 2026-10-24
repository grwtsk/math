# scaledBump_weak_second_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba9c53aa798dc2020b8b67b9e9dc64007c34d84f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea5b0c61-303b-d55f-736b-61e125879187",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f9f6009-cdcc-33b1-699e-10b688fb98be",
  "kind": "theorem",
  "lexical_name": "scaledBump_weak_second_derivative",
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
  "slug": "scaledbump-weak-second-derivative--77a8e2953035dec8c1fc14ae",
  "source": {
    "blob": "ba9c53aa798dc2020b8b67b9e9dc64007c34d84f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77a8e2953035dec8c1fc14aeee9709a22569c8ef8efec709f4016eef5e8df344",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f9f6009-cdcc-33b1-699e-10b688fb98be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledBump_weak_second_derivative (A : ℝ) (hA : 1 ≤ A) :
    IsWeakSecondDerivative (scaledBump A) (explicitSecondDerivative A) := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hne : A ≠ 0 := ne_of_gt hpos
  have hab : -A ≤ A := by linarith
  refine ⟨(scaledBump_integrable A hpos).locallyIntegrable,
    (explicitSecondDerivative_integrable A).locallyIntegrable, ?_⟩
  intro η hη _
  have hη' : ContDiff ℝ ∞ (deriv η) := (contDiff_infty_iff_deriv.mp hη).2
  have hη'' : ContDiff ℝ ∞ (deriv (deriv η)) := (contDiff_infty_iff_deriv.mp hη').2
  have hgη : Integrable (fun x ↦ explicitSecondDerivative A x * η x) volume := by
    simpa only [explicitSecondDerivative, ← Set.indicator_mul_left] using
      integrable_zeroExtension (fun x ↦ secondInterior A x * η x)
        ((secondInterior_continuous A).mul hη.continuous) (-A) A
  have hfη : Integrable (fun x ↦ scaledBump A x * deriv (deriv η) x) volume := by
    rw [scaledBump_eq_indicator A hpos]
    simpa only [← Set.indicator_mul_left] using
      integrable_zeroExtension (fun x ↦ bumpInterior A x * deriv (deriv η) x)
        ((bumpInterior_continuous A).mul hη''.continuous) (-A) A
  refine ⟨hgη, hfη, ?_⟩
  have ibp₁ := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A)
    (bumpInterior_continuous A).continuousOn hη'.continuous.continuousOn
    (fun x _ ↦ bumpInterior_hasDerivAt A x)
    (fun x _ ↦ ((contDiff_infty_iff_deriv.mp hη').1 x).hasDerivAt)
    ((firstInterior_continuous A).intervalIntegrable (-A) A)
    (hη''.continuous.intervalIntegrable (-A) A)
  have ibp₂ := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A)
    (firstInterior_continuous A).continuousOn hη.continuous.continuousOn
    (fun x _ ↦ firstInterior_hasDerivAt A x)
    (fun x _ ↦ ((contDiff_infty_iff_deriv.mp hη).1 x).hasDerivAt)
    ((secondInterior_continuous A).intervalIntegrable (-A) A)
    (hη'.continuous.intervalIntegrable (-A) A)
  rw [(bumpInterior_endpoints A hne).1, (bumpInterior_endpoints A hne).2] at ibp₁
  rw [(firstInterior_endpoints A hne).1, (firstInterior_endpoints A hne).2] at ibp₂
  simp only [zero_mul, sub_zero, zero_sub] at ibp₁ ibp₂
  rw [scaledBump_eq_indicator A hpos]
  simp_rw [explicitSecondDerivative, ← Set.indicator_mul_left]
  rw [zeroExtension_integral _ (-A) A hab, zeroExtension_integral _ (-A) A hab]
  linarith

/-- The concrete derivative and actual dilation test obey the exact zero-extension field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Realization/Varianta21bf7b3f33df4344d46117861aa875bfd22ed1062c97c703d84a35ad502ecee.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba9c53aa798dc2020b8b67b9e9dc64007c34d84f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
