# sourceLogSampling_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6619169-b86c-1519-d173-92d560e313ff",
  "kind": "theorem",
  "lexical_name": "sourceLogSampling_integral_zero",
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
  "slug": "sourcelogsampling-integral-zero--0119b101e9572d6a2b0eea3f",
  "source": {
    "blob": "83e9ebf49515658d66a69eb54de2bfa24c56f0af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 156,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0119b101e9572d6a2b0eea3f5ef356bbdab03e9a47f691157fd0ecba6fde1646",
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

Occurrence: `result:d6619169-b86c-1519-d173-92d560e313ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLogSampling_integral_zero {A : ℝ} (hA : 1 ≤ A) (k : ℝ) :
    (∫ u in Ioi (0 : ℝ), sourceLogSamplingTerm A k u) = 0 := by
  rw [integral_comp_exp_univ]
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
  rw [he, integral_const_mul,
    shiftedMoment_integral_zero (sourceCorrelation_twoMomentProfile A hA), mul_zero]

/-- Actual source remainder after retaining the constant and linear sampling coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant718ba50f360025425a3b18483126bc11c670e2d082346bb29e574858415d0097.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83e9ebf49515658d66a69eb54de2bfa24c56f0af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
