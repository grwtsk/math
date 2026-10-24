# sourceLogSampling_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6d1ce4f-f172-8e96-388e-21270b4c760d",
  "kind": "theorem",
  "lexical_name": "sourceLogSampling_integrableOn",
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
  "slug": "sourcelogsampling-integrableon--918146680dd0f72abc067ae4",
  "source": {
    "blob": "83e9ebf49515658d66a69eb54de2bfa24c56f0af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:918146680dd0f72abc067ae402b16b6f72454d1c52aee5e7e40b192e412597df",
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

Occurrence: `result:d6d1ce4f-f172-8e96-388e-21270b4c760d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLogSampling_integrableOn {A : ℝ} (hA : 1 ≤ A) (k : ℝ) :
    IntegrableOn (sourceLogSamplingTerm A k) (Ioi (0 : ℝ)) := by
  have hs := integrableOn_image_iff_integrableOn_abs_deriv_smul MeasurableSet.univ
    (fun x _ ↦ (Real.hasDerivAt_exp x).hasDerivWithinAt)
    Real.exp_injective.injOn (sourceLogSamplingTerm A k)
  simp only [image_univ, Real.range_exp,
    abs_of_pos (Real.exp_pos _), smul_eq_mul] at hs
  apply hs.mpr
  rw [integrableOn_univ]
  have he : (fun r : ℝ ↦ Real.exp r * sourceLogSamplingTerm A k (Real.exp r)) =
      fun r ↦ Real.exp (-Real.log k / 2) *
        shiftedMomentIntegrand (sourceCorrelation explicitSecondDerivative A) (Real.log k) r := by
    funext r
    dsimp [sourceLogSamplingTerm, sourcePlainSamplingTerm, shiftedMomentIntegrand]
    rw [Real.log_exp]
    have hexp : Real.exp r * Real.exp (-(Real.log k + r) / 2) =
        Real.exp (-Real.log k / 2) * Real.exp (r / 2) := by
      rw [← Real.exp_add, ← Real.exp_add]
      congr 1
      ring
    calc
      _ = r * (Real.exp r * Real.exp (-(Real.log k + r) / 2)) *
          sourceCorrelation explicitSecondDerivative A (Real.log k + r) := by ring
      _ = _ := by rw [hexp]; ring
  rw [he]
  exact (shiftedMomentIntegrand_integrable (sourceCorrelation_twoMomentProfile A hA)
    (Real.log k)).const_mul _

/-- The entire positive-axis plain integral vanishes by the signed zeroth source moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83e9ebf49515658d66a69eb54de2bfa24c56f0af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
