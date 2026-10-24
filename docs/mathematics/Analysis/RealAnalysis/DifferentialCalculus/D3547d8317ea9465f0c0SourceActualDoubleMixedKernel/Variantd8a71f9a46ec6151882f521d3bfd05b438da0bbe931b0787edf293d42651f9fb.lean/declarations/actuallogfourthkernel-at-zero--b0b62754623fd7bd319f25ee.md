# actualLogFourthKernel_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5948461b-3880-bf50-96cf-2712bbb9e588",
  "kind": "theorem",
  "lexical_name": "actualLogFourthKernel_at_zero",
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
  "slug": "actuallogfourthkernel-at-zero--b0b62754623fd7bd319f25ee",
  "source": {
    "blob": "f715a7e4ec1ca75495d43ad56c6746630cc39ab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variantd8a71f9a46ec6151882f521d3bfd05b438da0bbe931b0787edf293d42651f9fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0b62754623fd7bd319f25eeb9552eb7b015bcf6040bf5c15f2388070a1256bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variantd8a71f9a46ec6151882f521d3bfd05b438da0bbe931b0787edf293d42651f9fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5948461b-3880-bf50-96cf-2712bbb9e588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLogFourthKernel_at_zero (A : ℝ) (hA : 1 ≤ A) :
    actualLogFourthKernel A 0 =
      (∫ x : ℝ, (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2) +
      (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) / 2 + 1 / 16 := by
  have hp : 0 < A := by linarith
  have h4 : iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) 0 =
      ∫ x : ℝ, (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2 := by
    rw [actual_correlation_iterated_fourth_eq A hp, actualSecondProfileCorrelation]
    simp only [sub_zero, ← pow_two]
    exact actualSecondProfile_square_integral_eq_actual_energy A hp
  have h2 : iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) 0 =
      -(∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
    simp only [iteratedDeriv_succ, iteratedDeriv_zero]
    rw [sourceCorrelation_second_deriv_eq_integral hp]
    simp only [sub_zero, ← pow_two]
  rw [actualLogFourthKernel, h4, h2, actual_correlation_at_zero A hA]
  ring

/-- This actual kernel has a nonvanishing center; no global pure A^-4 gain follows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variantd8a71f9a46ec6151882f521d3bfd05b438da0bbe931b0787edf293d42651f9fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D3547d8317ea9465f0c0SourceActualDoubleMixedKernel/Variantd8a71f9a46ec6151882f521d3bfd05b438da0bbe931b0787edf293d42651f9fb.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f715a7e4ec1ca75495d43ad56c6746630cc39ab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
