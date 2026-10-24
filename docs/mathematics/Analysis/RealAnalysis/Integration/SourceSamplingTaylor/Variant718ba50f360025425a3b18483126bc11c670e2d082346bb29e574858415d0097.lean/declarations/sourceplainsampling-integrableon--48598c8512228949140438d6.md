# sourcePlainSampling_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b913b172-2941-7557-a33f-00a502eb7738",
  "kind": "theorem",
  "lexical_name": "sourcePlainSampling_integrableOn",
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
  "slug": "sourceplainsampling-integrableon--48598c8512228949140438d6",
  "source": {
    "blob": "83e9ebf49515658d66a69eb54de2bfa24c56f0af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48598c8512228949140438d6edfa7454c070e7ed3c7a19ffe7fa78482c254d34",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b913b172-2941-7557-a33f-00a502eb7738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePlainSampling_integrableOn {A : ℝ} (hA : 1 ≤ A) (k : ℝ) :
    IntegrableOn (sourcePlainSamplingTerm A k) (Ioi (0 : ℝ)) := by
  have hs := integrableOn_image_iff_integrableOn_abs_deriv_smul MeasurableSet.univ
    (fun x _ ↦ (Real.hasDerivAt_exp x).hasDerivWithinAt)
    Real.exp_injective.injOn (sourcePlainSamplingTerm A k)
  simp only [image_univ, Real.range_exp,
    abs_of_pos (Real.exp_pos _), smul_eq_mul] at hs
  apply hs.mpr
  rw [integrableOn_univ]
  have he : (fun r : ℝ ↦ Real.exp r * sourcePlainSamplingTerm A k (Real.exp r)) =
      fun r ↦ Real.exp (-Real.log k / 2) *
        (Real.exp (r / 2) * sourceCorrelation explicitSecondDerivative A (Real.log k + r)) := by
    funext r
    dsimp [sourcePlainSamplingTerm]
    rw [Real.log_exp, ← mul_assoc, ← Real.exp_add, ← mul_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [he]
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hc := (CorrelationRegularity.sourceCorrelation_contDiff A hp).continuous
  have hsupp := (CorrelationRegularity.sourceCorrelation_hasCompactSupport A hp).comp_homeomorph
     (Homeomorph.addLeft (Real.log k))
  have hcontinuous : Continuous (fun r : ℝ ↦ Real.exp (r / 2) *
      sourceCorrelation explicitSecondDerivative A (Real.log k + r)) := by fun_prop
  exact (hcontinuous.integrable_of_hasCompactSupport hsupp.mul_left).const_mul _

/-- The actual logarithmic profile is integrable on the full positive axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83e9ebf49515658d66a69eb54de2bfa24c56f0af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
